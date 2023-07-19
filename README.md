# comment-mode
Neovim plugin for comment mode.

# Background
I'm not a fan of default setting from Neovim that automatically insert the current comment leader after hitting `<Enter>`, `'o'` or `'O'`.

https://github.com/nvim-lua/kickstart.nvim/assets/25358436/5ff4ee4c-5c70-4981-97b2-b870503cc7c2

I want to control this behaviour.

# How to use
Install the plugin with your preferred package manager:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "didadadida93/comment-mode" }
```

### [packer](https://github.com/wbthomason/packer.nvim)

```lua
--- Lua
{ "didadadida93/comment-mode" }
```

Once installed, call `init` function to setup `autocmd` and `user command`. It also recommended to call `init` function at the end of your `init.lua` file.

```lua
-- init.lua
-- ...other configutarion
require('comment-mode').init()
```

By default it will turn off the comment mode.

https://github.com/nvim-lua/kickstart.nvim/assets/25358436/f9f37e92-4306-4dcd-bd85-bdd994131997

##### you can toggle comment mode

```
:ToggleCommentMode
```

##### or set a keymap to toggle comment mode

```lua
vim.keymap.set('n', '<your keymap>', require('comment-mode').toggle_comment_mode, {})
```

##### comment-mode is also come with [lualine](https://github.com/nvim-lualine/lualine.nvim) component

```lua
sections = {
  lualine_x = {
    require('comment-mode').comment_mode_component,
  },
}
```

https://github.com/didadadida93/kickstart.nvim/assets/25358436/3fe6ef2b-bddb-4df3-be16-e8aa36bf856c

---

```lua
vim.g.commentmode = true -- set comment mode `on` when starting nvim
```

# Contribution
All contribution are welcome! Open issue, pull request, etc.
