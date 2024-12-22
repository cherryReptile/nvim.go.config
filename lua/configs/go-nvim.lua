require("go").setup {
  run_in_floaterm = false, -- отключить встроенные плавающие окна
}
require("go.format").gofmt()  -- gofmt only
require("go.format").goimports()  -- goimports + gofmt
