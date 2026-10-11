"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001dcd8; bytecode file offset 0x92209c"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
members
    ^#('deleteFlag' 'pcId' 'tsThisVersion' 'pcFirstVersion' 'tsFirstVersion' 'version' 'className' 'name' 'objectState' 'referenceState' 'transactionId' 'blobSize' 'blob')
! !

"ASDBase.ic method 0x2007292c; bytecode file offset 0x96f1e8"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
fixedSize
    ^130
! !

"ASDBase.ic method 0x20072ea8; bytecode file offset 0x96f7ac"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
numberOfKeys
    ^5
! !

"ASDBase.ic method 0x200748d0; bytecode file offset 0x9711ac"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
numberOfSegments
    ^14
! !

"ASDBase.ic method 0x200a56d0; bytecode file offset 0x9a23f0"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
createForString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) getNewDBProxy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) create: (recoveredValue1) withBytes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6248; bytecode file offset 0x9b39ac"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
accessors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super accessors.
    recoveredValue1 := (recoveredValue0) , (#(#('className' 'testAccessClassName') #('name' 'testAccessName12345678901234567890123') #('version' 23) #('objectState' 1341341) #('referenceState' 183461))).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20288ad4; bytecode file offset 0xb853b8"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super create: (recoveredValue0) size: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) className.
    (recoveredValue4) className: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) name.
    (recoveredValue7) name: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) objectState.
    (recoveredValue10) objectState: (recoveredValue12).
    recoveredValue13 := recoveredValue3.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) referenceState.
    (recoveredValue13) referenceState: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) version.
    (recoveredValue3) version: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

"ASDBase.ic method 0x202e72b8; bytecode file offset 0xbe3ba0"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
create: recoveredArg1 withBytes: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := super create: (recoveredStack1) withBytes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) className.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) className: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) version.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) version: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectState.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) objectState: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceState.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) referenceState: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043b000; bytecode file offset 0xd378f8"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
createDoDaIndices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('deleteFlag') put: (0).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('pcId') put: (1).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) at: ('tsThisVersion') put: (2).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) at: ('pcFirstVersion') put: (3).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) at: ('tsFirstVersion') put: (4).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) at: ('className') put: (5).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) at: ('name') put: (6).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) at: ('version') put: (7).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) at: ('objectState') put: (8).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) at: ('referenceState') put: (9).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue12) at: ('applicationId') put: (10).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) at: ('transactionId') put: (11).
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) at: ('blob') put: (12).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue15) at: ('end') put: (13).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x2056c81c; bytecode file offset 0xe69134"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
initializeFieldOffsets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'deleteFlag'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'pcId'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'thisVersionId'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'tsThisVersion'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := 'pcId'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) pcIdLength.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'pcFirstVersion'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'tsThisVersion'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeLength.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'firstVersionId'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := 'tsThisVersion'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeLength.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'tsFirstVersion'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := 'pcFirstVersion'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) pcIdLength.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'className'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 'tsFirstVersion'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeLength.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := 'className'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) classNameLength.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'version'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := 'name'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := (recoveredStack4) nameLength.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'objectState'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := 'version'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'referenceState'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := 'objectState'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'applicationId'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := 'referenceState'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'transactionId'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := 'applicationId'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) fieldOffsetAt: (recoveredStack4).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) fieldOffsetAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := 'transactionId'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) transactionIdLength.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldOffsetAt: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 215] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 'blobSize'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 'blob'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 'blobPart'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := 'blobSize'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) fieldOffsetAt: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) fieldOffsetAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := fieldOffsets.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f9cd4; bytecode file offset 0xef6610"
!CTreeSearchObjectRecord class methodsFor: 'recovered'!
createDoDaArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 |
    recoveredValue0 := CTDoDaArray.
    recoveredValue1 := (self) numberOfSegments.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal3 := recoveredValue3.
    ctreeDoDa := recoveredValue2.
    recoveredValue4 := (self) createDoDaIndices.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := CTDoDa.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) fsymb: ('deleteFlag').
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) flen: (2).
    recoveredValue10 := CT_ARRAY.
    (recoveredValue7) ftype: (recoveredValue10).
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) at: ('deleteFlag').
    recoveredValue14 := recoveredLocal2.
    (recoveredValue11) dodaAt: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := CTDoDa.
    recoveredValue16 := (recoveredValue15) new.
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) fsymb: ('pcId').
    recoveredValue19 := recoveredValue17.
    recoveredValue20 := (self) pcIdLength.
    (recoveredValue19) flen: (recoveredValue20).
    recoveredValue21 := CT_ARRAY.
    (recoveredValue17) ftype: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) at: ('pcId').
    recoveredValue25 := recoveredLocal2.
    (recoveredValue22) dodaAt: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := CTDoDa.
    recoveredValue27 := (recoveredValue26) new.
    recoveredLocal2 := recoveredValue27.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := recoveredValue28.
    (recoveredValue29) fsymb: ('tsThisVersion').
    recoveredValue30 := recoveredValue28.
    recoveredValue31 := (self) timeLength.
    (recoveredValue30) flen: (recoveredValue31).
    recoveredValue32 := CT_ARRAY.
    (recoveredValue28) ftype: (recoveredValue32).
    recoveredValue33 := recoveredLocal3.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) at: ('tsThisVersion').
    recoveredValue36 := recoveredLocal2.
    (recoveredValue33) dodaAt: (recoveredValue35) put: (recoveredValue36).
    recoveredValue37 := CTDoDa.
    recoveredValue38 := (recoveredValue37) new.
    recoveredLocal2 := recoveredValue38.
    recoveredValue39 := recoveredLocal2.
    recoveredValue40 := recoveredValue39.
    (recoveredValue40) fsymb: ('pcFirstVersion').
    recoveredValue41 := recoveredValue39.
    recoveredValue42 := (self) pcIdLength.
    (recoveredValue41) flen: (recoveredValue42).
    recoveredValue43 := CT_ARRAY.
    (recoveredValue39) ftype: (recoveredValue43).
    recoveredValue44 := recoveredLocal3.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue45) at: ('pcFirstVersion').
    recoveredValue47 := recoveredLocal2.
    (recoveredValue44) dodaAt: (recoveredValue46) put: (recoveredValue47).
    recoveredValue48 := CTDoDa.
    recoveredValue49 := (recoveredValue48) new.
    recoveredLocal2 := recoveredValue49.
    recoveredValue50 := recoveredLocal2.
    recoveredValue51 := recoveredValue50.
    (recoveredValue51) fsymb: ('tsFirstVersion').
    recoveredValue52 := recoveredValue50.
    recoveredValue53 := (self) timeLength.
    (recoveredValue52) flen: (recoveredValue53).
    recoveredValue54 := CT_ARRAY.
    (recoveredValue50) ftype: (recoveredValue54).
    recoveredValue55 := recoveredLocal3.
    recoveredValue56 := recoveredLocal1.
    recoveredValue57 := (recoveredValue56) at: ('tsFirstVersion').
    recoveredValue58 := recoveredLocal2.
    (recoveredValue55) dodaAt: (recoveredValue57) put: (recoveredValue58).
    recoveredValue59 := CTDoDa.
    recoveredValue60 := (recoveredValue59) new.
    recoveredLocal2 := recoveredValue60.
    recoveredValue61 := recoveredLocal2.
    recoveredValue62 := recoveredValue61.
    (recoveredValue62) fsymb: ('className').
    recoveredValue63 := recoveredValue61.
    recoveredValue64 := (self) classNameLength.
    (recoveredValue63) flen: (recoveredValue64).
    recoveredValue65 := CT_FSTRING.
    (recoveredValue61) ftype: (recoveredValue65).
    recoveredValue66 := recoveredLocal3.
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := (recoveredValue67) at: ('className').
    recoveredValue69 := recoveredLocal2.
    (recoveredValue66) dodaAt: (recoveredValue68) put: (recoveredValue69).
    recoveredValue70 := CTDoDa.
    recoveredValue71 := (recoveredValue70) new.
    recoveredLocal2 := recoveredValue71.
    recoveredValue72 := recoveredLocal2.
    recoveredValue73 := recoveredValue72.
    (recoveredValue73) fsymb: ('name').
    recoveredValue74 := recoveredValue72.
    recoveredValue75 := (self) nameLength.
    (recoveredValue74) flen: (recoveredValue75).
    recoveredValue76 := CT_FSTRING.
    (recoveredValue72) ftype: (recoveredValue76).
    recoveredValue77 := recoveredLocal3.
    recoveredValue78 := recoveredLocal1.
    recoveredValue79 := (recoveredValue78) at: ('name').
    recoveredValue80 := recoveredLocal2.
    (recoveredValue77) dodaAt: (recoveredValue79) put: (recoveredValue80).
    recoveredValue81 := CTDoDa.
    recoveredValue82 := (recoveredValue81) new.
    recoveredLocal2 := recoveredValue82.
    recoveredValue83 := recoveredLocal2.
    recoveredValue84 := recoveredValue83.
    (recoveredValue84) fsymb: ('version').
    recoveredValue85 := recoveredValue83.
    (recoveredValue85) flen: (4).
    recoveredValue86 := CT_INT4U.
    (recoveredValue83) ftype: (recoveredValue86).
    recoveredValue87 := recoveredLocal3.
    recoveredValue88 := recoveredLocal1.
    recoveredValue89 := (recoveredValue88) at: ('version').
    recoveredValue90 := recoveredLocal2.
    (recoveredValue87) dodaAt: (recoveredValue89) put: (recoveredValue90).
    recoveredValue91 := CTDoDa.
    recoveredValue92 := (recoveredValue91) new.
    recoveredLocal2 := recoveredValue92.
    recoveredValue93 := recoveredLocal2.
    recoveredValue94 := recoveredValue93.
    (recoveredValue94) fsymb: ('objectState').
    recoveredValue95 := recoveredValue93.
    (recoveredValue95) flen: (4).
    recoveredValue96 := CT_INT4U.
    (recoveredValue93) ftype: (recoveredValue96).
    recoveredValue97 := recoveredLocal3.
    recoveredValue98 := recoveredLocal1.
    recoveredValue99 := (recoveredValue98) at: ('objectState').
    recoveredValue100 := recoveredLocal2.
    (recoveredValue97) dodaAt: (recoveredValue99) put: (recoveredValue100).
    recoveredValue101 := CTDoDa.
    recoveredValue102 := (recoveredValue101) new.
    recoveredLocal2 := recoveredValue102.
    recoveredValue103 := recoveredLocal2.
    recoveredValue104 := recoveredValue103.
    (recoveredValue104) fsymb: ('referenceState').
    recoveredValue105 := recoveredValue103.
    (recoveredValue105) flen: (4).
    recoveredValue106 := CT_INT4U.
    (recoveredValue103) ftype: (recoveredValue106).
    recoveredValue107 := recoveredLocal3.
    recoveredValue108 := recoveredLocal1.
    recoveredValue109 := (recoveredValue108) at: ('referenceState').
    recoveredValue110 := recoveredLocal2.
    (recoveredValue107) dodaAt: (recoveredValue109) put: (recoveredValue110).
    recoveredValue111 := CTDoDa.
    recoveredValue112 := (recoveredValue111) new.
    recoveredLocal2 := recoveredValue112.
    recoveredValue113 := recoveredLocal2.
    recoveredValue114 := recoveredValue113.
    (recoveredValue114) fsymb: ('applicationId').
    recoveredValue115 := recoveredValue113.
    (recoveredValue115) flen: (3).
    recoveredValue116 := CT_ARRAY.
    (recoveredValue113) ftype: (recoveredValue116).
    recoveredValue117 := recoveredLocal3.
    recoveredValue118 := recoveredLocal1.
    recoveredValue119 := (recoveredValue118) at: ('applicationId').
    recoveredValue120 := recoveredLocal2.
    (recoveredValue117) dodaAt: (recoveredValue119) put: (recoveredValue120).
    recoveredValue121 := CTDoDa.
    recoveredValue122 := (recoveredValue121) new.
    recoveredLocal2 := recoveredValue122.
    recoveredValue123 := recoveredLocal2.
    recoveredValue124 := recoveredValue123.
    (recoveredValue124) fsymb: ('transactionId').
    recoveredValue125 := recoveredValue123.
    (recoveredValue125) flen: (2).
    recoveredValue126 := CT_ARRAY.
    (recoveredValue123) ftype: (recoveredValue126).
    recoveredValue127 := recoveredLocal3.
    recoveredValue128 := recoveredLocal1.
    recoveredValue129 := (recoveredValue128) at: ('transactionId').
    recoveredValue130 := recoveredLocal2.
    (recoveredValue127) dodaAt: (recoveredValue129) put: (recoveredValue130).
    recoveredValue131 := CTDoDa.
    recoveredValue132 := (recoveredValue131) new.
    recoveredLocal2 := recoveredValue132.
    recoveredValue133 := recoveredLocal2.
    recoveredValue134 := recoveredValue133.
    (recoveredValue134) fsymb: ('blob').
    recoveredValue135 := recoveredValue133.
    (recoveredValue135) flen: (4).
    recoveredValue136 := CT_4STRING.
    (recoveredValue133) ftype: (recoveredValue136).
    recoveredValue137 := recoveredLocal3.
    recoveredValue138 := recoveredLocal1.
    recoveredValue139 := (recoveredValue138) at: ('blob').
    recoveredValue140 := recoveredLocal2.
    (recoveredValue137) dodaAt: (recoveredValue139) put: (recoveredValue140).
    recoveredValue141 := CTDoDa.
    recoveredValue142 := (recoveredValue141) new.
    recoveredLocal2 := recoveredValue142.
    recoveredValue143 := recoveredLocal2.
    recoveredValue144 := recoveredValue143.
    (recoveredValue144) flen: (0).
    recoveredValue145 := recoveredValue143.
    (recoveredValue145) ftype: (0).
    (recoveredValue143) fwhat: (-1).
    recoveredValue146 := recoveredLocal3.
    recoveredValue147 := recoveredLocal1.
    recoveredValue148 := (recoveredValue147) at: ('end').
    recoveredValue149 := recoveredLocal2.
    (recoveredValue146) dodaAt: (recoveredValue148) put: (recoveredValue149).
    recoveredValue150 := recoveredLocal3.
    ^recoveredValue150
! !

