return {
    cmd = { "pylyzer", "--server" },
    filetypes = { "python" },
    settings = {
      python = {
        checkOnType = false,
        diagnostics = true,
        inlayHints = true,
        smartCompletion = true
      }
    }
}

-- }
-- return {}
