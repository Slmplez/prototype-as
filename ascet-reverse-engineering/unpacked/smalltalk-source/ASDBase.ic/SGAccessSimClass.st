"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200bfca4; bytecode file offset 0x9bd228"
!SGAccessSimClass methodsFor: 'recovered'!
cMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x203a0278; bytecode file offset 0xc9cb5c"
!SGAccessSimClass methodsFor: 'recovered'!
updateDependentParameter
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := SGL1Message.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := oidNumber.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := cMethods.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack5 := 'dependentParameters'.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack6 := [].
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) at: (recoveredBlock5Stack5) ifAbsent: (recoveredBlock5Stack6).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack5 := charElement.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) name.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack6 := 'L1_dependentParameters'.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createSmallPid: (recoveredBlock5Stack2) oid: (recoveredBlock5Stack3) cmd: (recoveredBlock5Stack4) contextDesc: (recoveredBlock5Stack5) commandDesc: (recoveredBlock5Stack6).
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredLocal3 := recoveredBlock5Stack1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := SGServer.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal3.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) sendL1Message: (recoveredBlock5Stack2).
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isValid.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 56] ifFalse: [recoveredBlock5PC := 64].
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20435b1c; bytecode file offset 0xd32408"
!SGAccessSimClass methodsFor: 'recovered'!
performASG: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getSemaphore.
    recoveredValue1 := [
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5Stack8 recoveredBlock5Stack9 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := SGL1Message.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 0.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := oidNumber.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack4 := cMethods.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack5 := recoveredArg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) at: (recoveredBlock5Stack5).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack5 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack6 := charElement.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack7 := recoveredArg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack8 := recoveredArg2.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) methodDescription: (recoveredBlock5Stack6) selector: (recoveredBlock5Stack7) arguments: (recoveredBlock5Stack8).
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack6 := 'L1_performASG'.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) createSmallPid: (recoveredBlock5Stack2) oid: (recoveredBlock5Stack3) cmd: (recoveredBlock5Stack4) contextDesc: (recoveredBlock5Stack5) commandDesc: (recoveredBlock5Stack6).
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredLocal3 := recoveredBlock5Stack1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block47Arg1 | 
    | recoveredBlock5Block47Value0 recoveredBlock5Block47Value1 recoveredBlock5Block47Value2 recoveredBlock5Block47Value3 recoveredBlock5Block47Value4 recoveredBlock5Block47Value5 |
    recoveredBlock5Block47Value0 := recoveredLocal3.
    recoveredBlock5Block47Value1 := recoveredBlock5Block47Arg1.
    recoveredBlock5Block47Value2 := (recoveredBlock5Block47Value1) getImplValue.
    recoveredBlock5Block47Value3 := recoveredBlock5Block47Arg1.
    recoveredBlock5Block47Value4 := (recoveredBlock5Block47Value3) getImplType.
    recoveredBlock5Block47Value5 := (recoveredBlock5Block47Value0) addArgument: (recoveredBlock5Block47Value2) implType: (recoveredBlock5Block47Value4).
    recoveredBlock5Block47Value5
].
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack1 := SGServer.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal3.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) sendL1Message: (recoveredBlock5Stack2).
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal2.
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isValid.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 86] ifFalse: [recoveredBlock5PC := 94].
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 87.
        ].
        recoveredBlock5Step = 87 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 94 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 95.
        ].
        recoveredBlock5Step = 95 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) critical: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204b5af4; bytecode file offset 0xdb23e4"
!SGAccessSimClass methodsFor: 'recovered'!
methodDescription: recoveredArg1 selector: recoveredArg2 arguments: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 79] ifFalse: [recoveredBlock59PC := 72].
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal2.
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack2 := ', '.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            (recoveredBlock59Stack1) nextPutAll: (recoveredBlock59Stack2).
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal2.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) l1ErrorDescription.
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            (recoveredBlock59Stack1) nextPutAll: (recoveredBlock59Stack2).
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59Stack1 := false.
            recoveredBlock59PC := 88.
        ].
        recoveredBlock59Step = 88 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 89.
        ].
        recoveredBlock59Step = 89 ifTrue: [
            recoveredLocal1 := recoveredBlock59Stack2.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := cMethods.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 |
    recoveredBlock109Value0 := recoveredLocal2.
    recoveredBlock109Value1 := recoveredBlock109Value0.
    (recoveredBlock109Value1) nextPutAll: (' (#').
    recoveredBlock109Value2 := recoveredBlock109Value0.
    recoveredBlock109Value3 := recoveredBlock109Arg1.
    recoveredBlock109Value4 := (recoveredBlock109Value3) asString.
    (recoveredBlock109Value2) nextPutAll: (recoveredBlock109Value4).
    recoveredBlock109Value5 := (recoveredBlock109Value0) nextPut: ($)).
    recoveredBlock109Value5
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205593b4; bytecode file offset 0xe55cc8"
!SGAccessSimClass methodsFor: 'recovered'!
performASG: recoveredArg1 withArguments: recoveredArg2 return: recoveredArg3 time: recoveredArg4 dt: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rnz') == ('L1_Debugging').
    recoveredValue1 := (self) getSemaphore.
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11Stack6 recoveredBlock11Stack7 recoveredBlock11Stack8 recoveredBlock11Stack9 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := cMethods.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) size.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := 28.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) >= (recoveredBlock11Stack2).
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 36] ifFalse: [recoveredBlock11PC := 66].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := SGL1Message.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := 0.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack3 := oidNumber.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Local1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack5 := self.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack6 := charElement.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack7 := recoveredArg1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack8 := recoveredArg2.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack5 := (recoveredBlock11Stack5) methodDescription: (recoveredBlock11Stack6) selector: (recoveredBlock11Stack7) arguments: (recoveredBlock11Stack8).
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Stack6 := 'L1_performASG'.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) createLargePid: (recoveredBlock11Stack2) oid: (recoveredBlock11Stack3) cmd: (recoveredBlock11Stack4) contextDesc: (recoveredBlock11Stack5) commandDesc: (recoveredBlock11Stack6).
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredLocal3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Stack1 := SGL1Message.
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Stack2 := 0.
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack3 := oidNumber.
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Local1.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack5 := self.
            recoveredBlock11PC := 74.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            recoveredBlock11Stack6 := charElement.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack7 := recoveredArg1.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack8 := recoveredArg2.
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11Stack5 := (recoveredBlock11Stack5) methodDescription: (recoveredBlock11Stack6) selector: (recoveredBlock11Stack7) arguments: (recoveredBlock11Stack8).
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            recoveredBlock11Stack6 := 'L1_performASG'.
            recoveredBlock11PC := 87.
        ].
        recoveredBlock11Step = 87 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) createSmallPid: (recoveredBlock11Stack2) oid: (recoveredBlock11Stack3) cmd: (recoveredBlock11Stack4) contextDesc: (recoveredBlock11Stack5) commandDesc: (recoveredBlock11Stack6).
            recoveredBlock11PC := 90.
        ].
        recoveredBlock11Step = 90 ifTrue: [
            recoveredLocal3 := recoveredBlock11Stack1.
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 96.
        ].
        recoveredBlock11Step = 96 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block96Arg1 | 
    | recoveredBlock11Block96Value0 recoveredBlock11Block96Value1 recoveredBlock11Block96Value2 recoveredBlock11Block96Value3 recoveredBlock11Block96Value4 recoveredBlock11Block96Value5 |
    recoveredBlock11Block96Value0 := recoveredLocal3.
    recoveredBlock11Block96Value1 := recoveredBlock11Block96Arg1.
    recoveredBlock11Block96Value2 := (recoveredBlock11Block96Value1) getImplValue.
    recoveredBlock11Block96Value3 := recoveredBlock11Block96Arg1.
    recoveredBlock11Block96Value4 := (recoveredBlock11Block96Value3) getImplType.
    recoveredBlock11Block96Value5 := (recoveredBlock11Block96Value0) addArgument: (recoveredBlock11Block96Value2) implType: (recoveredBlock11Block96Value4).
    recoveredBlock11Block96Value5
].
            recoveredBlock11PC := 114.
        ].
        recoveredBlock11Step = 114 ifTrue: [
            (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal3.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg4.
            recoveredBlock11PC := 122.
        ].
        recoveredBlock11Step = 122 ifTrue: [
            (recoveredBlock11Stack1) addArgument: (recoveredBlock11Stack2).
            recoveredBlock11PC := 124.
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal3.
            recoveredBlock11PC := 127.
        ].
        recoveredBlock11Step = 127 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg5.
            recoveredBlock11PC := 130.
        ].
        recoveredBlock11Step = 130 ifTrue: [
            (recoveredBlock11Stack1) addArgument: (recoveredBlock11Stack2).
            recoveredBlock11PC := 132.
        ].
        recoveredBlock11Step = 132 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) class.
            recoveredBlock11PC := 134.
        ].
        recoveredBlock11Step = 134 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getSGServer.
            recoveredBlock11PC := 136.
        ].
        recoveredBlock11Step = 136 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal3.
            recoveredBlock11PC := 139.
        ].
        recoveredBlock11Step = 139 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) sendL1Message: (recoveredBlock11Stack1).
            recoveredBlock11PC := 141.
        ].
        recoveredBlock11Step = 141 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack0.
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 144 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal2.
            recoveredBlock11PC := 147.
        ].
        recoveredBlock11Step = 147 ifTrue: [
            (recoveredBlock11Stack0 == nil) ifTrue: [recoveredBlock11PC := 166] ifFalse: [recoveredBlock11PC := 150].
        ].
        recoveredBlock11Step = 150 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal2.
            recoveredBlock11PC := 153.
        ].
        recoveredBlock11Step = 153 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isValid.
            recoveredBlock11PC := 155.
        ].
        recoveredBlock11Step = 155 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 158] ifFalse: [recoveredBlock11PC := 166].
        ].
        recoveredBlock11Step = 158 ifTrue: [
            recoveredBlock11Stack0 := true.
            recoveredBlock11PC := 159.
        ].
        recoveredBlock11Step = 159 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 162.
        ].
        recoveredBlock11Step = 162 ifTrue: [
            recoveredBlock11PC := 170.
        ].
        recoveredBlock11Step = 166 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 167.
        ].
        recoveredBlock11Step = 167 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 170.
        ].
        recoveredBlock11Step = 170 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 171.
        ].
        recoveredBlock11Step = 171 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 174.
        ].
        recoveredBlock11Step = 174 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 222] ifFalse: [recoveredBlock11PC := 178].
        ].
        recoveredBlock11Step = 178 ifTrue: [
            recoveredBlock11PC := 179.
        ].
        recoveredBlock11Step = 179 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 180.
        ].
        recoveredBlock11Step = 180 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg3.
            recoveredBlock11PC := 183.
        ].
        recoveredBlock11Step = 183 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 222] ifFalse: [recoveredBlock11PC := 186].
        ].
        recoveredBlock11Step = 186 ifTrue: [
            recoveredBlock11PC := 187.
        ].
        recoveredBlock11Step = 187 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 188.
        ].
        recoveredBlock11Step = 188 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 191.
        ].
        recoveredBlock11Step = 191 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg3.
            recoveredBlock11PC := 194.
        ].
        recoveredBlock11Step = 194 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getImplType.
            recoveredBlock11PC := 196.
        ].
        recoveredBlock11Step = 196 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) removeArgumentOfImplType: (recoveredBlock11Stack2).
            recoveredBlock11PC := 198.
        ].
        recoveredBlock11Step = 198 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 199.
        ].
        recoveredBlock11Step = 199 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 202.
        ].
        recoveredBlock11Step = 202 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 222] ifFalse: [recoveredBlock11PC := 206].
        ].
        recoveredBlock11Step = 206 ifTrue: [
            recoveredBlock11PC := 207.
        ].
        recoveredBlock11Step = 207 ifTrue: [
            recoveredBlock11Stack0 := recoveredArg3.
            recoveredBlock11PC := 210.
        ].
        recoveredBlock11Step = 210 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) implementationRepresentation.
            recoveredBlock11PC := 212.
        ].
        recoveredBlock11Step = 212 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 215.
        ].
        recoveredBlock11Step = 215 ifTrue: [
            (recoveredBlock11Stack0) setValue: (recoveredBlock11Stack1).
            recoveredBlock11PC := 217.
        ].
        recoveredBlock11Step = 217 ifTrue: [
            recoveredBlock11Stack0 := recoveredArg3.
            recoveredBlock11PC := 220.
        ].
        recoveredBlock11Step = 220 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) updatePhysicsRepresentation.
            recoveredBlock11PC := 222.
        ].
        recoveredBlock11Step = 222 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) critical: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

