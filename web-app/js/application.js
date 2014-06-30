if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

function showAlert(alertName, autoHide) {
  $('#'+alertName).show();
  if (autoHide !== false) {
    setTimeout((function() {
      hideAlert(alertName);
    }), 6000);
  }
}

function hideAlert(alertName) {
  $('#' + alertName).hide();
}

function resetEntityModal(entityModalId, modalErrorMessageId) { 
  $('#' + entityModalId)
    .modal('hide')
    .find("input, select").val('');
  $('#' + modalErrorMessageId).html("");
}

