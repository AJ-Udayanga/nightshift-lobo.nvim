# 🐺 NightShift-Lobo.nvim

A dark, modern ecosystem color theme inspired by deep night blues, muted teals, and warm gold highlights.

Designed for:

* 🌙 Long coding sessions
* 🧠 Low eye fatigue
* 🎯 Clear syntax hierarchy
* 🖥 IPS / wide-gamut displays

NightShift-Lobo is part of a full ecosystem theme covering terminal, editor, browser, and shell.

---

## 🎨 Color Philosophy

NightShift-Lobo is built around:

* Deep charcoal-blue backgrounds
* Muted arctic cyan & teal accents
* Soft gold highlights
* Controlled saturation
* High readability without neon glow

This is **not** a flashy theme.
It is meant to feel calm, serious, and premium.

---

## 🌈 Palette

| Role       | Color     |
| ---------- | --------- |
| Background | `#0F1117` |
| Surface    | `#1C2230` |
| Foreground | `#D7DAE3` |
| Blue       | `#6C82D9` |
| Cyan       | `#4FA3B1` |
| Teal       | `#5FA8B8` |
| Green      | `#6CBF84` |
| Yellow     | `#CFAE6A` |
| Red        | `#D67A7A` |
| Comment    | `#5C6370` |

---

## 📦 Installation (Lazy.nvim)

```lua
{
  "AJ-Udayanga/nightshift-lobo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("nightshift-lobo")
  end,
}
```

---

## ⚡ Usage

After installation:

```
:colorscheme nightshift-lobo
```

---

## 🔌 Supported Integrations

* Treesitter
* LSP Diagnostics
* Telescope
* nvim-cmp
* Floating Windows
* Terminal Colors

More integrations coming soon.

---

## 🖥 Ecosystem Roadmap

NightShift-Lobo is expanding into:

* 🐱 Kitty Terminal
* 🧠 VSCode
* 🌐 Browser theme
* 🐚 Shell styling
* 🪟 Window manager styling

One palette. One identity.

---

## 🛠 Development

Project structure:

```
nightshift-lobo.nvim/
├── lua/nightshift-lobo/
│   ├── init.lua
│   ├── palette.lua
│   ├── highlights.lua
│   └── integrations.lua
└── colors/nightshift-lobo.lua
```

---

## 📄 License

GPL-3.0 license

---

## ✨ Vision

NightShift-Lobo is not just a colorscheme.
It is a cohesive dark UI identity built for developers who prefer:

* Minimal glow
* Clean contrast
* Professional aesthetics
* Focus-first design
