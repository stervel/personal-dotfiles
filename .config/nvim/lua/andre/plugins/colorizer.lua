local status, colorizer = pcall(require, "colorizer")
if not status then
    return
end

require("colorizer").setup {
user_default_options = {
RRGGBBAA = true,
},
}
