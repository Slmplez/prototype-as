"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006612c; bytecode file offset 0x963428"
!RBLineStyle methodsFor: 'recovered'!
color
    | recoveredValue0 |
    recoveredValue0 := color.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006795c; bytecode file offset 0x9646f8"
!RBLineStyle methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200688bc; bytecode file offset 0x965b90"
!RBLineStyle methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009ceac; bytecode file offset 0x99976c"
!RBLineStyle methodsFor: 'recovered'!
getColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := color.
    recoveredValue1 := CgRGBColor.
    recoveredValue2 := (recoveredValue1) black.
    recoveredValue3 := (recoveredValue0) defaultReturn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bda4c; bytecode file offset 0x9bb178"
!RBLineStyle methodsFor: 'recovered'!
color: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bdb74; bytecode file offset 0x9bb178"
!RBLineStyle methodsFor: 'recovered'!
setColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    color := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bebc8; bytecode file offset 0x9bc0b4"
!RBLineStyle methodsFor: 'recovered'!
setWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf148; bytecode file offset 0x9bc0b4"
!RBLineStyle methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb1c; bytecode file offset 0x9bd228"
!RBLineStyle methodsFor: 'recovered'!
setType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bff94; bytecode file offset 0x9bd228"
!RBLineStyle methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012c3d8; bytecode file offset 0xa28c94"
!RBLineStyle methodsFor: 'recovered'!
initDefault
    | recoveredValue0 recoveredValue1 |
    type := 0.
    width := 2.
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) black.
    color := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2015f468; bytecode file offset 0xa5bd30"
!RBLineStyle methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    (self) type: (0).
    (self) width: (2).
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) black.
    (self) color: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016a944; bytecode file offset 0xa671f8"
!RBLineStyle methodsFor: 'recovered'!
getWidth
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016a964; bytecode file offset 0xa6721c"
!RBLineStyle methodsFor: 'recovered'!
getType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LineSolid.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201eb2ac; bytecode file offset 0xae7b84"
!RBLineStyle methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (self) color.
    recoveredValue2 := (recoveredValue1) red.
    recoveredValue3 := (self) color.
    recoveredValue4 := (recoveredValue3) green.
    recoveredValue5 := (self) color.
    recoveredValue6 := (recoveredValue5) blue.
    recoveredValue7 := (recoveredValue0) red: (recoveredValue2) green: (recoveredValue4) blue: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := super deepCopy.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) color: (recoveredValue10).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20257c84; bytecode file offset 0xb54560"
!RBLineStyle methodsFor: 'recovered'!
writeXML: recoveredArg1 tag: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := width.
    (recoveredValue2) attr: ('width') nnInt: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := type.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (#('LineSolid' 'LineOnOffDash' 'LineDoubleDash')) at: (recoveredValue6).
    (recoveredValue4) attr: ('type') nmToken: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := color.
    (recoveredValue8) complex: ('Color') color: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2031c28c; bytecode file offset 0xc18b60"
!RBLineStyle methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := width.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (' width: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := color.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := (' color: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := type.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := (' type ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) cr.
    recoveredValue21 := (recoveredValue0) cr.
    ^recoveredValue21
! !

