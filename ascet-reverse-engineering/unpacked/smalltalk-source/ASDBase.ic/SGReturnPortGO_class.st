"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x203fc130; bytecode file offset 0xcf8a48"
!SGReturnPortGO class methodsFor: 'recovered'!
createSelfPort: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) deepCopy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue2) initForSGClassGO: (recoveredValue3) lineStyle: (recoveredValue4).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) initMethodInfo: (recoveredValue7).
    recoveredValue8 := SGBlockInterfaceElementGO.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue8) createWithLineStyle: (recoveredValue9) manager: (recoveredValue10).
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := SGResultConnectorGO.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := (recoveredValue12) createWithLineStyle: (recoveredValue13) manager: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue17) movingFrame.
    recoveredValue19 := (recoveredValue18) corner.
    recoveredValue20 := PinLength.
    (recoveredValue16) initAt: (recoveredValue19) direction: ('bottomRight') length: (recoveredValue20).
    recoveredLocal2 := recoveredValue15.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) returnValue.
    recoveredValue25 := (recoveredValue24) typeID.
    (recoveredValue22) typeID: (recoveredValue25).
    recoveredValue26 := recoveredValue21.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue26) setExternalConnectorGO: (recoveredValue27).
    recoveredValue28 := recoveredValue21.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) methodName.
    (recoveredValue28) setConnectorNameGO: (recoveredValue30).
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := (recoveredValue31) returnValue.
    recoveredValue33 := (recoveredValue32) aliasName.
    (recoveredValue21) connectorAliasName: (recoveredValue33).
    recoveredValue34 := recoveredLocal4.
    recoveredValue35 := recoveredLocal3.
    (recoveredValue34) addInterfaceGO: (recoveredValue35).
    recoveredValue36 := recoveredLocal4.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    (recoveredValue36) hideNames: (recoveredValue38).
    recoveredValue39 := recoveredLocal4.
    (recoveredValue39) visible: (false).
    recoveredValue40 := recoveredLocal4.
    ^recoveredValue40
! !

"ASDBase.ic method 0x2058ff70; bytecode file offset 0xe8c8b4"
!SGReturnPortGO class methodsFor: 'recovered'!
createFrom: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultLineStyle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) initForSGClassGO: (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) initMethodInfo: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGBlockInterfaceElementGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := SGResultConnectorGO.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := DefaultGraphObjectPositionBlock.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'down'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := PinLength.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) initAt: (recoveredStack2) direction: (recoveredStack3) length: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGetSetMethodForElement.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMethod.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) setDirectAccess: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnValue.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) typeID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) buildConnectorNameGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnValue.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) connectorAliasName: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) addInterfaceGO: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:recoveredBlock146Arg1 | 
    | recoveredBlock146Stack0 recoveredBlock146Stack1 recoveredBlock146Stack2 recoveredBlock146Stack3 recoveredBlock146Stack4 recoveredBlock146Stack5 recoveredBlock146Stack6 recoveredBlock146PC recoveredBlock146Step recoveredBlock146Done recoveredBlock146Result |
    recoveredBlock146Stack0 := self.
    recoveredBlock146PC := 152.
    recoveredBlock146Done := false.
    [recoveredBlock146Done not] whileTrue: [
        recoveredBlock146Step := recoveredBlock146PC.
        recoveredBlock146Step = 152 ifTrue: [
            recoveredBlock146Stack1 := SGBlockInterfaceElementGO.
            recoveredBlock146PC := 154.
        ].
        recoveredBlock146Step = 154 ifTrue: [
            recoveredBlock146Stack2 := recoveredLocal1.
            recoveredBlock146PC := 157.
        ].
        recoveredBlock146Step = 157 ifTrue: [
            recoveredBlock146Stack3 := recoveredLocal4.
            recoveredBlock146PC := 160.
        ].
        recoveredBlock146Step = 160 ifTrue: [
            recoveredBlock146Stack1 := (recoveredBlock146Stack1) createWithLineStyle: (recoveredBlock146Stack2) manager: (recoveredBlock146Stack3).
            recoveredBlock146PC := 162.
        ].
        recoveredBlock146Step = 162 ifTrue: [
            recoveredLocal3 := recoveredBlock146Stack1.
            recoveredBlock146PC := 165.
        ].
        recoveredBlock146Step = 165 ifTrue: [
            recoveredBlock146Stack1 := SGArgumentConnectorGO.
            recoveredBlock146PC := 167.
        ].
        recoveredBlock146Step = 167 ifTrue: [
            recoveredBlock146Stack2 := recoveredLocal1.
            recoveredBlock146PC := 170.
        ].
        recoveredBlock146Step = 170 ifTrue: [
            recoveredBlock146Stack3 := recoveredLocal3.
            recoveredBlock146PC := 173.
        ].
        recoveredBlock146Step = 173 ifTrue: [
            recoveredBlock146Stack1 := (recoveredBlock146Stack1) createWithLineStyle: (recoveredBlock146Stack2) manager: (recoveredBlock146Stack3).
            recoveredBlock146PC := 175.
        ].
        recoveredBlock146Step = 175 ifTrue: [
            recoveredBlock146Stack2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 176.
        ].
        recoveredBlock146Step = 176 ifTrue: [
            recoveredBlock146Stack3 := DefaultGraphObjectPositionBlock.
            recoveredBlock146PC := 178.
        ].
        recoveredBlock146Step = 178 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) value.
            recoveredBlock146PC := 180.
        ].
        recoveredBlock146Step = 180 ifTrue: [
            recoveredBlock146Stack4 := 'down'.
            recoveredBlock146PC := 182.
        ].
        recoveredBlock146Step = 182 ifTrue: [
            recoveredBlock146Stack5 := PinLength.
            recoveredBlock146PC := 184.
        ].
        recoveredBlock146Step = 184 ifTrue: [
            (recoveredBlock146Stack2) initAt: (recoveredBlock146Stack3) direction: (recoveredBlock146Stack4) length: (recoveredBlock146Stack5).
            recoveredBlock146PC := 187.
        ].
        recoveredBlock146Step = 187 ifTrue: [
            recoveredLocal2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 190.
        ].
        recoveredBlock146Step = 190 ifTrue: [
            recoveredBlock146Stack1 := recoveredLocal2.
            recoveredBlock146PC := 193.
        ].
        recoveredBlock146Step = 193 ifTrue: [
            recoveredBlock146Stack2 := false.
            recoveredBlock146PC := 194.
        ].
        recoveredBlock146Step = 194 ifTrue: [
            recoveredBlock146Stack3 := recoveredArg1.
            recoveredBlock146PC := 197.
        ].
        recoveredBlock146Step = 197 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) isGetSetMethodForElement.
            recoveredBlock146PC := 199.
        ].
        recoveredBlock146Step = 199 ifTrue: [
            (recoveredBlock146Stack3) ifTrue: [recoveredBlock146PC := 202] ifFalse: [recoveredBlock146PC := 215].
        ].
        recoveredBlock146Step = 202 ifTrue: [
            recoveredBlock146PC := 203.
        ].
        recoveredBlock146Step = 203 ifTrue: [
            recoveredBlock146Stack2 := recoveredArg1.
            recoveredBlock146PC := 206.
        ].
        recoveredBlock146Step = 206 ifTrue: [
            recoveredBlock146Stack2 := (recoveredBlock146Stack2) methodName.
            recoveredBlock146PC := 208.
        ].
        recoveredBlock146Step = 208 ifTrue: [
            recoveredBlock146Stack3 := SGReservedNames.
            recoveredBlock146PC := 210.
        ].
        recoveredBlock146Step = 210 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) setMethod.
            recoveredBlock146PC := 212.
        ].
        recoveredBlock146Step = 212 ifTrue: [
            recoveredBlock146Stack2 := (recoveredBlock146Stack2) equals: (recoveredBlock146Stack3).
            recoveredBlock146PC := 214.
        ].
        recoveredBlock146Step = 214 ifTrue: [
            recoveredBlock146Stack2 := (recoveredBlock146Stack2) not.
            recoveredBlock146PC := 215.
        ].
        recoveredBlock146Step = 215 ifTrue: [
            (recoveredBlock146Stack1) setDirectAccess: (recoveredBlock146Stack2).
            recoveredBlock146PC := 217.
        ].
        recoveredBlock146Step = 217 ifTrue: [
            recoveredBlock146Stack1 := recoveredLocal2.
            recoveredBlock146PC := 220.
        ].
        recoveredBlock146Step = 220 ifTrue: [
            recoveredBlock146Stack2 := recoveredBlock146Arg1.
            recoveredBlock146PC := 221.
        ].
        recoveredBlock146Step = 221 ifTrue: [
            recoveredBlock146Stack2 := (recoveredBlock146Stack2) isIn.
            recoveredBlock146PC := 223.
        ].
        recoveredBlock146Step = 223 ifTrue: [
            (recoveredBlock146Stack1) setInArg: (recoveredBlock146Stack2).
            recoveredBlock146PC := 225.
        ].
        recoveredBlock146Step = 225 ifTrue: [
            recoveredBlock146Stack1 := recoveredLocal2.
            recoveredBlock146PC := 228.
        ].
        recoveredBlock146Step = 228 ifTrue: [
            recoveredBlock146Stack2 := recoveredBlock146Arg1.
            recoveredBlock146PC := 229.
        ].
        recoveredBlock146Step = 229 ifTrue: [
            recoveredBlock146Stack2 := (recoveredBlock146Stack2) isOut.
            recoveredBlock146PC := 231.
        ].
        recoveredBlock146Step = 231 ifTrue: [
            (recoveredBlock146Stack1) setOutArg: (recoveredBlock146Stack2).
            recoveredBlock146PC := 233.
        ].
        recoveredBlock146Step = 233 ifTrue: [
            recoveredBlock146Stack1 := recoveredLocal3.
            recoveredBlock146PC := 236.
        ].
        recoveredBlock146Step = 236 ifTrue: [
            recoveredBlock146Stack2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 237.
        ].
        recoveredBlock146Step = 237 ifTrue: [
            recoveredBlock146Stack3 := recoveredBlock146Arg1.
            recoveredBlock146PC := 238.
        ].
        recoveredBlock146Step = 238 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) typeID.
            recoveredBlock146PC := 240.
        ].
        recoveredBlock146Step = 240 ifTrue: [
            (recoveredBlock146Stack2) typeID: (recoveredBlock146Stack3).
            recoveredBlock146Stack2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 243.
        ].
        recoveredBlock146Step = 243 ifTrue: [
            recoveredBlock146Stack3 := recoveredLocal2.
            recoveredBlock146PC := 246.
        ].
        recoveredBlock146Step = 246 ifTrue: [
            (recoveredBlock146Stack2) setExternalConnectorGO: (recoveredBlock146Stack3).
            recoveredBlock146Stack2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 249.
        ].
        recoveredBlock146Step = 249 ifTrue: [
            recoveredBlock146Stack3 := recoveredBlock146Arg1.
            recoveredBlock146PC := 250.
        ].
        recoveredBlock146Step = 250 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) argumentName.
            recoveredBlock146PC := 252.
        ].
        recoveredBlock146Step = 252 ifTrue: [
            (recoveredBlock146Stack2) buildConnectorNameGO: (recoveredBlock146Stack3).
            recoveredBlock146Stack2 := recoveredBlock146Stack1.
            recoveredBlock146PC := 255.
        ].
        recoveredBlock146Step = 255 ifTrue: [
            recoveredBlock146Stack3 := recoveredBlock146Arg1.
            recoveredBlock146PC := 256.
        ].
        recoveredBlock146Step = 256 ifTrue: [
            recoveredBlock146Stack3 := (recoveredBlock146Stack3) aliasName.
            recoveredBlock146PC := 258.
        ].
        recoveredBlock146Step = 258 ifTrue: [
            (recoveredBlock146Stack2) connectorAliasName: (recoveredBlock146Stack3).
            recoveredBlock146PC := 260.
        ].
        recoveredBlock146Step = 260 ifTrue: [
            recoveredBlock146PC := 261.
        ].
        recoveredBlock146Step = 261 ifTrue: [
            recoveredBlock146Stack1 := recoveredLocal4.
            recoveredBlock146PC := 264.
        ].
        recoveredBlock146Step = 264 ifTrue: [
            recoveredBlock146Stack2 := recoveredLocal3.
            recoveredBlock146PC := 267.
        ].
        recoveredBlock146Step = 267 ifTrue: [
            recoveredBlock146Stack1 := (recoveredBlock146Stack1) addInterfaceGO: (recoveredBlock146Stack2).
            recoveredBlock146PC := 269.
        ].
        recoveredBlock146Step = 269 ifTrue: [
            recoveredBlock146Result := recoveredBlock146Stack1.
            recoveredBlock146Done := true.
        ].
    ].
    recoveredBlock146Result
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

