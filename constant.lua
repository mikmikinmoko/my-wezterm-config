local set = {}
local home = os.getenv("USERPROFILE")
print(home)
set.bg = home .. "\\.config\\wezterm\\assets\\dark.png"
print(set.bg)
return set
