"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008363c; bytecode file offset 0x97ff54"
!ASDImageComponentManager class methodsFor: 'recovered'!
checkDynamicIC: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkDynamicIC: (recoveredValue0) unloadBeforeLoad: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b7b00; bytecode file offset 0xab4400"
!ASDImageComponentManager class methodsFor: 'recovered'!
logFilePath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getETASLogFilePath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'toolbox.log'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036c934; bytecode file offset 0xc691fc"
!ASDImageComponentManager class methodsFor: 'recovered'!
checkDynamicIC: recoveredArg1 unloadBeforeLoad: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg2.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 50].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := System.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) removeComponent: (recoveredBlock12Stack2).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack1 == nil) ifTrue: [recoveredBlock12PC := 50] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 50] ifFalse: [recoveredBlock12PC := 40].
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := false.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) loadImageComponentFromFile: (recoveredBlock12Stack2).
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2056abf0; bytecode file offset 0xe67518"
!ASDImageComponentManager class methodsFor: 'recovered'!
loadImageComponentFromFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Application.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentlyLoaded.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := System.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) loadComponent: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal5 := recoveredBlock15Value3.
    recoveredBlock15Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredLocal5 := false.
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) arguments.
    recoveredBlock36Value2 := (recoveredBlock36Value1) first.
    recoveredLocal2 := recoveredBlock36Value2.
    recoveredBlock36Value3 := recoveredBlock36Arg1.
    recoveredBlock36Value4 := (recoveredBlock36Value3) exitWith: (false).
    recoveredBlock36Value4
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'Failed loading '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 |
    recoveredBlock110Value0 := System.
    recoveredBlock110Value1 := recoveredArg1.
    recoveredBlock110Value2 := (recoveredBlock110Value0) loadComponent: (recoveredBlock110Value1).
    recoveredBlock110Value3 := recoveredBlock110Value2.
    recoveredLocal5 := recoveredBlock110Value3.
    recoveredBlock110Value2
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 recoveredBlock130Value3 recoveredBlock130Value4 |
    recoveredLocal5 := false.
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := (recoveredBlock130Value0) arguments.
    recoveredBlock130Value2 := (recoveredBlock130Value1) first.
    recoveredLocal2 := recoveredBlock130Value2.
    recoveredBlock130Value3 := recoveredBlock130Arg1.
    recoveredBlock130Value4 := (recoveredBlock130Value3) exitWith: (false).
    recoveredBlock130Value4
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := LoadingToolboxFailed.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := CR.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := '('.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := (recoveredStack2) logFilePath.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := '   '.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := ' ->OK'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

