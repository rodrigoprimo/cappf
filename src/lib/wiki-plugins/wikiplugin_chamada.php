<?php

function wikiplugin_chamada_help() {
	return "~np~{CHAMADA(titulo=>titulo da chamada,link=>caminho do link,tipo=>texto|blablabla|foto)} texto da chamada {CHAMADA}~/np~";
}

function wikiplugin_chamada($data, $params) {

	extract ($params, EXTR_SKIP);

	if(!isset($tipo)) { $tipo = "padrao"; }

	$begin = "<a href=\"tiki-index.php?page=" . $link . "\" id=\"chamada\" class=\"" . $tipo . "\"><div id=\"chamada\">";
	
	if($titulo) { $begin .= "<span class=\"chamada_titulo\">" . $titulo . "</span><br />"; }

	$end = "</div></a>";

	return $begin . $data . $end;
}

?>
