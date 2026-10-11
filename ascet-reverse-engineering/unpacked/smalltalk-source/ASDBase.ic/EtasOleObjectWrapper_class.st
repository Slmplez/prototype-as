"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007895c; bytecode file offset 0x9757c8"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
isInProcessCOMObject
    ^true
! !

"ASDBase.ic method 0x20096ee0; bytecode file offset 0x9937fc"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
createWithAutomationObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) automationObject: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ab788; bytecode file offset 0x9a8250"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
osIntTypeForVariantVt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osIntTypeForVariantVtDict.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20108dac; bytecode file offset 0xa0566c"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
classContext
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInProcessCOMObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ClsctxServer.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := ClsctxLocalServer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137c4c; bytecode file offset 0xa3450c"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
createObject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super createObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a7e00; bytecode file offset 0xca4708"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
osIntTypeForVariantVtDict
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := VtI1.
    recoveredValue4 := OSInt8.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := VtI2.
    recoveredValue7 := OSInt16.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := VtI4.
    recoveredValue10 := OSInt32.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := VtI8.
    recoveredValue13 := OSInt64.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := VtInt.
    recoveredValue16 := OSInt32.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := VtUi1.
    recoveredValue19 := OSUInt8.
    (recoveredValue17) at: (recoveredValue18) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := VtUi2.
    recoveredValue22 := OSUInt16.
    (recoveredValue20) at: (recoveredValue21) put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := VtUi4.
    recoveredValue25 := OSUInt32.
    (recoveredValue23) at: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := VtUi8.
    recoveredValue28 := OSUInt64.
    (recoveredValue26) at: (recoveredValue27) put: (recoveredValue28).
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := VtUint.
    recoveredValue31 := OSUInt32.
    (recoveredValue29) at: (recoveredValue30) put: (recoveredValue31).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2046f404; bytecode file offset 0xd6bd04"
!EtasOleObjectWrapper class methodsFor: 'recovered'!
stringArrayFromVariant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) parray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) safeArrayAccessData: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) rgsabound.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) cElements.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := OSObjectPointer.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) fixedSize.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := OSObjectPointer.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := OSOleStringZ.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) address: (recoveredStack3) itemType: (recoveredStack4) indirectionLevel: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 64] ifFalse: [recoveredLocal3 := nil. recoveredPC := 115]] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) safeArrayUnaccessData.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

