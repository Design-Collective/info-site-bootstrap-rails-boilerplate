#= require active_admin/base

loadEditors = ->
  $editors = $("textarea.ckeditor")
  if $editors.length
    $editors.each ->
      editorID = $(this).attr("id")
      instance = CKEDITOR.instances[editorID]
      instance.destroy true  if instance
      CKEDITOR.replace editorID
