$(document).ready(function() {

(function() {
    var burger = document.querySelector('.burger');
    var menu = document.querySelector('#'+burger.dataset.target);
    burger.addEventListener('click', function() {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });
})();

$('[data-provider="summernote"]').summernote({
  lang: 'pt-BR',
  height: 300,
  toolbar: [
    ['style', ['bold', 'italic', 'underline', 'clear']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['misc', ['undo', 'redo', 'fullscreen']]
    ],
  callbacks: {
    // callback for pasting text only (no formatting)
    onPaste: function (e) {
      var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
      e.preventDefault();
      bufferText = bufferText.replace(/\r?\n/g, '<br>');
      document.execCommand('insertHtml', false, bufferText);
    }
  }
});

 });
