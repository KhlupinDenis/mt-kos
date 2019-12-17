function startnextstage {
  until ship:availablethrust > 0 {
    wait 0.5.
    stage.
  }
}

print "1". wait 1.

lock throttle to 1.
lock steering to up + R(0,0,180).
stage.
print "Launch!".
until altitude >21000 {
   startnextstage().	
}
lock steering to up + R(0,0,180) + R(0,-60,0).
print "Beginning gravity turn.".

until altitude >70000 {

}
stage.
lock steering to ship:SRFRETROGRADE.

wait until altitude <8000.
stage.

//end program
