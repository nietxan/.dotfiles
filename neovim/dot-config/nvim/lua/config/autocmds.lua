vim.filetype.add({
  extension = {
    yaml = function(path)
      if path:find("templates") then
        return "helm"
      end
      return "yaml"
    end,
    tpl = "helm",
  },
  filename = {
    ["Chart.yaml"] = "helm",
    ["values.yaml"] = "helm",
  },
})
