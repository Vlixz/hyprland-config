vim.opt.relativenumber = true

vim.opt.number = true

local dap = require("dap")

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.expand('~/.local/share/lvim/mason/bin/OpenDebugAD7'),
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}/bin',
    stopOnEntry = false,
    setupCommands = {
      {
        description = 'Enable pretty-printing for gdb',
        text = '-enable-pretty-printing',
        ignoreFailures = false
      },
    },
    MIMode = 'gdb',  -- Use 'gdb' as the debugger
    miDebuggerPath = '/sbin/gdb',  -- Path to gdb binary
  },
}

-- Use the same configuration for C
dap.configurations.c = dap.configurations.cpp

