if vim.fn.has("win32") == 1 and not vim.env.HOME then
  vim.env.HOME = vim.env.USERPROFILE
end

require("LiamsConfig.remap")
require("LiamsConfig.set")
require("LiamsConfig.init_lazy")
require("LiamsConfig.autocmd")
