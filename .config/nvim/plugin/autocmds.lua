local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text briefly
autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank() end,
})

-- Restore cursor position when reopening a file
autocmd('BufReadPost', {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    if mark[1] > 1 and mark[1] <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})

-- Remove trailing whitespace on save
autocmd('BufWritePre', {
  callback = function() vim.cmd('%s/\\s\\+$//e') end,
})

-- Equalise splits when Neovim is resized
autocmd('VimResized', {
  callback = function() vim.cmd('wincmd =') end,
})

-- Enable line wrapping for text files
autocmd('FileType', { 
  pattern = { 'markdown', 'typst' },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true  -- wrap at word boundaries
  end,
})
