"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20137ea8; bytecode file offset 0xa3476c"
!CwTextPrompter methodsFor: 'recovered'!
setIconFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBWindowsResourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultIcon.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) handle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20666cb0; bytecode file offset 0xf63694"
!CwTextPrompter methodsFor: 'recovered'!
promptWithEtasFonts
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFontGlobal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSxDIALOG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := OSxBORDER.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := OSxMENU.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := OSxTITLE.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := OSWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBPlatform.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := OSxDBCS.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := OSShell.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyle: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := OSShell.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'M'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := 9.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := DisplayHeight.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) title.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := DisplayHeight.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := OSxSmallText.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := OSxSINGLE.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := OSxBORDER.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) inset.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) answerString.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) contents: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := [:recoveredBlock256Arg1 | 
    | recoveredBlock256Value0 recoveredBlock256Value1 recoveredBlock256Value2 recoveredBlock256Value3 |
    recoveredBlock256Value0 := recoveredLocal6.
    recoveredBlock256Value1 := (recoveredBlock256Value0) contents.
    (self) answerString: (recoveredBlock256Value1).
    recoveredLocal3 := true.
    recoveredBlock256Value2 := recoveredLocal13.
    recoveredBlock256Value3 := (recoveredBlock256Value2) destroy.
    recoveredBlock256Value3
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := OSxActivate.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack6 := recoveredLocal6.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack6 := (recoveredStack6) borderWidth.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) textFont.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) osHfont.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := OSStatic.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageString.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelFont.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) osHfont.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := OSButton.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := OSxDEFAULT.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := MxCW8.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := [:recoveredBlock508Arg1 | 
    | recoveredBlock508Value0 recoveredBlock508Value1 recoveredBlock508Value2 recoveredBlock508Value3 |
    recoveredBlock508Value0 := recoveredLocal6.
    recoveredBlock508Value1 := (recoveredBlock508Value0) contents.
    (self) answerString: (recoveredBlock508Value1).
    recoveredLocal3 := true.
    recoveredBlock508Value2 := recoveredLocal13.
    recoveredBlock508Value3 := (recoveredBlock508Value2) destroy.
    recoveredBlock508Value3
].
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := OSxSelect.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            (recoveredStack0) setDefaultButton: (recoveredStack1).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonFont.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := (recoveredStack1) osHfont.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := OSButton.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack3 := OSxPUSH.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := MxCW6.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := [:recoveredBlock689Arg1 | 
    | recoveredBlock689Value0 recoveredBlock689Value1 recoveredBlock689Value2 recoveredBlock689Value3 |
    recoveredBlock689Value0 := recoveredLocal6.
    recoveredBlock689Value1 := (recoveredBlock689Value0) contents.
    (self) answerString: (recoveredBlock689Value1).
    recoveredLocal3 := false.
    recoveredBlock689Value2 := recoveredLocal13.
    recoveredBlock689Value3 := (recoveredBlock689Value2) destroy.
    recoveredBlock689Value3
].
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := OSxSelect.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonFont.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := (recoveredStack1) osHfont.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack2 := [:recoveredBlock857Arg1 | 
    | recoveredBlock857Value0 recoveredBlock857Value1 recoveredBlock857Value2 recoveredBlock857Value3 |
    recoveredBlock857Value0 := recoveredLocal6.
    recoveredBlock857Value1 := (recoveredBlock857Value0) contents.
    (self) answerString: (recoveredBlock857Value1).
    recoveredBlock857Value2 := recoveredLocal13.
    recoveredBlock857Value3 := (recoveredBlock857Value2) destroy.
    recoveredBlock857Value3
].
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := OSxClose.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := XmSYSTEMMODAL.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 898] ifFalse: [recoveredPC := 908].
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            (recoveredStack0) setSysModal.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredPC := 949.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack1 := XmFULLAPPLICATIONMODAL.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 920] ifFalse: [recoveredPC := 930].
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredPC := 949.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := XmPRIMARYAPPLICATIONMODAL.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 942] ifFalse: [recoveredPC := 949].
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            (recoveredStack0) setPrimaryModal.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            (recoveredStack0) setIconFor: (recoveredStack1).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            (recoveredStack1) setFocus.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := (recoveredStack2) answerString.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredPC := 1009.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1009] ifFalse: [recoveredPC := 1002].
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1019] ifFalse: [recoveredPC := 992].
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1032] ifFalse: [recoveredPC := 1036].
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack0 := (recoveredStack0) answerString.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

