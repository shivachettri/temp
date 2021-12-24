<?php
function meta_array($page){
	$meta_data = array();
	switch($page){	
		default:
			$meta_data['title'] = "Financial Management";
			$meta_data['description'] = "Financial Management";
			$meta_data['keywords'] = "Financial Management";
			break;
	}

return $meta_data;
}