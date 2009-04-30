<?php

function wikiplugin_calendario_help() {
	return "~np~{CALENDARIO(nome=>asd)} *dd\\mm *00h00 *evento tal *em tal lugar {CALENDARIO}~/np~";
}

function wikiplugin_calendario($data, $params) {

    global $smarty;

    $smarty->assign('calendario', $params['nome']);

    $quando = array();
    $hora = array();
    $evento = array();
    $onde = array();
    $mes = array();
    $mes_escrito = array();

    //    preg_match_all("|^\s*\*\s*(.+?)\n\s*\*\s*(.+?)\n\n|s", $data, $m);
    preg_match_all("|\s*\*\s*(.+?)\s*\n\s*\*\s*(.+?)\n\s*\*\s*(.+?)\n\s*\*\s*(.+?)\n|s", $data, $m);

    for ($i = 0; $i < sizeof($m[0]); $i++) {
      $quando[] = $m[1][$i];
      $hora[] = $m[2][$i];
      $evento[] = $m[3][$i];
      $onde[] = $m[4][$i];

      $strmes = strstr($m[1][$i], '/');
      $mes[] = $strmes;

      switch ($strmes) {
        case '/01':
          $mes_escrito[] = 'JANEIRO';
          break;
        case '/02':
          $mes_escrito[] = 'FEVEREIRO';
          break;
        case '/03':
          $mes_escrito[] = 'MARÇO';
          break;
        case '/o4':
          $mes_escrito[] = 'ABRIL';
          break;
        case '/05':
          $mes_escrito[] = 'MAIO';
          break;
        case '/06':
          $mes_escrito[] = 'JUNHO';
          break;
        case '/07':
          $mes_escrito[] = 'JULHO';
          break;
        case '/08':
          $mes_escrito[] = 'AGOSTO';
          break;
        case '/09':
          $mes_escrito[] = 'SETEMBRO';
          break;
        case '/10':
          $mes_escrito[] = 'OUTUBRO';
          break;
        case '/11':
          $mes_escrito[] = 'NOVEMBRO';
          break;
        case '/12':
          $mes_escrito[] = 'DEZEMBRO';
          break;
      }
    }

    $smarty->assign('quando', $quando);
    $smarty->assign('hora', $hora);
    $smarty->assign('evento', $evento);
    $smarty->assign('onde', $onde);
    $smarty->assign('mes', $mes);
    $smarty->assign('mes_escrito', $mes_escrito);

    return $smarty->fetch('wiki-plugins/wikiplugin_calendario.tpl');    
}

?>
