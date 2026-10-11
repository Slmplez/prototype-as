"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204dabc4; bytecode file offset 0xdd74e8"
!SGSelectorPortGO class methodsFor: 'recovered'!
createSelfPort: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
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
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) arguments.
    recoveredValue10 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 recoveredBlock35Value12 recoveredBlock35Value13 recoveredBlock35Value14 recoveredBlock35Value15 recoveredBlock35Value16 recoveredBlock35Value17 recoveredBlock35Value18 recoveredBlock35Value19 recoveredBlock35Value20 recoveredBlock35Value21 recoveredBlock35Value22 recoveredBlock35Value23 recoveredBlock35Value24 recoveredBlock35Value25 recoveredBlock35Value26 recoveredBlock35Value27 recoveredBlock35Value28 recoveredBlock35Value29 |
    recoveredBlock35Value0 := SGBlockInterfaceElementGO.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := recoveredLocal4.
    recoveredBlock35Value3 := (recoveredBlock35Value0) createWithLineStyle: (recoveredBlock35Value1) manager: (recoveredBlock35Value2).
    recoveredLocal3 := recoveredBlock35Value3.
    recoveredBlock35Value4 := SGArgumentConnectorGO.
    recoveredBlock35Value5 := recoveredLocal1.
    recoveredBlock35Value6 := recoveredLocal3.
    recoveredBlock35Value7 := (recoveredBlock35Value4) createWithLineStyle: (recoveredBlock35Value5) manager: (recoveredBlock35Value6).
    recoveredBlock35Value8 := recoveredBlock35Value7.
    recoveredBlock35Value9 := recoveredArg2.
    recoveredBlock35Value10 := (recoveredBlock35Value9) movingFrame.
    recoveredBlock35Value11 := (recoveredBlock35Value10) bottomLeft.
    recoveredBlock35Value12 := PinLength.
    (recoveredBlock35Value8) initAt: (recoveredBlock35Value11) direction: ('bottomLeft') length: (recoveredBlock35Value12).
    recoveredLocal2 := recoveredBlock35Value7.
    recoveredBlock35Value13 := recoveredLocal3.
    recoveredBlock35Value14 := recoveredBlock35Value13.
    recoveredBlock35Value15 := recoveredBlock35Arg1.
    recoveredBlock35Value16 := (recoveredBlock35Value15) typeID.
    (recoveredBlock35Value14) typeID: (recoveredBlock35Value16).
    recoveredBlock35Value17 := recoveredBlock35Value13.
    recoveredBlock35Value18 := recoveredLocal2.
    (recoveredBlock35Value17) setExternalConnectorGO: (recoveredBlock35Value18).
    recoveredBlock35Value19 := recoveredBlock35Value13.
    recoveredBlock35Value20 := recoveredArg1.
    recoveredBlock35Value21 := (recoveredBlock35Value20) methodName.
    (recoveredBlock35Value19) setConnectorNameGO: (recoveredBlock35Value21).
    recoveredBlock35Value22 := recoveredBlock35Arg1.
    recoveredBlock35Value23 := (recoveredBlock35Value22) aliasName.
    (recoveredBlock35Value13) connectorAliasName: (recoveredBlock35Value23).
    recoveredBlock35Value24 := recoveredLocal4.
    recoveredBlock35Value25 := recoveredLocal3.
    (recoveredBlock35Value24) addInterfaceGO: (recoveredBlock35Value25).
    recoveredBlock35Value26 := recoveredLocal4.
    recoveredBlock35Value27 := OrderedCollection.
    recoveredBlock35Value28 := (recoveredBlock35Value27) new.
    recoveredBlock35Value29 := (recoveredBlock35Value26) hideNames: (recoveredBlock35Value28).
    recoveredBlock35Value29
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := SGCallGO.
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue12) createForPortGO: (recoveredValue13) lineStyle: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) visible: (false).
    (recoveredValue11) setSGCallGO: (recoveredValue15).
    recoveredValue17 := recoveredLocal4.
    (recoveredValue17) visible: (false).
    recoveredValue18 := recoveredLocal4.
    ^recoveredValue18
! !

"ASDBase.ic method 0x205b92c8; bytecode file offset 0xeb5c34"
!SGSelectorPortGO class methodsFor: 'recovered'!
createFrom: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
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
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) initForSGClassGO: (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal5.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasArguments.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43Stack5 recoveredBlock43Stack6 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := SGBlockInterfaceElementGO.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal5.
            recoveredBlock43PC := 58.
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) createWithLineStyle: (recoveredBlock43Stack2) manager: (recoveredBlock43Stack3).
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredLocal4 := recoveredBlock43Stack1.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack1 := SGArgumentConnectorGO.
            recoveredBlock43PC := 65.
        ].
        recoveredBlock43Step = 65 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 68.
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal4.
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) createWithLineStyle: (recoveredBlock43Stack2) manager: (recoveredBlock43Stack3).
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 74.
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43Stack3 := DefaultGraphObjectPositionBlock.
            recoveredBlock43PC := 76.
        ].
        recoveredBlock43Step = 76 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) value.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack4 := 'down'.
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            recoveredBlock43Stack5 := PinLength.
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            (recoveredBlock43Stack2) initAt: (recoveredBlock43Stack3) direction: (recoveredBlock43Stack4) length: (recoveredBlock43Stack5).
            recoveredBlock43PC := 85.
        ].
        recoveredBlock43Step = 85 ifTrue: [
            recoveredLocal3 := recoveredBlock43Stack1.
            recoveredBlock43PC := 88.
        ].
        recoveredBlock43Step = 88 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 91.
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredBlock43Stack2 := false.
            recoveredBlock43PC := 92.
        ].
        recoveredBlock43Step = 92 ifTrue: [
            recoveredBlock43Stack3 := recoveredArg1.
            recoveredBlock43PC := 95.
        ].
        recoveredBlock43Step = 95 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) isGetSetMethodForElement.
            recoveredBlock43PC := 97.
        ].
        recoveredBlock43Step = 97 ifTrue: [
            (recoveredBlock43Stack3) ifTrue: [recoveredBlock43PC := 100] ifFalse: [recoveredBlock43PC := 113].
        ].
        recoveredBlock43Step = 100 ifTrue: [
            recoveredBlock43PC := 101.
        ].
        recoveredBlock43Step = 101 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 104.
        ].
        recoveredBlock43Step = 104 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) methodName.
            recoveredBlock43PC := 106.
        ].
        recoveredBlock43Step = 106 ifTrue: [
            recoveredBlock43Stack3 := SGReservedNames.
            recoveredBlock43PC := 108.
        ].
        recoveredBlock43Step = 108 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) setMethod.
            recoveredBlock43PC := 110.
        ].
        recoveredBlock43Step = 110 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) equals: (recoveredBlock43Stack3).
            recoveredBlock43PC := 112.
        ].
        recoveredBlock43Step = 112 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) not.
            recoveredBlock43PC := 113.
        ].
        recoveredBlock43Step = 113 ifTrue: [
            (recoveredBlock43Stack1) setDirectAccess: (recoveredBlock43Stack2).
            recoveredBlock43PC := 115.
        ].
        recoveredBlock43Step = 115 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 118.
        ].
        recoveredBlock43Step = 118 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 119.
        ].
        recoveredBlock43Step = 119 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isIn.
            recoveredBlock43PC := 121.
        ].
        recoveredBlock43Step = 121 ifTrue: [
            (recoveredBlock43Stack1) setInArg: (recoveredBlock43Stack2).
            recoveredBlock43PC := 123.
        ].
        recoveredBlock43Step = 123 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 126.
        ].
        recoveredBlock43Step = 126 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 127.
        ].
        recoveredBlock43Step = 127 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isOut.
            recoveredBlock43PC := 129.
        ].
        recoveredBlock43Step = 129 ifTrue: [
            (recoveredBlock43Stack1) setOutArg: (recoveredBlock43Stack2).
            recoveredBlock43PC := 131.
        ].
        recoveredBlock43Step = 131 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal4.
            recoveredBlock43PC := 134.
        ].
        recoveredBlock43Step = 134 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 135.
        ].
        recoveredBlock43Step = 135 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 136.
        ].
        recoveredBlock43Step = 136 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) typeID.
            recoveredBlock43PC := 138.
        ].
        recoveredBlock43Step = 138 ifTrue: [
            (recoveredBlock43Stack2) typeID: (recoveredBlock43Stack3).
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 141.
        ].
        recoveredBlock43Step = 141 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal3.
            recoveredBlock43PC := 144.
        ].
        recoveredBlock43Step = 144 ifTrue: [
            (recoveredBlock43Stack2) setExternalConnectorGO: (recoveredBlock43Stack3).
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 147.
        ].
        recoveredBlock43Step = 147 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 148.
        ].
        recoveredBlock43Step = 148 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) elementName.
            recoveredBlock43PC := 150.
        ].
        recoveredBlock43Step = 150 ifTrue: [
            (recoveredBlock43Stack2) buildConnectorNameGO: (recoveredBlock43Stack3).
            recoveredBlock43PC := 152.
        ].
        recoveredBlock43Step = 152 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 153.
        ].
        recoveredBlock43Step = 153 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) aliasName.
            recoveredBlock43PC := 155.
        ].
        recoveredBlock43Step = 155 ifTrue: [
            (recoveredBlock43Stack1) connectorAliasName: (recoveredBlock43Stack2).
            recoveredBlock43PC := 157.
        ].
        recoveredBlock43Step = 157 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal5.
            recoveredBlock43PC := 160.
        ].
        recoveredBlock43Step = 160 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal4.
            recoveredBlock43PC := 163.
        ].
        recoveredBlock43Step = 163 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) addInterfaceGO: (recoveredBlock43Stack2).
            recoveredBlock43PC := 165.
        ].
        recoveredBlock43Step = 165 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := SGBlockInterfaceElementGO.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcess.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunnable.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := SGProcessSelectorConnectorGO.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := SGSelectorConnectorGO.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := DefaultGraphObjectPositionBlock.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := 'down'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack4 := PinLength.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) initAt: (recoveredStack2) direction: (recoveredStack3) length: (recoveredStack4).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) buildConnectorNameGO: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) connectorAliasName: (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) addInterfaceGO: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 'PROD78040'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := SGCallGO.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForPortGO: (recoveredStack2) lineStyle: (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := (recoveredStack3) isRunnable.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 311] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerSGClass.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) isContinuousTimeClass.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelVisibility: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) setSGCallGO: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

