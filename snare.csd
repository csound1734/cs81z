<CsoundSynthesizer>
<CsOptions>
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	48000
ksmps	=	1
;nchnls	=	2
;0dbfs	=	1

instr 1	
p3 = 1
astrike trirand expon:k(1,0.01,0.37)
adl   line   1/kr, 1, 0.75
a1    delayr 3.0
a2    deltapx adl, 4
      delayw astrike
a2    diff a2
astrike = a2
amod1 mode astrike, 179, 120
amod2 mode astrike*db(-2), 337, 120
amod3 mode astrike*db(-4), 400, 120
amod4 mode astrike*db(-6), 405, 120
amod5 mode astrike*db(-12), 868, 120
amod6 mode astrike*db(-18), 1011,120
astrike dam astrike, .0085, db(-52), 1, .03, .06
ares = amod1+amod2+amod3+amod4+amod5+amod6+astrike*4
ares dam ares, .285, db(-12), 1, .02, .002
;ares = a2
out ares*ampdbfs(-12)
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0 2



</CsScore>
</CsoundSynthesizer>

