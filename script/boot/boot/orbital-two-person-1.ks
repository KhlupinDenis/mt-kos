function startnextstage {
  until ship:availablethrust > 0 {
    wait 0.1.
    stage.
  }
}

print "1". wait 1.

lock throttle to 1.
lock steering to up + R(0,0,180).
stage.
print "Launch!".
until altitude >10000 {
   startnextstage().	
}
lock steering to up + R(0,0,180) + R(0,-60,0).
print "Beginning gravity turn.".

until apoapsis >72000 {
   startnextstage().	
}

lock throttle to 0.
lock steering to prograde.
print "Waiting for circularization burn.".
wait until eta:apoapsis < 15.
lock throttle to 1.
print "Burn.".

until periapsis > 70200.
{
   startnextstage().	
}


// wait
wait 30.
lock steering to RETROGRADE.
lock throttle to 1.
print "Burn.".

wait until periapsis = 50000.
lock throttle to 0.

wait until altitude <10000.
stage.

//end program
