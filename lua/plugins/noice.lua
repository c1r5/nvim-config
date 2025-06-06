return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline", -- força o uso do cmdline clássico
    },
    messages = {
      enabled = true,
      view_search = false,
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "",
          find = "shell command",
        },
        opts = { skip = true },
      },
    },
  },
}
