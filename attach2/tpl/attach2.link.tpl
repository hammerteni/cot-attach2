<!-- BEGIN: MAIN -->
<link rel="stylesheet" href="plugins/attach2/js/attach2.css">
<a href="index.php?r=attach2&amp;a=display&amp;area={ATTACH_AREA}&amp;item={ATTACH_ITEM}&amp;field={ATTACH_FIELD}&amp;nc={PHP.cot_plugins_enabled.attach2.version}"
   class="attLink" title="{PHP.L.att_attachments}">{PHP.L.att_attach}</a>

<div id="attModal" class="jqmWindow">
	<div id="attModalTitle">
		<button id="attModalClose" class="jqmClose">
				{PHP.L.Close} X
		</button>
		<span id="attModalTitleText">{PHP.L.att_attachments}</span>
	</div>
	<iframe id="attModalContent" src="">
	</iframe>
</div>

<script type="text/javascript">
$(function() {
	var loadInIframeModal = function(hash){
		var trigger = $(hash.t);
		var modal = $(hash.w);
		var url = trigger.attr('href');
		var title= trigger.attr('title');
		var modalContent = $("iframe", modal);

		modalContent.html('').attr('src', url);
		//let's use the anchor "title" attribute as modal window title
		$('#attModalTitleText').text(title);
		modal.jqmShow();
		$('#attModal').css('margin-left', '-'+($('#attModal').width()/2)+'px');
		$('#attModal').css('margin-top', '-'+($('#attModal').height()/2)+'px');
		$('#attModal').css('display','block');

		$('#attModalClose').click(function() {
			window.location.reload();
		})
	}
	// initialise jqModal
	$('#attModal').jqm({
		modal: false,
		trigger: 'a.attLink',
		target: '#attModalContent',
		onShow:  loadInIframeModal
	});
});
</script>
<!-- END: MAIN -->
