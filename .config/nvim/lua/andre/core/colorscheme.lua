local status, _ = pcall(vim.cmd, "colorscheme github_light")
if not status then
    print("colorscheme github_light not found!")
    return
end


