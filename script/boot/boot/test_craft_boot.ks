set PL to SHIP:Parts.
// mystery goo
set alist to ship:partsnamed("GooExperiment").
  for an in alist {
    set d to an:getmodule("ModuleScienceExperiment").
      for ev in d:alleventnames {
        print ev.
     }
      d:doevent("observe mystery goo").
   }
  
set alist to ship:partsnamed("sensorBarometer").
  for an in alist {
    set d to an:getmodule("ModuleScienceExperiment").
      for ev in d:alleventnames {
        print ev.
      }
      //d:doevent("observe mystery goo").
   }
set alist to ship:partsnamed("science.module").
  for an in alist {
    set d to an:getmodule("ModuleScienceExperiment").
      for ev in d:alleventnames {
        print ev.
      }
      d:doevent("observe materials bay").
   }
set alist to ship:partsnamed("sensorThermometer").
  for an in alist {
    set d to an:getmodule("ModuleScienceExperiment").
      for ev in d:alleventnames {
        print ev.
      }
      d:doevent("log temperature").
   }



set alist to ship:parts.
  for an in alist {
        print an.     
   }
print addon:biome:current.

