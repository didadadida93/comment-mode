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
