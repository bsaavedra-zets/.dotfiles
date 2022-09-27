 -- filenames like *.xml, *.html, *.xhtml, ...
 -- These are the file extensions where this plugin is enabled.

vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

-- " filenames like *.xml, *.xhtml, ...
-- " This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx'

-- " filetypes like xml, html, xhtml, ...
-- " These are the file types where this plugin is enabled.
vim.g.closetag_filetypes = 'html,xhtml,phtml,javascript'

-- " filetypes like xml, xhtml, ...
-- " This will make the list of non-closing tags self-closing in the specified files.
vim.g.closetag_xhtml_filetypes = 'xhtml,jsx'

-- integer value [0|1]
-- This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)

vim.g.closetag_emptyTags_caseSensitive = 1

vim.cmd([[
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }
]])
-- " dict
-- " Disables auto-close if not in a "valid" region (based on filetype)
-- " Shortcut for closing tags, default is '>'
vim.g.closetag_shortcut = '>'

-- " Add > at current position without closing the current tag, default is ''
-- vim.g.closetag_close_shortcut = '<leader>>'

