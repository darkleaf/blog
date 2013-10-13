$ ->
  $('textarea.editor').each ->
    editor = CodeMirror.fromTextArea this,
      mode: 'markdown'
      theme: "elegant"
      extraKeys:
        "Enter": "newlineAndIndentContinueMarkdownList"
    editor_element = editor.getWrapperElement()
    $(editor_element).addClass('form-control')

