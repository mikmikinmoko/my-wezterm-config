local set = {}
-- local home = os.getenv("HOME"):gsub("\\", "/")
local home = os.getenv("USERPROFILE")
set.bg = home .. "/.config/wezterm/assets/blur-4.jpg"
set.image = set.bg
return set
