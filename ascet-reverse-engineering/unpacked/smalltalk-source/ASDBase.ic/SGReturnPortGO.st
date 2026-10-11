"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006424; bytecode file offset 0x902de8"
!SGReturnPortGO methodsFor: 'recovered'!
updateSequenceWith: recoveredArg1 addSeqCallId: recoveredArg2 datamodelManager: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200736c8; bytecode file offset 0x970b34"
!SGReturnPortGO methodsFor: 'recovered'!
logicSequenceDescription
    ^nil
! !

"ASDBase.ic method 0x20076d14; bytecode file offset 0x9757c8"
!SGReturnPortGO methodsFor: 'recovered'!
isReturnPort
    ^true
! !

"ASDBase.ic method 0x2008bacc; bytecode file offset 0x988384"
!SGReturnPortGO methodsFor: 'recovered'!
output
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d06a4; bytecode file offset 0x9cd3a0"
!SGReturnPortGO methodsFor: 'recovered'!
isLiteralStringData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Shikhar') == ('Call_65770').
    recoveredValue1 := (self) manager.
    recoveredValue2 := (recoveredValue1) isLiteralStringData.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e136c; bytecode file offset 0x9ddc28"
!SGReturnPortGO methodsFor: 'recovered'!
inputs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := interfaceGOs.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) copyFrom: (2) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20102e40; bytecode file offset 0x9ff70c"
!SGReturnPortGO methodsFor: 'recovered'!
hasTempVar
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTempVar.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011be48; bytecode file offset 0xa1870c"
!SGReturnPortGO methodsFor: 'recovered'!
resultConnectorGO
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20138a10; bytecode file offset 0xa352cc"
!SGReturnPortGO methodsFor: 'recovered'!
tempVar: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) tempVar: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201899d0; bytecode file offset 0xa86298"
!SGReturnPortGO methodsFor: 'recovered'!
toggleTempVar
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultConnectorGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) toggleTempVar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ae5c; bytecode file offset 0xb17730"
!SGReturnPortGO methodsFor: 'recovered'!
setSGResultConnectorGO: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SGArgumentConnectorGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'ReturnPGO kann nur einen ResultPin enthalten'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b9cc8; bytecode file offset 0xeb6608"
!SGReturnPortGO methodsFor: 'recovered'!
initWithMethod: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := DefaultLineStyle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) inPortPosAndDir.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) initMethodInfo: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGBlockInterfaceElementGO.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) outPortPosAndDirOutStartValY: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := SGResultConnectorGO.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := PinLength.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) initAt: (recoveredStack2) direction: (recoveredStack3) length: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGetSetMethodForElement.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMethod.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) setDirectAccess: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnValue.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) typeID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) buildConnectorNameGO: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnValue.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) connectorAliasName: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) addInterfaceGO: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := [:recoveredBlock173Arg1 | 
    | recoveredBlock173Stack0 recoveredBlock173Stack1 recoveredBlock173Stack2 recoveredBlock173Stack3 recoveredBlock173Stack4 recoveredBlock173Stack5 recoveredBlock173Stack6 recoveredBlock173PC recoveredBlock173Step recoveredBlock173Done recoveredBlock173Result |
    recoveredBlock173Stack0 := self.
    recoveredBlock173PC := 180.
    recoveredBlock173Done := false.
    [recoveredBlock173Done not] whileTrue: [
        recoveredBlock173Step := recoveredBlock173PC.
        recoveredBlock173Step = 180 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal3.
            recoveredBlock173PC := 183.
        ].
        recoveredBlock173Step = 183 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) + (1).
            recoveredBlock173PC := 184.
        ].
        recoveredBlock173Step = 184 ifTrue: [
            recoveredLocal3 := recoveredBlock173Stack1.
            recoveredBlock173PC := 187.
        ].
        recoveredBlock173Step = 187 ifTrue: [
            recoveredBlock173Stack1 := SGBlockInterfaceElementGO.
            recoveredBlock173PC := 189.
        ].
        recoveredBlock173Step = 189 ifTrue: [
            recoveredBlock173Stack2 := recoveredLocal2.
            recoveredBlock173PC := 192.
        ].
        recoveredBlock173Step = 192 ifTrue: [
            recoveredBlock173Stack3 := self.
            recoveredBlock173PC := 193.
        ].
        recoveredBlock173Step = 193 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) createWithLineStyle: (recoveredBlock173Stack2) manager: (recoveredBlock173Stack3).
            recoveredBlock173PC := 195.
        ].
        recoveredBlock173Step = 195 ifTrue: [
            recoveredLocal6 := recoveredBlock173Stack1.
            recoveredBlock173PC := 198.
        ].
        recoveredBlock173Step = 198 ifTrue: [
            recoveredBlock173Stack1 := recoveredArg2.
            recoveredBlock173PC := 201.
        ].
        recoveredBlock173Step = 201 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) inPortPosAndDir.
            recoveredBlock173PC := 202.
        ].
        recoveredBlock173Step = 202 ifTrue: [
            recoveredLocal4 := recoveredBlock173Stack1.
            recoveredBlock173PC := 205.
        ].
        recoveredBlock173Step = 205 ifTrue: [
            recoveredBlock173Stack1 := SGArgumentConnectorGO.
            recoveredBlock173PC := 207.
        ].
        recoveredBlock173Step = 207 ifTrue: [
            recoveredBlock173Stack2 := recoveredLocal2.
            recoveredBlock173PC := 210.
        ].
        recoveredBlock173Step = 210 ifTrue: [
            recoveredBlock173Stack3 := recoveredLocal6.
            recoveredBlock173PC := 213.
        ].
        recoveredBlock173Step = 213 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) createWithLineStyle: (recoveredBlock173Stack2) manager: (recoveredBlock173Stack3).
            recoveredBlock173PC := 215.
        ].
        recoveredBlock173Step = 215 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Stack1.
            recoveredBlock173PC := 216.
        ].
        recoveredBlock173Step = 216 ifTrue: [
            recoveredBlock173Stack3 := recoveredLocal4.
            recoveredBlock173PC := 219.
        ].
        recoveredBlock173Step = 219 ifTrue: [
            recoveredBlock173Stack4 := 1.
            recoveredBlock173PC := 221.
        ].
        recoveredBlock173Step = 221 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) at: (recoveredBlock173Stack4).
            recoveredBlock173PC := 223.
        ].
        recoveredBlock173Step = 223 ifTrue: [
            recoveredBlock173Stack4 := recoveredLocal4.
            recoveredBlock173PC := 226.
        ].
        recoveredBlock173Step = 226 ifTrue: [
            recoveredBlock173Stack5 := 2.
            recoveredBlock173PC := 228.
        ].
        recoveredBlock173Step = 228 ifTrue: [
            recoveredBlock173Stack4 := (recoveredBlock173Stack4) at: (recoveredBlock173Stack5).
            recoveredBlock173PC := 230.
        ].
        recoveredBlock173Step = 230 ifTrue: [
            recoveredBlock173Stack5 := PinLength.
            recoveredBlock173PC := 232.
        ].
        recoveredBlock173Step = 232 ifTrue: [
            (recoveredBlock173Stack2) initAt: (recoveredBlock173Stack3) direction: (recoveredBlock173Stack4) length: (recoveredBlock173Stack5).
            recoveredBlock173PC := 235.
        ].
        recoveredBlock173Step = 235 ifTrue: [
            recoveredLocal5 := recoveredBlock173Stack1.
            recoveredBlock173PC := 238.
        ].
        recoveredBlock173Step = 238 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal5.
            recoveredBlock173PC := 241.
        ].
        recoveredBlock173Step = 241 ifTrue: [
            recoveredBlock173Stack2 := false.
            recoveredBlock173PC := 242.
        ].
        recoveredBlock173Step = 242 ifTrue: [
            recoveredBlock173Stack3 := recoveredArg1.
            recoveredBlock173PC := 245.
        ].
        recoveredBlock173Step = 245 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) isGetSetMethodForElement.
            recoveredBlock173PC := 247.
        ].
        recoveredBlock173Step = 247 ifTrue: [
            (recoveredBlock173Stack3) ifTrue: [recoveredBlock173PC := 250] ifFalse: [recoveredBlock173PC := 263].
        ].
        recoveredBlock173Step = 250 ifTrue: [
            recoveredBlock173PC := 251.
        ].
        recoveredBlock173Step = 251 ifTrue: [
            recoveredBlock173Stack2 := recoveredArg1.
            recoveredBlock173PC := 254.
        ].
        recoveredBlock173Step = 254 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) methodName.
            recoveredBlock173PC := 256.
        ].
        recoveredBlock173Step = 256 ifTrue: [
            recoveredBlock173Stack3 := SGReservedNames.
            recoveredBlock173PC := 258.
        ].
        recoveredBlock173Step = 258 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) getMethod.
            recoveredBlock173PC := 260.
        ].
        recoveredBlock173Step = 260 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) equals: (recoveredBlock173Stack3).
            recoveredBlock173PC := 262.
        ].
        recoveredBlock173Step = 262 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) not.
            recoveredBlock173PC := 263.
        ].
        recoveredBlock173Step = 263 ifTrue: [
            (recoveredBlock173Stack1) setDirectAccess: (recoveredBlock173Stack2).
            recoveredBlock173PC := 265.
        ].
        recoveredBlock173Step = 265 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal5.
            recoveredBlock173PC := 268.
        ].
        recoveredBlock173Step = 268 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Arg1.
            recoveredBlock173PC := 269.
        ].
        recoveredBlock173Step = 269 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) isIn.
            recoveredBlock173PC := 271.
        ].
        recoveredBlock173Step = 271 ifTrue: [
            (recoveredBlock173Stack1) setInArg: (recoveredBlock173Stack2).
            recoveredBlock173PC := 273.
        ].
        recoveredBlock173Step = 273 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal5.
            recoveredBlock173PC := 276.
        ].
        recoveredBlock173Step = 276 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Arg1.
            recoveredBlock173PC := 277.
        ].
        recoveredBlock173Step = 277 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) isOut.
            recoveredBlock173PC := 279.
        ].
        recoveredBlock173Step = 279 ifTrue: [
            (recoveredBlock173Stack1) setOutArg: (recoveredBlock173Stack2).
            recoveredBlock173PC := 281.
        ].
        recoveredBlock173Step = 281 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal6.
            recoveredBlock173PC := 284.
        ].
        recoveredBlock173Step = 284 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Stack1.
            recoveredBlock173PC := 285.
        ].
        recoveredBlock173Step = 285 ifTrue: [
            recoveredBlock173Stack3 := recoveredBlock173Arg1.
            recoveredBlock173PC := 286.
        ].
        recoveredBlock173Step = 286 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) typeID.
            recoveredBlock173PC := 288.
        ].
        recoveredBlock173Step = 288 ifTrue: [
            (recoveredBlock173Stack2) typeID: (recoveredBlock173Stack3).
            recoveredBlock173Stack2 := recoveredBlock173Stack1.
            recoveredBlock173PC := 291.
        ].
        recoveredBlock173Step = 291 ifTrue: [
            recoveredBlock173Stack3 := recoveredLocal5.
            recoveredBlock173PC := 294.
        ].
        recoveredBlock173Step = 294 ifTrue: [
            (recoveredBlock173Stack2) setExternalConnectorGO: (recoveredBlock173Stack3).
            recoveredBlock173Stack2 := recoveredBlock173Stack1.
            recoveredBlock173PC := 297.
        ].
        recoveredBlock173Step = 297 ifTrue: [
            recoveredBlock173Stack3 := recoveredBlock173Arg1.
            recoveredBlock173PC := 298.
        ].
        recoveredBlock173Step = 298 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) argumentName.
            recoveredBlock173PC := 300.
        ].
        recoveredBlock173Step = 300 ifTrue: [
            (recoveredBlock173Stack2) buildConnectorNameGO: (recoveredBlock173Stack3).
            recoveredBlock173Stack2 := recoveredBlock173Stack1.
            recoveredBlock173PC := 303.
        ].
        recoveredBlock173Step = 303 ifTrue: [
            recoveredBlock173Stack3 := recoveredBlock173Arg1.
            recoveredBlock173PC := 304.
        ].
        recoveredBlock173Step = 304 ifTrue: [
            recoveredBlock173Stack3 := (recoveredBlock173Stack3) aliasName.
            recoveredBlock173PC := 306.
        ].
        recoveredBlock173Step = 306 ifTrue: [
            (recoveredBlock173Stack2) connectorAliasName: (recoveredBlock173Stack3).
            recoveredBlock173PC := 308.
        ].
        recoveredBlock173Step = 308 ifTrue: [
            recoveredBlock173PC := 309.
        ].
        recoveredBlock173Step = 309 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal6.
            recoveredBlock173PC := 312.
        ].
        recoveredBlock173Step = 312 ifTrue: [
            recoveredBlock173Stack0 := (recoveredBlock173Stack0) addInterfaceGO: (recoveredBlock173Stack1).
            recoveredBlock173PC := 314.
        ].
        recoveredBlock173Step = 314 ifTrue: [
            recoveredBlock173Result := recoveredBlock173Stack0.
            recoveredBlock173Done := true.
        ].
    ].
    recoveredBlock173Result
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

