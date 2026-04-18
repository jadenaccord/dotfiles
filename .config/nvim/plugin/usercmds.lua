vim.api.nvim_create_user_command('PackAdd', function(opts)
  vim.pack.add({ opts.args })
end, { nargs = 1, desc = 'Add a plugin' })

vim.api.nvim_create_user_command('PackDel', function(opts)
  vim.pack.del(opts.args)
end, { nargs = 1, desc = 'Remove a plugin' })

vim.api.nvim_create_user_command('PackUpdate', function()
  vim.pack.update({})
end, { desc = 'Update all plugins' })

vim.api.nvim_create_user_command('PackClean', function()
  local active = {}
  for _, p in ipairs(vim.pack.get()) do
    active[p.spec.name] = p.active
  end
  local unused = {}
  for _, p in ipairs(vim.pack.get()) do
    if not active[p.spec.name] then
      table.insert(unused, p.spec.name)
    end
  end
  if #unused == 0 then
    vim.notify('No unused plugins')
    return
  end
  vim.pack.del(unused)
end, { desc = 'Remove unused plugins' })
