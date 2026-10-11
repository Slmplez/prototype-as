"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003108; bytecode file offset 0x7f418"
!CwTextPrompter methodsFor: 'recovered'!
answerString
    | recoveredValue0 |
    recoveredValue0 := cwAnswerString.
    ^recoveredValue0
! !

"winsys.ic method 0x20003298; bytecode file offset 0x7f5b8"
!CwTextPrompter methodsFor: 'recovered'!
messageString
    | recoveredValue0 |
    recoveredValue0 := cwMessageString.
    ^recoveredValue0
! !

"winsys.ic method 0x200078a4; bytecode file offset 0x83a6c"
!CwTextPrompter methodsFor: 'recovered'!
answerString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwAnswerString := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007938; bytecode file offset 0x83bb0"
!CwTextPrompter methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwMessageString := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20010310; bytecode file offset 0x8c4e0"
!CwTextPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := MxCW13.
    cwTitle := recoveredValue0.
    cwAnswerString := ''.
    cwMessageString := ''.
    ^self
! !

"winsys.ic method 0x2004a690; bytecode file offset 0xc6960"
!CwTextPrompter methodsFor: 'recovered'!
prompt
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSxDIALOG.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := OSxBORDER.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := OSxMENU.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := OSxTITLE.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OSWidget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBPlatform.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := OSxDBCS.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := OSShell.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) setStyle: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := OSShell.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'M'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageString.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 9.
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
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := 9.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := DisplayHeight.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) title.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := DisplayWidth.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := DisplayHeight.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := OSxSmallText.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := OSxSINGLE.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := OSxBORDER.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) inset.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) answerString.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) contents: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := [:recoveredBlock245Arg1 | 
    | recoveredBlock245Value0 recoveredBlock245Value1 recoveredBlock245Value2 recoveredBlock245Value3 |
    recoveredBlock245Value0 := recoveredLocal5.
    recoveredBlock245Value1 := (recoveredBlock245Value0) contents.
    (self) answerString: (recoveredBlock245Value1).
    recoveredLocal2 := true.
    recoveredBlock245Value2 := recoveredLocal12.
    recoveredBlock245Value3 := (recoveredBlock245Value2) destroy.
    recoveredBlock245Value3
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := OSxActivate.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack6 := (recoveredStack6) borderWidth.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := OSStatic.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageString.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack4 := (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := OSButton.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := OSxDEFAULT.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := MxCW8.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack2 := [:recoveredBlock473Arg1 | 
    | recoveredBlock473Value0 recoveredBlock473Value1 recoveredBlock473Value2 recoveredBlock473Value3 |
    recoveredBlock473Value0 := recoveredLocal5.
    recoveredBlock473Value1 := (recoveredBlock473Value0) contents.
    (self) answerString: (recoveredBlock473Value1).
    recoveredLocal2 := true.
    recoveredBlock473Value2 := recoveredLocal12.
    recoveredBlock473Value3 := (recoveredBlock473Value2) destroy.
    recoveredBlock473Value3
].
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := OSxSelect.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack0) setDefaultButton: (recoveredStack1).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := OSButton.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := OSxTEXT.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := OSxPUSH.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) withStyle: (recoveredStack2).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack2 := MxCW6.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack2 := [:recoveredBlock639Arg1 | 
    | recoveredBlock639Value0 recoveredBlock639Value1 recoveredBlock639Value2 recoveredBlock639Value3 |
    recoveredBlock639Value0 := recoveredLocal5.
    recoveredBlock639Value1 := (recoveredBlock639Value0) contents.
    (self) answerString: (recoveredBlock639Value1).
    recoveredLocal2 := false.
    recoveredBlock639Value2 := recoveredLocal12.
    recoveredBlock639Value3 := (recoveredBlock639Value2) destroy.
    recoveredBlock639Value3
].
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := OSxSelect.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := (recoveredStack0) textExtent: (recoveredStack1).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            (recoveredStack0) x: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack2 := [:recoveredBlock795Arg1 | 
    | recoveredBlock795Value0 recoveredBlock795Value1 recoveredBlock795Value2 recoveredBlock795Value3 |
    recoveredBlock795Value0 := recoveredLocal5.
    recoveredBlock795Value1 := (recoveredBlock795Value0) contents.
    (self) answerString: (recoveredBlock795Value1).
    recoveredBlock795Value2 := recoveredLocal12.
    recoveredBlock795Value3 := (recoveredBlock795Value2) destroy.
    recoveredBlock795Value3
].
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack1 := OSxClose.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            (recoveredStack0) hook: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := XmSYSTEMMODAL.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 832] ifFalse: [recoveredPC := 840].
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            (recoveredStack0) setSysModal.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredPC := 877.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := XmFULLAPPLICATIONMODAL.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 850] ifFalse: [recoveredPC := 860].
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            (recoveredStack0) setAppModal.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredPC := 877.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompterStyle.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := XmPRIMARYAPPLICATIONMODAL.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 870] ifFalse: [recoveredPC := 877].
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            (recoveredStack0) setPrimaryModal.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            (recoveredStack1) setFocus.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack2 := (recoveredStack2) answerString.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredPC := 929.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAndDispatch.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 929] ifFalse: [recoveredPC := 922].
        ].
        recoveredStep = 922 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 939] ifFalse: [recoveredPC := 912].
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 952] ifFalse: [recoveredPC := 956].
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack0 := (recoveredStack0) answerString.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

