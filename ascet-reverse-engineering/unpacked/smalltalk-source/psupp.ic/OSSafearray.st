"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200011ac; bytecode file offset 0x155d58"
!OSSafearray methodsFor: 'recovered'!
cDims
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002824; bytecode file offset 0x1561c4"
!OSSafearray methodsFor: 'recovered'!
fFeatures
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200037c4; bytecode file offset 0x157170"
!OSSafearray methodsFor: 'recovered'!
cbElements
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ae4; bytecode file offset 0x157f64"
!OSSafearray methodsFor: 'recovered'!
cLocks
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c74; bytecode file offset 0x1589a4"
!OSSafearray methodsFor: 'recovered'!
pvData
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20008248; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayGetElemsize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayGetElemsize.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008578; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayUnlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayUnlock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008598; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayGetDim
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayGetDim.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200085d8; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayLock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayLock.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008b58; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayAllocData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayAllocData.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008b98; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayUnaccessData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayUnaccessData.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008d48; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayDestroyDescriptor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayDestroyDescriptor.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20008f98; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayDestroy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayDestroy.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20009138; bytecode file offset 0x15caa4"
!OSSafearray methodsFor: 'recovered'!
safeArrayDestroyData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SafeArrayDestroyData.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dfdc; bytecode file offset 0x161938"
!OSSafearray methodsFor: 'recovered'!
rgsabound
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSafearraybound.
    recoveredValue1 := (self) arrayAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ef8c; bytecode file offset 0x163098"
!OSSafearray methodsFor: 'recovered'!
safeArrayAccessData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SafeArrayAccessData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000effc; bytecode file offset 0x163098"
!OSSafearray methodsFor: 'recovered'!
safeArrayRedim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SafeArrayRedim.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f35c; bytecode file offset 0x163098"
!OSSafearray methodsFor: 'recovered'!
safeArrayCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SafeArrayCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001166c; bytecode file offset 0x165330"
!OSSafearray methodsFor: 'recovered'!
cDims: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011e40; bytecode file offset 0x1657d4"
!OSSafearray methodsFor: 'recovered'!
fFeatures: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134cc; bytecode file offset 0x166e00"
!OSSafearray methodsFor: 'recovered'!
cbElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001409c; bytecode file offset 0x1683c0"
!OSSafearray methodsFor: 'recovered'!
cLocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154f4; bytecode file offset 0x169290"
!OSSafearray methodsFor: 'recovered'!
pvData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2002091c; bytecode file offset 0x174df8"
!OSSafearray methodsFor: 'recovered'!
safeArrayPtrOfIndex: recoveredArg1 ppvData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SafeArrayPtrOfIndex.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020acc; bytecode file offset 0x174df8"
!OSSafearray methodsFor: 'recovered'!
safeArrayGetElement: recoveredArg1 pv: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SafeArrayGetElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020bac; bytecode file offset 0x174df8"
!OSSafearray methodsFor: 'recovered'!
safeArrayPutElement: recoveredArg1 pv: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SafeArrayPutElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020dac; bytecode file offset 0x174df8"
!OSSafearray methodsFor: 'recovered'!
safeArrayGetLBound: recoveredArg1 plLbound: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SafeArrayGetLBound.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002106c; bytecode file offset 0x174df8"
!OSSafearray methodsFor: 'recovered'!
safeArrayGetUBound: recoveredArg1 plUbound: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SafeArrayGetUBound.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2003e75c; bytecode file offset 0x19201c"
!OSSafearray methodsFor: 'recovered'!
getDataType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := PlatformConstants.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := 1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack4 := 4.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack5 := (recoveredBlock12Stack5) size.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) min: (recoveredBlock12Stack5).
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) copyFrom: (recoveredBlock12Stack3) to: (recoveredBlock12Stack4).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack3 := 'Fadf'.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 36] ifFalse: [recoveredBlock12PC := 44].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg2.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock50Arg1 :recoveredBlock50Arg2 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) fFeatures.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg2.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) bitAnd: (recoveredBlock50Stack3).
            recoveredBlock50PC := 63.
        ].
        recoveredBlock50Step = 63 ifTrue: [
            recoveredBlock50Stack3 := 0.
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) ~= (recoveredBlock50Stack3).
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 70] ifFalse: [recoveredBlock50PC := 73].
        ].
        recoveredBlock50Step = 70 ifTrue: [
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg2.
            recoveredBlock50PC := 72.
        ].
        recoveredBlock50Step = 72 ifTrue: [
            ^recoveredBlock50Stack1
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^0
! !

"psupp.ic method 0x2003eb38; bytecode file offset 0x192400"
!OSSafearray methodsFor: 'recovered'!
getData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) rgsabound.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) cElements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := FadfVariant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := OSVariantarg.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) pvData.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) cbElements.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) address: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 32] ifFalse: [recoveredLocal1 := nil. recoveredPC := 64]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20040dd4; bytecode file offset 0x1946a8"
!OSSafearray methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := PlatformConstants.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := 1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack4 := 4.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack5 := (recoveredBlock12Stack5) size.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) min: (recoveredBlock12Stack5).
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) copyFrom: (recoveredBlock12Stack3) to: (recoveredBlock12Stack4).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack3 := 'Fadf'.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 36] ifFalse: [recoveredBlock12PC := 44].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg2.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    super printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) printReferenceOn: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock63Arg1 :recoveredBlock63Arg2 | 
    | recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := nil.
            recoveredBlock63PC := 71.
        ].
        recoveredBlock63Step = 71 ifTrue: [
            recoveredBlock63Stack2 := self.
            recoveredBlock63PC := 72.
        ].
        recoveredBlock63Step = 72 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) fFeatures.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg2.
            recoveredBlock63PC := 75.
        ].
        recoveredBlock63Step = 75 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) bitAnd: (recoveredBlock63Stack3).
            recoveredBlock63PC := 77.
        ].
        recoveredBlock63Step = 77 ifTrue: [
            recoveredBlock63Stack3 := 0.
            recoveredBlock63PC := 79.
        ].
        recoveredBlock63Step = 79 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) ~= (recoveredBlock63Stack3).
            recoveredBlock63PC := 80.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 84] ifFalse: [recoveredBlock63PC := 94].
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63PC := 85.
        ].
        recoveredBlock63Step = 85 ifTrue: [
            recoveredBlock63Stack1 := recoveredArg1.
            recoveredBlock63PC := 88.
        ].
        recoveredBlock63Step = 88 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 89.
        ].
        recoveredBlock63Step = 89 ifTrue: [
            (recoveredBlock63Stack2) cr.
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 92.
        ].
        recoveredBlock63Step = 92 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) nextPutAll: (recoveredBlock63Stack2).
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
    (recoveredValue6) keysAndValuesDo: (recoveredValue7).
    ^self
! !

