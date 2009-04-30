
<script>
{literal}
if(screen.width<1024){
document.write("<table width=780 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
else{
document.write("<table width=1004 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
{/literal}
</script>


    <tr>
        <td>


<script>
{literal}
if(screen.width<1024){
document.write("<img src=styles/cappf/logo_800.jpg>");
}
else{
document.write("<img src=styles/cappf/logo_1024.jpg>");
}
{/literal}
</script>


</td>
    </tr>
</table>




<script>
{literal}
if(screen.width<1024){
document.write("<table width=780 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
else{
document.write("<table width=1004 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
{/literal}
</script>


    <tr>
        <td>

	    <div align='right' style='float: right; margin-top: -2px;'>
	        <a href="tiki-index.php?page=Sobre%20o%20site" alt="Sobre o Site" class="linkmenu">Sobre o Site</a> | <a href="tiki-index.php?page=Ajuda" alt="Ajuda" class="linkmenu">Ajuda</a> | {if $user}<a href='tiki-logout.php' class='linkmenu'>Sair de {$user}</a>{else}<a href="tiki-login_scr.php" alt="Login" class="linkmenu">Entrar</a>{/if}&nbsp;&nbsp;
		{if $user}<br /><span class='linkmenu' style='color: #9e0000'>Olá <b>{$u_info.prefs.realName}</b>, bem-vind@ ao site do CAPPF!</span>&nbsp;&nbsp;{/if}
	    </div>

{phplayers id=44 type=horiz}

<br />

	</td>
    </tr>
</table>
