local set = {}
local home = os.getenv("USERPROFILE"):gsub("\\", "/")
print(home)
set.bg = home .. "/.config/wezterm/assets/the-nun.png"
print(set.bg)
return set
