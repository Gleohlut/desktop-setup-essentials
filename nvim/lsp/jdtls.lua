return {
  cmd = { 'jdtls', },
  filetypes = { "java" },
  root_markers = { vim.loop.cwd() },
  settings = {
    configuration = {
      runtimes = {
        name = "JavaSE-24",
        path = "/usr/lib/jvm/java-24-openjdk",
      }
    }
  }
}
