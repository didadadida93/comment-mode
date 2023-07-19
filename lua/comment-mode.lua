local M = {}

local function init()
  vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
    group = vim.api.nvim_create_augroup('COMMENT_MODE', {}),
    callback = function()
      if vim.g.commentmode then
        vim.cmd [[ set formatoptions+=ro ]]
      else
        vim.cmd [[ set formatoptions-=ro ]]
      end
    end,
  })

  vim.api.nvim_create_user_command('ToggleCommentMode', function()
    M.toggle_comment_mode()
  end, {})
end

local function toggle_comment_mode()
  if vim.g.commentmode then
    vim.cmd [[ set formatoptions-=ro ]]
    vim.g.commentmode = false
  else
    vim.cmd [[ set formatoptions+=ro ]]
    vim.g.commentmode = true
  end
end

local comment_mode_component = {
  'comment_mode',
  padding = { left = 1, right = 2 },
  color = function()
    if string.find(vim.o.formatoptions, 'ro') then
      return { fg = '#90ee90' }
    else
      return { fg = '#e32636' }
    end
  end,
  fmt = function()
    if string.find(vim.o.formatoptions, 'ro') then
      return '󰅺'
    else
      return '󱗡'
    end
  end,
}

M = {
  init = init,
  toggle_comment_mode = toggle_comment_mode,
  comment_mode_component = comment_mode_component,
}

return M
