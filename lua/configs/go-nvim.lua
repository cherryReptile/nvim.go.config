require("go").setup {
  icons = { breakpoint = "🔴", currentpos = "✅" },
}
require("go.format").gofmt() -- gofmt only
require("go.format").goimports() -- goimports + gofmt
