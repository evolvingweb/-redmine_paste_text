(function($) {
  if (typeof jsToolBar === 'undefined') return false;
  var toTextile = function(html) {
    return textile(html, {'absolute': true, 'inline': true});
  };
  jsToolBar.prototype.elements.pastetext = {
    type: 'button',
    title: 'Paste Text',
    fn: {
        wiki: function(event) {
          textField = this;
          if ($('#pasteTextDialog').length) {
            $('#pasteTextDialog').dialog('open');
          }
          else {
            var pasteTextDialog = '<div id="pasteTextDialog" title="Insert text to paste"></div>';
            $("#main").append(pasteTextDialog);
            $('#pasteTextDialog').append('<textarea class="pasteText-textarea"></textarea>');
            $('#pasteTextDialog').append('<button class="pasteText-button">Paste</button>');
            $('.pasteText-textarea').redactor();
            $('.pasteText-button').click(function() {
              var pastedText = $('.pasteText-textarea').data('redactor').getCode();
              $('.pasteText-textarea').val('');
              var toPaste = toTextile(pastedText);
              textField.encloseLineSelection(toPaste, '');
              $('#pasteTextDialog').dialog('close');
            });
            $("#pasteTextDialog").dialog({modal:true, width:'600px'});
          }
        }
    }
};
})(jQuery);