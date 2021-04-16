#!/bin/bash
#tx81z emulation demo:
#Play 'Be My Lover'

csound tx81z_.orc testb.sco -odac -F BeMyLover.mid --midi-key=4 --midi-velocity=5 --omacro:INCL_HEADR=1 

