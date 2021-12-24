<?php
class Pages_Home extends CI_Controller
{
	public function aeenshop()
	{
		if ($this->input->post('product_sku') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Product SKU.";
			goto END;
		}
		if ($this->input->post('product_name') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Product Name.";
			goto END;
		}
		if ($this->input->post('product_price') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Product Price.";
			goto END;
		}
		if ($this->input->post('product_weight') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Product Weight.";
			goto END;
		}
		if ($this->input->post('product_quantity') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Product Quantity.";
			goto END;
		}
		if ($this->input->post('name') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Name.";
			goto END;
		}
		if ($this->input->post('phone') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Phone.";
			goto END;
		}
		if (!preg_match("/^((?:[+?0?0?966]+)?(?:\s?\d{2})(?:\s?\d{7}))$/", $this->input->post('phone'))) {
			$R['ERR'] = true;
			$R['MSG'] = "أضف رقم التواصل.";
			goto END;
		}
		if ($this->input->post('email') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Email.";
			goto END;
		}
		if ($this->input->post('city') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect City.";
			goto END;
		}
		if ($this->input->post('province') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Province.";
			goto END;
		}
		if ($this->input->post('country') == "") {
			$R['ERR'] = true;
			$R['MSG'] = "Incorrect Country.";
			goto END;
		}

		/**
		 * Save Data
		 * Create File: *orders.csv
		 **/
		$fp = fopen("orders.csv", "a");
		$line = $this->input->post('name') . "," . $this->input->post('phone') . "," . $this->input->post('email') . "," . $this->input->post('city') . "," . $this->input->post('province') . "," . $this->input->post('country') . "\n";
		fwrite($fp, $line);
		fclose($fp);

		$name = explode(' ', $this->input->post('name'));
		$first_name = $last_name = "";
		if (sizeof($name) > 1) {
			$first_name = $name[0];
			$last_name = $name[1];
		}


		$country_code = "";
		switch ($this->input->post('country')) {
			case 'Saudi Arabia':
				$country_code = "SA";
				break;
			case 'Qatar':
				$country_code = "QA";
				break;
			case 'Oman':
				$country_code = "OM";
				break;
			case 'Kuwait':
				$country_code = "KW";
				break;
			case 'Bahrain':
				$country_code = 'BH';
				break;
			case 'AE':
				$country_code = 'AE';
				break;
		}

		$coupon_code = "-";
		$coupon_amount = 0;
		switch ($this->input->post('coupon_code')) {
			case 'N5':
			case 'A8':
			case 'ATO':
			case 'ABS':
			case 'N11':
			case 'HAG':
			case 'HFZ':
			case 'ABF':
			case 'AMT':
			case 'SHG':
			case 'MAZ':
			case 'BBH':
			case 'SHH':
			case 'KHW':
				$coupon_code = $this->input->post('coupon_code');
				$coupon_amount = (((float)$this->input->post('product_price') / 100) * 15);
				break;

			case 'A10':
				$coupon_code = $this->input->post('coupon_code');
				$coupon_amount = (((float)$this->input->post('product_price') / 100) * 10);
				break;

			default:
				$coupon_code = "-";
				$coupon_amount = (((float)$this->input->post('product_price') / 100) * 10);
				break;
		}

		$key = "cc281a396110aefd16d35d5a673642f8";
		$pass = "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";
		$store = "aeen-shop.myshopify.com";
		$ch = curl_init("https://" . $key . ":" . $pass . "@" . $store . "/admin/orders.json");
		$order_object = array('order' => array(
			'email' => $this->input->post('email'),
			'phone' => $this->input->post('phone'),
			'financial_status' => 'pending',
			'line_items' => array(
				array(
					'sku' => $this->input->post('product_sku'),
					'name' => $this->input->post('product_name'),
					'title' => $this->input->post('product_name'),
					'price' => $this->input->post('product_price'),
					'grams' => $this->input->post('product_weight'),
					'quantity' => $this->input->post('product_quantity')
				)
			),
			'shipping_address' => array(
				'zip' => '',
				'city' => $this->input->post('city'),
				'name' => $this->input->post('name'),
				'phone' => $this->input->post('phone'),
				'company' => '',
				'country' => $this->input->post('country'),
				'address1' => $this->input->post('province'),
				'address2' => '',
				'latitude' => '',
				'longitude' => '',
				'first_name' => $first_name,
				'last_name' => $last_name,
				'province' => $this->input->post('province'),
				'country_code' => $country_code,
				'province_code' => 'RL'
			),
			'discount_codes' => [
				array(
					'code' => $coupon_code,
					'type' => 'fixed_amount',
					'amount' => $coupon_amount
				)
			],
			'total_tax' => (((float)$this->input->post('product_price') / 100) * 15),
			'tax_lines' => [
				array(
					'rate' => 0.15,
					'price' => (((float)$this->input->post('product_price') / 100) * 15),
					'title' => 'Tax',
					'channel_liable' => true
				)
			],
			'current_subtotal_price_set' => array(
				'current_subtotal_price_set' => array(
					'shop_money' => array(
						'amount' => $this->input->post('product_price'),
						'currency_code' => 'SAR'
					),
					'presentment_money' => array(
						'amount' => $this->input->post('product_price'),
						'currency_code' => 'SAR'
					)
				)
			),
			'note' => 'Name: ' . htmlspecialchars($this->input->post('name')) . ' | Phone: ' . htmlspecialchars($this->input->post('phone')) . ' | City: ' . htmlspecialchars($this->input->post('city')) . ' | Province: ' . htmlspecialchars($this->input->post('province')) . ' | Country: ' . htmlspecialchars($this->input->post('country'))
		));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($order_object));
		curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: application/json"));
		curl_exec($ch);
		curl_close($ch);

		$R['MSG'] = "!" . $this->input->post('product_name') . " شكرا لك على الطلب";
		$R['ERR'] = false;


		END:
		header('Content-Type: application/json');
		echo json_encode($R);
		return;
	}
}
