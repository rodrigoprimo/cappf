{* $Header: /cvsroot/tikiwiki/tiki/templates/tiki.tpl,v 1.12.4.7 2006/08/04 22:11:16 luciash Exp $ *}
{include file="header.tpl"}
{* Index we display a wiki page here *}
{if $prefs.feature_bidi eq 'y'}
<div dir="rtl">
{/if}
 

    {include file="barra.tpl"}

<script language="JavaScript">
{literal}
if(screen.width<1024){
document.write("<table width=780 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
else{
document.write("<table width=1004 align=center bgcolor=white border=0 cellpadding=0 cellspacing=0>");
}
{/literal}
</script>


<tr><td>

<div id="tiki-main">

  {if $prefs.feature_top_bar eq 'y'}

	<div id="tiki-top">
    {include file="tiki-top_bar.tpl"}
	</div>
  {/if}
  

<div id="tiki-mid">
  <table id="tiki-midtbl" border="0" cellpadding="0" cellspacing="0">
 {if $prefs.feature_left_column eq 'user' or $prefs.feature_right_column eq 'user'}
    <tr><td id="tiki-columns" colspan="0" width="100%">
      {if $prefs.feature_left_column eq 'user'}
        <span style="float: left"><a class="flip" href="javascript:icntoggle('leftcolumn');">
        <img name="leftcolumnicn" class="colflip" src="img/icons/ofo.gif" border="0" alt="+/-" />&nbsp;{tr}Show/Hide Left Menus{/tr}&nbsp;</a>
        </span>
      {/if}
      {if $prefs.feature_right_column eq 'user'}
        <span style="float: right"><a class="flip" href="javascript:icntoggle('rightcolumn');">
        <img name="rightcolumnicn" class="colflip" src="img/icons/ofo.gif" border="0" alt="+/-" />&nbsp;{tr}Show/Hide Right Menus{/tr}&nbsp;</a>
        </span>
      {/if}
      <br />
    </td></tr>
  {/if}
    <tr>
      {if $prefs.feature_left_column ne 'n'}
      <td id="leftcolumn" valign="top">
      {section name=homeix loop=$left_modules}
      {$left_modules[homeix].data}
      {/section}
          {if $prefs.feature_left_column eq 'user'}
            <img src="images/none.gif" width="100%" height="0" />
            {literal}
              <script type="text/javascript">
                setfolderstate("leftcolumn");
              </script>
            {/literal}
          {/if}
      </td>
      {/if}
      <td id="centercolumn" valign="top"><div id="tiki-center">

{if $prefs.feature_search eq 'y'}

<script language="JavaScript">
{literal}
if(screen.width<1024){
document.write("<table width=560>");
}
else{
document.write("<table width=784");
}
{/literal}
</script>

   <tr>
      <td align="right">
	<form class="forms" method="get" action="tiki-searchindex.php">
	    Buscar: <input id="fuser" name="highlight" size="14" type="text" accesskey="s" /> {tr}in:{/tr} 
	    <select name="where">
	        <option value="pages">{tr}Entire Site{/tr}</option>
		{if $prefs.feature_wiki eq 'y'}
		<option value="wikis">{tr}Wiki Pages{/tr}</option>
		{/if}
		{if $prefs.feature_directory eq 'y'}
		<option value="directory">{tr}Directory{/tr}</option>
		{/if}
		{if $prefs.feature_galleries eq 'y'}
		<option value="galleries">{tr}Image Gals{/tr}</option>
		<option value="images">{tr}Images{/tr}</option>
		{/if}
		{if $prefs.feature_file_galleries eq 'y'}
		<option value="files">{tr}Files{/tr}</option>
		{/if}
		{if $prefs.feature_articles eq 'y'}
		<option value="articles">{tr}Articles{/tr}</option>
		{/if}
		{if $prefs.feature_forums eq 'y'}
		<option value="forums">{tr}Forums{/tr}</option>
		{/if}
		{if $prefs.feature_blogs eq 'y'}
		<option value="blogs">{tr}Blogs{/tr}</option>
		<option value="posts">{tr}Blog Posts{/tr}</option>
		{/if}
		{if $prefs.feature_faqs eq 'y'}
		<option value="faqs">{tr}FAQs{/tr}</option>
		{/if}
		{if $prefs.feature_trackers eq 'y'}
		<option value="trackers">{tr}Tracker{/tr}</option>
		{/if}
	    </select>
	    <input type="submit" class="wikiaction" name="search" value="{tr}go{/tr}"/> 
	    </form>
	 </td>
   </tr>
</table>
	{/if}

{include file=$mid}
      {if $show_page_bar eq 'y'}
      {include file="tiki-page_bar.tpl"}
      {/if}
      </div>
      </td>
      {if $prefs.feature_right_column ne 'n'}
      <td id="rightcolumn" valign="top">
      {section name=homeix loop=$right_modules}
      {$right_modules[homeix].data}
      {/section}
          {if $prefs.feature_right_column eq 'user'}
            <img src="images/none.gif" width="100%" height="0" />
            {literal}
              <script type="text/javascript">
                setfolderstate("rightcolumn");
              </script>
            {/literal}
          {/if}
      </td>
      {/if}
    </tr>
    </table>
  </div>

</td></tr></table>


  {if $prefs.feature_bot_bar eq 'y'}

<script>
{literal}
if(screen.width<1024){
document.write("<table width=780 align=center border=0 cellpadding=0 cellspacing=0>");
}
else{
document.write("<table width=1004 align=center border=0 cellpadding=0 cellspacing=0>");
}
{/literal}
</script>

<tr><td>

  <div id="tiki-bot">
    {include file="tiki-bot_bar.tpl"}
  </div>

</td></tr>
</table>

  {/if}
</div>
{if $prefs.feature_bidi eq 'y'}
</div>
{/if}
{include file="footer.tpl"}
