{* $Header: /cvsroot/tikiwiki/tiki/templates/tiki-site_header.tpl,v 1.1.2.14 2007/03/02 13:57:36 luciash Exp $ *}
{* Template for Tikiwiki site identity header *}
{if $prefs.feature_sitemycode eq 'y' && ($prefs.sitemycode_publish eq 'y' or $tiki_p_admin eq 'y')}{eval var=$prefs.sitemycode}{* here can be custom site admin code *}{/if}
{if $prefs.feature_siteloc eq 'y' and $prefs.feature_breadcrumbs eq 'y'}
<div id="sitelocbar">
{if $prefs.feature_siteloclabel eq 'y' }{tr}Location : {/tr}{/if}
		{if $trail}{breadcrumbs type="trail" loc="site" crumbs=$trail}{breadcrumbs type="pagetitle" loc="site" crumbs=$trail} 
		{else}
                        <a title="{tr}{$crumbs[0]->description}{/tr}" href="{$crumbs[0]->url}" accesskey="1">{$crumbs[0]->title}</a>
			{if $structure eq 'y'}
				{section loop=$structure_path name=ix}
					{$prefs.site_crumb_seper|escape:"html"}
					{if $structure_path[ix].pageName ne $page or $structure_path[ix].page_alias ne $page_info.page_alias}
					<a href="tiki-index.php?page_ref_id={$structure_path[ix].page_ref_id}">
					{/if}
					{if $structure_path[ix].page_alias}
						{$structure_path[ix].page_alias}
					{else}
						{$structure_path[ix].pageName}
					{/if}
					{if $structure_path[ix].pageName ne $page or $structure_path[ix].page_alias ne $page_info.page_alias}
					</a>
					{/if}
				{/section}
			{else}
				{if $page ne ''}{$prefs.site_crumb_seper|escape:"html"} {$page}
				{elseif $title ne ''}{$prefs.site_crumb_seper|escape:"html"} {$title}
				{elseif $thread_info.title ne ''}{$prefs.site_crumb_seper|escape:"html"} {$thread_info.title}
				{elseif $forum_info.name ne ''}{$prefs.site_crumb_seper|escape:"html"} {$forum_info.name}
				{/if}
			{/if}
		{/if}
</div>{* bar with location indicator *}
{if $trail}{breadcrumbs type="desc" loc="site" crumbs=$trail}{else}{breadcrumbs type="desc" loc="site" crumbs=$crumbs}{/if}
{/if}
{if $prefs.feature_sitenav eq 'y'}
<div id="sitenavbar">
	{eval var=$prefs.sitenav_code}
</div>
{* site navigation bar *}
{/if}
{if $prefs.feature_sitelogo eq 'y'}
<div id="sitelogo"{if $prefs.sitelogo_bgcolor ne ''} style="background-color: {$prefs.sitelogo_bgcolor};"{/if}>
	<a href="./" title="{$prefs.sitelogo_title}"><img src="{$prefs.sitelogo_src}" alt="{$prefs.sitelogo_alt}" style="border: none" /></a>
</div>{* site logo *}
{/if}
{if $prefs.feature_sitead eq 'y'}
<div id="sitead" align="center">
{if $prefs.feature_sitead eq 'y' && ($prefs.sitead_publish eq 'y' or $tiki_p_admin eq 'y')}{eval var=$prefs.sitead}{/if}
</div>
{* optional ads (banners) *}
{/if}
