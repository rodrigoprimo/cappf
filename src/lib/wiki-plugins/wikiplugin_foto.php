<?php

function wikiplugin_foto_help() {
	return tra("Insere uma borda na imagem se referindo a uma foto").":<br />~np~{FOTO()} {img src= width= height= align= desc= link= } {FOTO}~/np~";
}

function wikiplugin_foto($data, $params) {

        
	$begin  = "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr valign=\"bottom\"><td align=\"right\"><img src=\"styles/cappf/tl_foto.png\"></td><td style=\"background-image: url('styles/cappf/t_foto.png'); background-repeat: repeat-x;\" height=\"12\"></td><td align=\"left\"><img src=\"styles/cappf/tr_foto.png\"></td></tr><tr><td style=\"background-image: url('styles/cappf/l_foto.png'); background-repeat: repeat-y\" width=\"4\"></td>
		<td align=\"center\">";
	$end = "</td>
		<td style=\"background-image: url('styles/cappf/r_foto.png'); background-repeat: repeat-y;\" width=\"14\"></td></tr>
	<tr>
		<td align=\"right\"><img src=\"styles/cappf/bl_foto.png\"></td>
		<td style=\"background-image: url('styles/cappf/b_foto.png'); background-repeat: repeat-x;\" height=\"10\"></td>
		<td align=\"left\"><img src=\"styles/cappf/br_foto.png\"></td></tr>
</tbody></table>";

	return $begin . $data . $end;
}

?>
