<?php

function wikiplugin_bemvindo_help() {
	return "~np~{BEMVINDO(titulo=>titulo de boas vindas, botao=>texto do botao)} texto de boas vindas {BEMVINDO}~/np~";
}

function wikiplugin_bemvindo($data, $params) {

	extract ($params, EXTR_SKIP);

	if(!isset($titulo)) { $titulo = "Bem-vindo!"; }
	if(!isset($botao)) { $botao = "Cadastre-se aqui"; }

	$begin = "
		<div id=\"bemvindo_msg\"><div class=\"interno\"><table><tr><th colspan=2>" . $titulo . "</th></tr><tr><td>";

	$end = "</td><td><a href=\" \" class=\"cadastro\" >". $botao . "</a></td></tr></table></div></div>";

	return $begin . $data . $end;
}

?>
