return {
  cmd = { "clangd", "--background-index", "--clang-tidy", "-j", "2" },
  filetypes = { 'c', 'cpp', 'objcpp', 'objc' },
}
