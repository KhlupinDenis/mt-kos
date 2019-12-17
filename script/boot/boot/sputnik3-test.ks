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
require("mt","ltoa.ks").
require("sputnik","mission3-test.ks").