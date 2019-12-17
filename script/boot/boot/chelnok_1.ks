function require {
  parameter lib, fn is "".
  if fn = "" {
    if not exists(lib) {
      cd("0:/" + lib).
      list files in fl.
      for f in fl { copypath(f:name,"1:/" + lib + "/" + f:name). }
    }
    cd("1:/" + lib).
    list files in fl.
    for f in fl { runpath(f:name). }
  }
  else {
    if not exists(fn) {
      local fstr to "0:/".
      if lib = "" { set fstr to fstr + fn. }
      else { set fstr to fstr + lib + "/" + fn. }
      copypath(fstr, fn).
    }
    runpath(fn).
  }
}
print "load modules.ks".
require("chelnok_1","launch-inclan.ks").
require("libwarp","warpheight.ks").
require("liborbital","exenode.ks").
copypath("0:/liborbital/exenode_autostart.ks","1:/exenode_autostart.ks").
require("libvessel").
require("liborbital","circularize.ks").
require("libscience","do_science.ks").
require("liborbital","perinode.ks").
require("chelnok_1","satprogram-inclan.ks").

