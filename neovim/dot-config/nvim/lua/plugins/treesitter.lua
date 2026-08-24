local ensure_installed = {
  "bash",
  "c",
  "cpp",
  "go",
  "gomod",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local TS = require("nvim-treesitter")
    TS.setup()

    local installed = {}
    for _, lang in ipairs(TS.get_installed("parsers")) do
      installed[lang] = true
    end

    local missing = vim.tbl_filter(function(lang)
      return not installed[lang]
    end, ensure_installed)
    if #missing > 0 then
      TS.install(missing)
    end

    local available = {}
    for _, lang in ipairs(TS.get_available()) do
      available[lang] = true
    end

    local function start(buf, lang)
      if vim.api.nvim_buf_is_valid(buf) then
        pcall(vim.treesitter.start, buf, lang)
      end
    end

    local installing = {}

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("user_treesitter", { clear = true }),
      callback = function(ev)
        local lang = vim.treesitter.language.get_lang(ev.match)
        if not lang then
          return
        end

        if installed[lang] then
          start(ev.buf, lang)
        elseif available[lang] and not installing[lang] then
          installing[lang] = true
          TS.install(lang):await(function(err)
            installing[lang] = nil
            if not err then
              installed[lang] = true
              vim.schedule(function()
                start(ev.buf, lang)
              end)
            end
          end)
        end
      end,
    })
  end,
}
