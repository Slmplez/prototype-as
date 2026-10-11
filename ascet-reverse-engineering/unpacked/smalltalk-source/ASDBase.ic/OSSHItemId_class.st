"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f0f4; bytecode file offset 0x92209c"
!OSSHItemId class methodsFor: 'recovered'!
members
    ^#('cb')
! !

"ASDBase.ic method 0x20042894; bytecode file offset 0x93f170"
!OSSHItemId class methodsFor: 'recovered'!
itemIdDeskTop
    | recoveredValue0 |
    recoveredValue0 := (#(20 0 31 0 224 79 208 32 234 58 105 16 162 216 8 0 43 48 48 157)) asByteArray.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200428fc; bytecode file offset 0x9451f8"
!OSSHItemId class methodsFor: 'recovered'!
test
    | recoveredValue0 |
    recoveredValue0 := (self) createFrom: ('d:\asaptst\attrib').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20060780; bytecode file offset 0x95d050"
!OSSHItemId class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 |
    recoveredValue0 := (self) fixedSize.
    fixedSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20072528; bytecode file offset 0x96ee04"
!OSSHItemId class methodsFor: 'recovered'!
variableSize
    ^1
! !

"ASDBase.ic method 0x200728f0; bytecode file offset 0x96f1c4"
!OSSHItemId class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20124a88; bytecode file offset 0xa2134c"
!OSSHItemId class methodsFor: 'recovered'!
itemIdPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (#(22 0 49 0 0 0 0 0 0 0 0 0 0 0)) asByteArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) size.
    (recoveredValue1) uint16At: (0) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201ad4a4; bytecode file offset 0xaa9d68"
!OSSHItemId class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) itemIdDeskTop.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) callocStruct: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) + (-1).
    recoveredValue8 := recoveredLocal2.
    (recoveredValue4) memcpyFrom: (0) to: (recoveredValue7) into: (recoveredValue8) startingAt: (0).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2025d6a0; bytecode file offset 0xb59f78"
!OSSHItemId class methodsFor: 'recovered'!
itemIdDrive: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) driveType: (recoveredValue1).
    recoveredValue3 := (#(0 34 35 36 0 0 0 0)) at: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (#(25 0 35 67 58 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)) asByteArray.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue7) + (-1).
    recoveredValue9 := recoveredLocal2.
    (recoveredValue5) memcpyFrom: (0) to: (recoveredValue8) into: (recoveredValue9) startingAt: (3).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) uint8At: (2) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fb218; bytecode file offset 0xbf7af0"
!OSSHItemId class methodsFor: 'recovered'!
createComputerFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) itemIdPath.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asByteArray.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredValue4 := (#(0 0)) asByteArray.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := recoveredLocal4.
    recoveredValue8 := (recoveredValue7) size.
    (recoveredValue6) uint16At: (0) put: (recoveredValue8).
    recoveredValue9 := (self) itemIdDeskTop.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredLocal4 := recoveredValue11.
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (self) callocStruct: (recoveredValue13).
    recoveredLocal5 := recoveredValue14.
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := (recoveredValue16) size.
    recoveredValue18 := (recoveredValue17) + (-1).
    recoveredValue19 := recoveredLocal5.
    (recoveredValue15) memcpyFrom: (0) to: (recoveredValue18) into: (recoveredValue19) startingAt: (0).
    recoveredValue20 := recoveredLocal5.
    ^recoveredValue20
! !

"ASDBase.ic method 0x2054fe7c; bytecode file offset 0xe4c790"
!OSSHItemId class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIdDrive: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 :recoveredBlock111Arg2 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 recoveredBlock111Value7 recoveredBlock111Value8 recoveredBlock111Value9 recoveredBlock111Value10 recoveredBlock111Value11 recoveredBlock111Value12 |
    recoveredBlock111Value0 := (self) itemIdPath.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value1) asByteArray.
    recoveredBlock111Value3 := (recoveredBlock111Value0) , (recoveredBlock111Value2).
    recoveredBlock111Value4 := (#(0 0)) asByteArray.
    recoveredBlock111Value5 := (recoveredBlock111Value3) , (recoveredBlock111Value4).
    recoveredLocal4 := recoveredBlock111Value5.
    recoveredBlock111Value6 := recoveredLocal4.
    recoveredBlock111Value7 := recoveredLocal4.
    recoveredBlock111Value8 := (recoveredBlock111Value7) size.
    (recoveredBlock111Value6) uint16At: (0) put: (recoveredBlock111Value8).
    recoveredBlock111Value9 := recoveredLocal2.
    recoveredBlock111Value10 := recoveredBlock111Arg2.
    recoveredBlock111Value11 := recoveredLocal4.
    recoveredBlock111Value12 := (recoveredBlock111Value9) at: (recoveredBlock111Value10) put: (recoveredBlock111Value11).
    recoveredBlock111Value12
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIdDeskTop.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 |
    recoveredBlock171Value0 := recoveredLocal4.
    recoveredBlock171Value1 := recoveredBlock171Arg1.
    recoveredBlock171Value2 := (recoveredBlock171Value0) , (recoveredBlock171Value1).
    recoveredBlock171Value3 := recoveredBlock171Value2.
    recoveredLocal4 := recoveredBlock171Value3.
    recoveredBlock171Value2
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) callocStruct: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) memcpyFrom: (recoveredStack1) to: (recoveredStack2) into: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

