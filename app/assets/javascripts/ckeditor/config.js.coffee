CKEDITOR.editorConfig = (config) ->
  
  # Define changes to default configuration here.
  # For the complete reference:
  # http://docs.ckeditor.com/#!/api/CKEDITOR.config
  
  # The toolbar groups arrangement, optimized for a single toolbar row.
  config.toolbarGroups = [
    name: "document"
    groups: ["mode", "document", "doctools"]
  ,
    name: "styles"
  ,
    name: "colors"
  ,
    name: "links"
  ,
    name: "clipboard"
    groups: ["clipboard", "undo"]
  ,
    name: "basicstyles"
    groups: ["basicstyles", "cleanup"]
  ,
    name: "paragraph"
    groups: ["list", "indent", "blocks", "align", "bidi"]
  ,
    name: "insert"
  ]
  
  # The default plugins included in the basic setup define some buttons that
  # we don't want too have in a basic editor. We remove them here.
  config.removeButtons = "Save,Preview,NewPage,CreateDiv,Flash,Iframe,ShowBlocks,Font,Table,Maximize,Smiley,Print,Templates,Cut,Copy,Paste,Undo,Redo,Anchor,Underline,Strike,Subscript,Superscript"
  
  # Let's have it basic on dialogs as well.
  config.removeDialogTabs = "link:advanced"