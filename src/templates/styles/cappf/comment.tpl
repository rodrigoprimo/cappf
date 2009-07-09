{* $Id: comment.tpl 13501 2008-07-10 13:46:35Z nyloth $ *}
{if $comment.doNotShow != 1 }
<div class="commentspost {$thread_style}" id="threadId{$comment.threadId}">
	<div class="inner">

	<div class="commentsuseravatar">
		<img src="tiki-show_user_avatar.php?user={$comment.userName}" border=0 />
	</div>

	<div class="clearfix commentspostbody">
		{include file="comment-header.tpl"}
		{include file="comment-body.tpl"}
	</div>

{if $thread_style != 'commentStyle_headers'}
	{include file="comment-footer.tpl"}
	<br style="clear: both;" />
{/if}

	<span class="corners-bottom"><span></span></span></div>
</div>
{/if}

{if $first neq 'y' and $comment.replies_info.numReplies > 0 && $comment.replies_info.numReplies != ''}
	{foreach from=$comment.replies_info.replies item="comment"}
		{if $comment.doNotShow != 1 && $thread_style != 'commentStyle_plain' }
		<div class="sub_comment_area">
			<div class="sub_comment">
		{/if}
		{include file="comment.tpl" comment=$comment}
		{if $comment.doNotShow != 1  && $thread_style != 'commentStyle_plain' }
			</div>
		</div>
		{/if}
	{/foreach}
{/if}
