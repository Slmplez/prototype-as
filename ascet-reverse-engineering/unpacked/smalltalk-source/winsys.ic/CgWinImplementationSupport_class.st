"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000170; bytecode file offset 0x7c350"
!CgWinImplementationSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatCGsWina
    ^self
! !

"winsys.ic method 0x20004e7c; bytecode file offset 0x81048"
!CgWinImplementationSupport class methodsFor: 'recovered'!
packagerIncludeClassNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('CgWinServer').
    ^recoveredValue1
! !

"winsys.ic method 0x20005e80; bytecode file offset 0x820c4"
!CgWinImplementationSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCGsWina.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000d1fc; bytecode file offset 0x893d0"
!CgWinImplementationSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) localize.
    recoveredValue0 := CgServer.
    (recoveredValue0) initializeOnLoad.
    recoveredValue1 := CgServer.
    recoveredValue2 := CgWinServer.
    (recoveredValue1) addServerClass: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2003730c; bytecode file offset 0xb34f8"
!CgWinImplementationSupport class methodsFor: 'recovered'!
flattenPoints: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OSPoint.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := OSPoint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) fixedSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := CoordModePrevious.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 recoveredBlock50Value9 recoveredBlock50Value10 recoveredBlock50Value11 recoveredBlock50Value12 recoveredBlock50Value13 recoveredBlock50Value14 recoveredBlock50Value15 recoveredBlock50Value16 recoveredBlock50Value17 |
    recoveredBlock50Value0 := recoveredLocal4.
    recoveredBlock50Value1 := recoveredBlock50Value0.
    recoveredBlock50Value2 := recoveredLocal3.
    recoveredBlock50Value3 := recoveredBlock50Arg1.
    recoveredBlock50Value4 := (recoveredBlock50Value3) x.
    recoveredBlock50Value5 := recoveredLocal2.
    recoveredBlock50Value6 := (recoveredBlock50Value4) + (recoveredBlock50Value5).
    recoveredBlock50Value7 := recoveredBlock50Value6.
    recoveredLocal2 := recoveredBlock50Value7.
    (recoveredBlock50Value1) uint32At: (recoveredBlock50Value2) put: (recoveredBlock50Value6).
    recoveredBlock50Value8 := recoveredLocal3.
    recoveredBlock50Value9 := (recoveredBlock50Value8) + (4).
    recoveredBlock50Value10 := recoveredBlock50Arg1.
    recoveredBlock50Value11 := (recoveredBlock50Value10) y.
    recoveredBlock50Value12 := recoveredLocal1.
    recoveredBlock50Value13 := (recoveredBlock50Value11) + (recoveredBlock50Value12).
    recoveredBlock50Value14 := recoveredBlock50Value13.
    recoveredLocal1 := recoveredBlock50Value14.
    (recoveredBlock50Value0) uint32At: (recoveredBlock50Value9) put: (recoveredBlock50Value13).
    recoveredBlock50Value15 := recoveredLocal3.
    recoveredBlock50Value16 := (recoveredBlock50Value15) + (8).
    recoveredBlock50Value17 := recoveredBlock50Value16.
    recoveredLocal3 := recoveredBlock50Value17.
    recoveredBlock50Value16
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 recoveredBlock115Value3 recoveredBlock115Value4 recoveredBlock115Value5 recoveredBlock115Value6 recoveredBlock115Value7 recoveredBlock115Value8 recoveredBlock115Value9 recoveredBlock115Value10 recoveredBlock115Value11 |
    recoveredBlock115Value0 := recoveredLocal4.
    recoveredBlock115Value1 := recoveredBlock115Value0.
    recoveredBlock115Value2 := recoveredLocal3.
    recoveredBlock115Value3 := recoveredBlock115Arg1.
    recoveredBlock115Value4 := (recoveredBlock115Value3) x.
    (recoveredBlock115Value1) uint32At: (recoveredBlock115Value2) put: (recoveredBlock115Value4).
    recoveredBlock115Value5 := recoveredLocal3.
    recoveredBlock115Value6 := (recoveredBlock115Value5) + (4).
    recoveredBlock115Value7 := recoveredBlock115Arg1.
    recoveredBlock115Value8 := (recoveredBlock115Value7) y.
    (recoveredBlock115Value0) uint32At: (recoveredBlock115Value6) put: (recoveredBlock115Value8).
    recoveredBlock115Value9 := recoveredLocal3.
    recoveredBlock115Value10 := (recoveredBlock115Value9) + (8).
    recoveredBlock115Value11 := recoveredBlock115Value10.
    recoveredLocal3 := recoveredBlock115Value11.
    recoveredBlock115Value10
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

