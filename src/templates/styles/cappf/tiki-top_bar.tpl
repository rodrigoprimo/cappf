{* $Id: tiki-top_bar.tpl 13464 2008-07-08 17:08:26Z ricks99 $ *}
{*
{if $prefs.feature_siteidentity eq 'y' && $prefs.feature_top_bar eq 'y'}
{if $prefs.feature_topbar_version eq 'y'}
{tr}This is{/tr} Tikiwiki v{$tiki_version} {if $tiki_uses_cvs eq 'y'} (CVS){/if} -{$tiki_star}- &#169; 2002&#8211;2008 {tr}by the{/tr} <a href="http://tikiwiki.org" 
title="tikiwiki.org">{tr}Tiki community{/tr}</a>
{/if}
{if $prefs.feature_topbar_date eq 'y'}
{if $prefs.feature_calendar eq 'y' and $tiki_p_view_calendar eq 'y'}
  <a href="tiki-calendar.php">{$smarty.now|tiki_short_datetime}</a>
{else}
  {$smarty.now|tiki_short_datetime}
{/if}
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_topbar_debug eq 'y' and $tiki_p_admin eq 'y' and $prefs.feature_debug_console eq 'y'}
  &#160;//&#160;<a href="javascript:toggle('debugconsole');">{tr}debug{/tr}</a>
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_sitemenu eq 'y'}
	{if $prefs.feature_phplayers eq 'y'}
		{phplayers id=$prefs.feature_topbar_id_menu type=horiz}
	{else}
		{menu id=$prefs.feature_topbar_id_menu type=horiz css=y}
	{/if}
{else]
	{phplayers id=44 type=horiz}
{/if}

{/if}

{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_tell_a_friend eq 'y' && $tiki_p_tell_a_friend eq 'y' and (!isset($edit_page) or $edit_page ne 'y')}
<div class="tellafriend"><a href="tiki-tell_a_friend.php?url={$smarty.server.REQUEST_URI|escape:'url'}">{icon _id=email_link alt="{tr}Email this page{/tr}"}</a></div>
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_topbar_custom_code}{eval var=$prefs.feature_topbar_custom_code}{/if}
*}
<div style="width: 1004px; margin: auto; position: relative">
<div id="menu_login">
<table>
	<tr>
		<td><a href="tiki-index.php?page=Sobre%20o%20site" alt="Sobre o Site">Sobre o Site</a></td>
		<td><a href="tiki-index.php?page=Ajuda" alt="Ajuda">Ajuda</a></td>
		<td>{if $user}<a href='tiki-logout.php'>Sair de {$user}</a>{else}<a href="tiki-login_scr.php" alt="Login">Entrar</a>{/if}</td>
	</tr>
</table>
</div>
{if $user}
<div id="usuario">
	<span>Olá <b>{$u_info.prefs.realName}</b>, bem-vind@ ao site do CAPPF!</span>
</div>
{/if}


<div id="menusup" >{phplayers id=44 type=horiz}</div>
</div>
