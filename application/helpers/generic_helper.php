<?php

/**
 * No. of Days between 2 Dates
 */
function no_of_days_between_date($from_date, $to_date)
{
    $earlier = new DateTime($from_date);
    $later = new DateTime($to_date);

    return $later->diff($earlier)->format("%a");
}


/**
 * If Today Date is between 2 Dates.
 */
function is_now_between_dates($start_date, $end_date)
{
    $now = new DateTime();
    $startdate = new DateTime($start_date);
    $enddate = new DateTime($end_date);

    if ($startdate <= $now && $now <= $enddate)
        return true;
    return false;
}


/**
 * Calculate Price of Discount
 */
function get_price($price, $discount)
{
    if ($discount <= 0)
        return $price;
    return $price - (($price / 100) * $discount);
}


/**
 * Fix HTML Tags
 */
function fix_html($HTML)
{
    // Detect the string encoding
    $encoding = mb_detect_encoding($HTML);

    // pass it to the DOMDocument constructor
    $doc = new DOMDocument('', $encoding);

    // Must include the content-type/charset meta tag with $encoding
    // Bad HTML will trigger warnings, suppress those
    @$doc->loadHTML('<html><head>'
        . '<meta http-equiv="content-type" content="text/html; charset='
        . $encoding . '"></head><body>' . trim($HTML) . '</body></html>');

    // Extract the required Components
    $nodes = $doc->getElementsByTagName('body')->item(0)->childNodes;
    $html = '';
    $len = $nodes->length;
    for ($i = 0; $i < $len; $i++) {
        $html .= $doc->saveHTML($nodes->item($i));
    }
    return $html;
}

/**
 * Check if Date I is greater then Date 2
 */
function is_date_greater($date_1, $date_2)
{
    $date_1 = new DateTime($date_1);
    $date_2    = new DateTime($date_2);
    if ($date_1 > $date_2)
        return true;
    return false;
}

/**
 * Compress Image
 */
function compress_image($source, $destination, $quality)
{
    $info = getimagesize($source);
    if ($info['mime'] == 'image/jpeg')
        $image = imagecreatefromjpeg($source);
    elseif ($info['mime'] == 'image/gif')
        $image = imagecreatefromgif($source);
    elseif ($info['mime'] == 'image/png')
        $image = imagecreatefrompng($source);
    imagejpeg($image, $destination, $quality);
}


/**
 * Resize Image
 */
function resize_image($source, $destination, $width)
{
    list($width_orig, $height_orig) = getimagesize($source);
    $height = ($width / $width_orig) * $height_orig;
    $temp = imagecreatetruecolor($width, $height);
    $info = getimagesize($source);
    if ($info['mime'] == 'image/jpeg')
        $image = imagecreatefromjpeg($source);
    elseif ($info['mime'] == 'image/gif')
        $image = imagecreatefromgif($source);
    elseif ($info['mime'] == 'image/png')
        $image = imagecreatefrompng($source);
    imagecopyresampled($temp, $image, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);
    imagejpeg($temp, $destination);
    imagedestroy($temp);
}

/**
 * Get IP Address
 */
function get_ipaddress()
{
    $ip = "";
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

/**
 * Generate OTP
 */
function generate_otp($length = 5)
{
    $characters = '0123456789';
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $randomString;
}

/**
 * Generate String
 */
function generate_string($length = 5)
{
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $randomString;
}

/**
 * Generate Number
 */
function generate_number($length = 5)
{
    $characters = '0123456789';
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $randomString;
}


/**
 * Generate File Name
 */
function generate_filename($_fileName)
{
    return md5(generate_string(5) . time()) . "." . pathinfo($_fileName, PATHINFO_EXTENSION);
}

/**
 * Get File Extension
 */
function get_file_extension($filename)
{
    return pathinfo($filename, PATHINFO_EXTENSION);
}

/**
 * Convert Standard Class to Array
 */
function stdClassToArray($data)
{
    if (is_object($data)) {
        $data = get_object_vars($data);
    }
    if (is_array($data)) {
        return array_map(__FUNCTION__, $data);
    } else {
        return $data;
    }
}

/**
 * Format Time
 */
function format_time($time)
{
    $am_pm = date('A', strtotime($time));
    $time = explode(':', $time);
    return $time[0] . ":" . $time[1] . " " . $am_pm;
}
function format_date_csv($date)
{
    return date_format(date_create($date), "D - d M Y");
}

/**
 * Format Date
 */
function format_date($date)
{
    return date_format(date_create($date), "d M, Y"); //D - d M, Y
}
function format_date2($date)
{
    return date_format(date_create($date), "d M, Y");
}

/**
 * Format Date Time
 */
function format_datetime($datetime)
{
    return date_format(date_create($datetime), 'D - d M, Y  H:i');
}
