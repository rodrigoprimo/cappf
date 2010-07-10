<?php

function wikiplugin_highlights_help() {
	return "~np~{HIGHLIGHTS(bt_color=>rrggbb,delay=> botao=>texto do botao)} texto de boas vindas {HIGHLIGHTS}~/np~";
}

function wikiplugin_highlights($data, $params) {

	extract ($params, EXTR_SKIP);

	if(!isset($bt_color)) { $bt_color = "AA9999"; }
	if(!isset($delay)) { $delay = 5; }
	if(!isset($width)) { $width = 400; }
	if(!isset($height)) { $height = 200; }

	$java = "<script type=\"text/javascript\" src=\"templates/wiki-plugins/highlights/swfobject.js\"></script>" ;
	$swf = "<script type=\"text/javascript\"> var flashvars = { buttonColor: \"0x".$bt_color."\", tempo: \"".$delay."000\", path: \"templates/wiki-plugins/highlights/\"}; var params = { menu: \"false\" }; swfobject.embedSWF(\"templates/wiki-plugins/highlights/highlights".$width."x".$height.".swf\", \"HighlightsContent\", ".$width.", ".$height.", \"9.0.0\", \"expressInstall.swf\", flashvars, params); </script>";
	$div = "<div id=\"HighlightsContent\"><br/><br/><h3>Este navegador n&atilde;o tem o plug-in do Flash Player instalado.<br/><br/>Clique no bot&atilde;o abaixo para fazer o download.</h3><br/><br/><p><a href=\"http://www.adobe.com/go/getflashplayer\" target=\"_blank\"><img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Get Adobe Flash player\" /></a></p></div>";

	$data = preg_replace('/\{img /','<post ',$data);
	$data = preg_replace('/\}/','/>',$data);
	$data = preg_replace('/src=/','picture=',$data);
	$data = preg_replace('/&quot;/','"',$data);
	if ($tikidomain) { $data = preg_replace('/img\/wiki_up\//',"img/wiki_up/$tikidomain/",$data); }

	$xml_data = "<posts>";
	$xml_data .= $data;
	$xml_data .= "</posts>";

	$xml_file = file_get_contents('templates/wiki-plugins/highlights/ph_loadXML.php');

	if ($xml_file == $xml_data) {
		return $java . $swf . $div ;
	} else {
		return "<!-- " . file_put_contents('templates/wiki-plugins/highlights/ph_loadXML.php', $xml_data) . " -->" . $java . $swf . $div ;
	}
}

?>
