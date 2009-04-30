<?php
// $Header: /cvsroot/tikiwiki/tiki/lib/wiki-plugins/wikiplugin_tag.php,v 1.1.2.1 2005/12/05 14:34:34 sylvieg Exp $

// Wiki plugin to output something like <a_tag style=a_style>...</a_tag>
//ex: {TAG(tag=STRIKE, style=color:#FF0000)}toto{TAG}
//	would produce <STRIKE style="color:#FF0000">toto</STRIKE>

function wikiplugin_recado_help() {
        return tra("Recado").":<br />~np~{RECADO(titulo='escreve_aqui',id='nome_de_identificacao')}texto{RECADO}~/np~";
}

function wikiplugin_recado($data, $params) {
	extract ($params,EXTR_SKIP);
	if (!isset($titulo))
		$titulo = 'Recado:';

	if (!isset($id))
		$id = 'recado_sem_id';

	return "<div id=$id class='recadobox'><div class='recadotit'>$titulo</div>$data</div>";
}

?>
