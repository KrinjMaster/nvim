return {
  "numToStr/Comment.nvim",
  event = { "BufReadPost", "BufNewFile" }, -- use BufReadPost
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "nvim-treesitter/nvim-treesitter",
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local ok1, comment = pcall(require, "Comment")
    if not ok1 then
      return
    end

    local ok2, ts_context_commentstring = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
    if not ok2 then
      ts_context_commentstring = nil
    end

    comment.setup({
      pre_hook = ts_context_commentstring and ts_context_commentstring.create_pre_hook() or nil,
    })
  end,
}
