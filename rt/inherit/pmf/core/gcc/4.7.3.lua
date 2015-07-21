local fn      = myFileName():gsub("%.lua$","")
local mroot   = fn:gsub("/core/.*$","")
local name    = myModuleName()
local version = myModuleVersion()
local v       = version:match("([0-9]+%.[0-9]+)%.?")
local mdir    = pathJoin(mroot,"compiler",name,v)
setenv("PERSONAL_"..name,version)
inherit()
prepend_path("MODULEPATH",mdir)
