return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "delve", "go-debug-adapter" } },
    },
  }
}
