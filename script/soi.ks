declare function soi{
    parameter bd.
// parameter type: body
set sma to (bd:apoapsis + 2*bd:body:radius + bd:periapsis)/2.
set localsoi to sma*(bd:mu/bd:body:mu)^0.4.
print "soi for " + bd:name + ": " + round(localsoi  /1000) + "km".
return localsoi.
}