{*{tr}This is{/tr} TikiWiki 1.9.7 -Sirius- &#169; 2002&#8211;2006 {tr}by the{/tr} <a href="http://tikiwiki.org" 
title="tikiwiki.org">{tr}Tiki community{/tr}</a>
{if $prefs.feature_calendar eq 'y' and $tiki_p_view_calendar eq 'y'}
  <a href="tiki-calendar.php">{$smarty.now|tiki_short_datetime}</a>
{else}
  {$smarty.now|tiki_short_datetime}
{/if}
{if $tiki_p_admin eq 'y' and $prefs.feature_debug_console eq 'y'}
  &#160;//&#160;<a href="javascript:toggle('debugconsole');">{tr}debug{/tr}</a>
{/if}
{if $prefs.feature_phplayers eq 'y' and $prefs.feature_siteidentity eq 'y' and $prefs.feature_sitemenu eq 'y'}
{phplayers id=42 type=horiz}
{/if}*}
