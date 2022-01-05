# Neovim Config 🖌️

![neovim dashboard](https://i.imgur.com/rD2KOB1.png)


## Description

Personal configuration for Neovim text editor.  
Plugins courtesy of the community ❤️


## Folder Structure

```text
📂 ~/.config/nvim
├── 📂 lua
│  ├── 📁 core
│  │  ├── 🎨 colors.lua
│  │  ├── ✂️ keymaps.lua
│  │  ├── ⚙️ options.lua
│  │  └── 🧰 utils.lua
│  └── 📂 modules
│     ├── 📁 config
│     │  ├── 🔨 plugin_name.lua
│     │  └── 🔨 ...
│     └── 🛠️ init.lua
├── 📁 plugin
│     └── ⚙️ packer_compiled.lua
└── 🛠️ init.lua
```

**init.lua** is responsible of loading modules.  
**lua/core/** contain neovim configurations not related to plugins.  
**lua/modules/** contain plugin specific configuration  
**plugin/** is auto-generated by packer plugin manager.


## Installation

- Make sure to install neovim >= 0.5 (working fine on nvim stable)
- Install [gcc](https://gcc.gnu.org/) for treesitter C compilation
- Install pynvim with pip3 for snippets
- Install [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) for Ag command

Clone repo to your config folder (usually located in ~/.config/nvim)

```
cd ~/.config
git clone https://github.com/lastra-dev/neovim-config.git nvim
```


## Screenshots

![neovim outline](https://i.imgur.com/HQpm4x2.png)
![neovim lspsaga](https://i.imgur.com/PWyYOqv.png)