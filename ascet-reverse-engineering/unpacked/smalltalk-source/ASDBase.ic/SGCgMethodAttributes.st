"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005648; bytecode file offset 0x90206c"
!SGCgMethodAttributes methodsFor: 'recovered'!
printOnIntervalAttributes: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20017e40; bytecode file offset 0x92209c"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbolModelInlining
    ^'model'
! !

"ASDBase.ic method 0x2001e230; bytecode file offset 0x92209c"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbolNoInlining
    ^'none'
! !

"ASDBase.ic method 0x20020318; bytecode file offset 0x92209c"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbolAutomaticInlining
    ^'automatic'
! !

"ASDBase.ic method 0x200205a0; bytecode file offset 0x92209c"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbolCompilerInlining
    ^'compiler'
! !

"ASDBase.ic method 0x20025a98; bytecode file offset 0x923928"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbolPreprocessorInlining
    ^'preprocessor'
! !

"ASDBase.ic method 0x20027840; bytecode file offset 0x924260"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgDirectAccessMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directAccessAttributes.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029d34; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrWrite
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrWrite.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cc84; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e2b4; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrRead
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrRead.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f624; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directAccessAttributes.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030584; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrExplicitReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrExplicitReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200318a4; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrWriteForReferencedObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrWriteForReferencedObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031dc4; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrPointerType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrPointerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035e24; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
adaptIntervalAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) adaptIntervalAttributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200374f4; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrReadForReferencedObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrReadForReferencedObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037ac4; bytecode file offset 0x934580"
!SGCgMethodAttributes methodsFor: 'recovered'!
extrapolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directAccessAttributes.
    recoveredValue1 := (recoveredValue0) extrapolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004269c; bytecode file offset 0x93ef50"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrMsgCopyProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := msgCopyProcess.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e6d8; bytecode file offset 0x95afc0"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrRunnable
    kind := 'Runnable'.
    ^self
! !

"ASDBase.ic method 0x2005e6e4; bytecode file offset 0x95afc0"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrProcess
    kind := 'Process'.
    ^self
! !

"ASDBase.ic method 0x2005e6fc; bytecode file offset 0x95afc0"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrMethod
    kind := 'Method'.
    ^self
! !

"ASDBase.ic method 0x2005e75c; bytecode file offset 0x95b020"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrMsgCopyReceiveProcess
    msgCopyProcess := 'receive'.
    ^self
! !

"ASDBase.ic method 0x2005e768; bytecode file offset 0x95b020"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrMsgCopySendProcess
    msgCopyProcess := 'send'.
    ^self
! !

"ASDBase.ic method 0x200607b0; bytecode file offset 0x95d098"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrAutomaticInlining
    | recoveredValue0 |
    recoveredValue0 := (self) symbolAutomaticInlining.
    inlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200607bc; bytecode file offset 0x95d098"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoInlining
    | recoveredValue0 |
    recoveredValue0 := (self) symbolNoInlining.
    inlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200607c8; bytecode file offset 0x95d098"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrPreprocessorInlining
    | recoveredValue0 |
    recoveredValue0 := (self) symbolPreprocessorInlining.
    inlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200607d4; bytecode file offset 0x95d098"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrModelInlining
    | recoveredValue0 |
    recoveredValue0 := (self) symbolModelInlining.
    inlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200607e0; bytecode file offset 0x95d098"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrCompilerInlining
    | recoveredValue0 |
    recoveredValue0 := (self) symbolCompilerInlining.
    inlining := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20063a84; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrReference
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrReference.
    ^self
! !

"ASDBase.ic method 0x20063d44; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrDeprecatedCClassReference
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrDeprecatedCClassReference.
    ^self
! !

"ASDBase.ic method 0x20064794; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoRead
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrNoRead.
    ^self
! !

"ASDBase.ic method 0x200649f4; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrRead
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrRead.
    ^self
! !

"ASDBase.ic method 0x20064a04; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoReference
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrNoReference.
    ^self
! !

"ASDBase.ic method 0x20064a74; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrWrite
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrWrite.
    ^self
! !

"ASDBase.ic method 0x20064d64; bytecode file offset 0x961970"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoWrite
    | recoveredValue0 |
    recoveredValue0 := (self) returnAttributes.
    (recoveredValue0) cgAttrNoWrite.
    ^self
! !

"ASDBase.ic method 0x2006e900; bytecode file offset 0x96b41c"
!SGCgMethodAttributes methodsFor: 'recovered'!
stackSize
    | recoveredValue0 |
    recoveredValue0 := stackSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eeec; bytecode file offset 0x96b8a0"
!SGCgMethodAttributes methodsFor: 'recovered'!
floatUsage
    | recoveredValue0 |
    recoveredValue0 := floatUsage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f118; bytecode file offset 0x96bc1c"
!SGCgMethodAttributes methodsFor: 'recovered'!
directAccessAttributes
    | recoveredValue0 |
    recoveredValue0 := directAccessAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f840; bytecode file offset 0x96c1f4"
!SGCgMethodAttributes methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := position.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fb00; bytecode file offset 0x96c42c"
!SGCgMethodAttributes methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070068; bytecode file offset 0x96cb7c"
!SGCgMethodAttributes methodsFor: 'recovered'!
minimumStartTime
    | recoveredValue0 |
    recoveredValue0 := minimumStartTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070648; bytecode file offset 0x96d06c"
!SGCgMethodAttributes methodsFor: 'recovered'!
inliningSymbol
    | recoveredValue0 |
    recoveredValue0 := inlining.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200708fc; bytecode file offset 0x96d218"
!SGCgMethodAttributes methodsFor: 'recovered'!
errorUnitName
    | recoveredValue0 |
    recoveredValue0 := errorUnitName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200722b8; bytecode file offset 0x96ee04"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitPublic
    ^1
! !

"ASDBase.ic method 0x20072a30; bytecode file offset 0x96f3cc"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitROMConfigurable
    ^3
! !

"ASDBase.ic method 0x20072d10; bytecode file offset 0x96f6d4"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitReentrant
    ^4
! !

"ASDBase.ic method 0x20072eb8; bytecode file offset 0x96f7ac"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitReceiverInArgList
    ^5
! !

"ASDBase.ic method 0x20072f20; bytecode file offset 0x96f8bc"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitReference
    ^6
! !

"ASDBase.ic method 0x200742dc; bytecode file offset 0x970bc8"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitAdditional
    ^7
! !

"ASDBase.ic method 0x2007451c; bytecode file offset 0x970de8"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitGenArgList
    ^8
! !

"ASDBase.ic method 0x200745bc; bytecode file offset 0x970e78"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitUseServiceRoutine
    ^9
! !

"ASDBase.ic method 0x2007466c; bytecode file offset 0x970f98"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitPrototype
    ^10
! !

"ASDBase.ic method 0x20074778; bytecode file offset 0x97102c"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitOptimizeMethodCall
    ^11
! !

"ASDBase.ic method 0x20074808; bytecode file offset 0x9710d4"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitCallSimPrePost
    ^12
! !

"ASDBase.ic method 0x20074878; bytecode file offset 0x971134"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitCreateWrapper
    ^13
! !

"ASDBase.ic method 0x200748e8; bytecode file offset 0x9711ac"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitDtUsage
    ^14
! !

"ASDBase.ic method 0x20074d74; bytecode file offset 0x9757c8"
!SGCgMethodAttributes methodsFor: 'recovered'!
isMdlMethodAttributes
    ^true
! !

"ASDBase.ic method 0x20076a9c; bytecode file offset 0x9757c8"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgMethodAttributes
    ^true
! !

"ASDBase.ic method 0x20078f48; bytecode file offset 0x97580c"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitMessageUsageAllowed
    ^15
! !

"ASDBase.ic method 0x2007911c; bytecode file offset 0x9759d0"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitOSFunction
    ^17
! !

"ASDBase.ic method 0x20079154; bytecode file offset 0x975a30"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitInvokeConcurrently
    ^18
! !

"ASDBase.ic method 0x200791dc; bytecode file offset 0x975a98"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitNeedsIntegerCode
    ^19
! !

"ASDBase.ic method 0x20079274; bytecode file offset 0x975b38"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitNeedsIntegerType
    ^20
! !

"ASDBase.ic method 0x200792ac; bytecode file offset 0x975b70"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitBlockDiagram
    ^21
! !

"ASDBase.ic method 0x20079304; bytecode file offset 0x975bb8"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitReinitializeMethod
    ^22
! !

"ASDBase.ic method 0x2007fb74; bytecode file offset 0x97c428"
!SGCgMethodAttributes methodsFor: 'recovered'!
bitSideEffectFree
    ^25
! !

"ASDBase.ic method 0x2008a3d0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgOptNeedsIntegerCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a450; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgUsePrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a4e0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrGeneratedArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGenArgList.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a4f0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgOptCreateWrapper
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCreateWrapper.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a500; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgUseServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUseServiceRoutine.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a550; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrPublic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPublic.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a5a0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrReceiverInArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReceiverInArgList.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a670; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrOSFunction
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOSFunction.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a740; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgOptimizeMethodCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOptimizeMethodCall.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a760; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrReentrant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReentrant.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a770; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrReinitializeMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReinitializeMethod.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a7b0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrAdditional
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAdditional.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a890; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgOptCallSimPrePost
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCallSimPrePost.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a8a0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrROMConfigurable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitROMConfigurable.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a8e0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgOptNeedsIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a920; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrBlockDiagram
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitBlockDiagram.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a940; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrMessageUsageAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMessageUsageAllowed.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a950; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrSideEffectFree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSideEffectFree.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a980; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrInvokedConcurrently
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInvokeConcurrently.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a9d0; bytecode file offset 0x98729c"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrDtUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDtUsage.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bce4; bytecode file offset 0x9885b4"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrRunnable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == ('Runnable').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bcf0; bytecode file offset 0x9885b4"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == ('Method').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bcfc; bytecode file offset 0x9885b4"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == ('Process').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bd4c; bytecode file offset 0x988610"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrMsgCopyReceiveProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := msgCopyProcess.
    recoveredValue1 := (recoveredValue0) == ('receive').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bd58; bytecode file offset 0x988610"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrMsgCopySendProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := msgCopyProcess.
    recoveredValue1 := (recoveredValue0) == ('send').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008bd9c; bytecode file offset 0x988684"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrModelInlining
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := inlining.
    recoveredValue1 := (self) symbolModelInlining.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bda8; bytecode file offset 0x988684"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrPreprocessorInlining
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := inlining.
    recoveredValue1 := (self) symbolPreprocessorInlining.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bdb4; bytecode file offset 0x988684"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrAutomaticInlining
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := inlining.
    recoveredValue1 := (self) symbolAutomaticInlining.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bdc0; bytecode file offset 0x988684"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrCompilerInlining
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := inlining.
    recoveredValue1 := (self) symbolCompilerInlining.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bdcc; bytecode file offset 0x988684"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrNoInlining
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := inlining.
    recoveredValue1 := (self) symbolNoInlining.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d6c0; bytecode file offset 0x989fc0"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrFPUNone
    (self) floatUsage: (0).
    ^self
! !

"ASDBase.ic method 0x2008d798; bytecode file offset 0x98a0a4"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrFPUSinglePrec
    (self) floatUsage: (1).
    ^self
! !

"ASDBase.ic method 0x2008d870; bytecode file offset 0x98a128"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrFPUDoublePrec
    (self) floatUsage: (2).
    ^self
! !

"ASDBase.ic method 0x2008faf0; bytecode file offset 0x98c3a8"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrFloatUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) floatUsage.
    recoveredValue1 := (recoveredValue0) == (0).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20098e84; bytecode file offset 0x995850"
!SGCgMethodAttributes methodsFor: 'recovered'!
componentAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) returnAttributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) componentAttributes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b09f8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrStandardArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGenArgList.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0a38; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrSideEffectFree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSideEffectFree.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ad8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrReinitializeMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReinitializeMethod.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b68; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b88; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptNeedsStandardType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0bc8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNonROMConfigurable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitROMConfigurable.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0bd8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptCallSimPrePost
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCallSimPrePost.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c98; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoSideEffectFree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSideEffectFree.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0cb8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNonOSFunction
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOSFunction.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0cc8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNonReentrant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReentrant.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0cd8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptNoCallSimPrePost
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCallSimPrePost.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d08; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptCreateNoWrapper
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCreateWrapper.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d68; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrPrivate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPublic.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d88; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoDtUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDtUsage.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d98; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoMessageUsageAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMessageUsageAllowed.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0db8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrMessageUsageAllowed
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMessageUsageAllowed.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0e58; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNotInvokedConcurrently
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInvokeConcurrently.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0eb8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptNeedsStandardCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ed8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptNeedsIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ef8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrROMConfigurable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitROMConfigurable.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f28; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrUseServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUseServiceRoutine.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f38; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrPublic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPublic.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f78; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoOptimizeMethodCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOptimizeMethodCall.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0fd8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrOSFunction
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOSFunction.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1018; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrReceiverInArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReceiverInArgList.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1058; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoUseServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitUseServiceRoutine.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b10e8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrAdditional
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAdditional.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1108; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptNeedsIntegerCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1128; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrGeneratedArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGenArgList.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1188; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrBlockDiagram
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitBlockDiagram.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b11c8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrCanBeInvokedConcurrently
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInvokeConcurrently.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b11f8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgOptCreateWrapper
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCreateWrapper.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1308; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrDtUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDtUsage.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1328; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrNoReceiverInArgList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReceiverInArgList.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b13c8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrUsePrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b13e8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrSpecified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAdditional.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1408; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrReentrant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitReentrant.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b14b8; bytecode file offset 0x9add94"
!SGCgMethodAttributes methodsFor: 'recovered'!
cgAttrOptimizeMethodCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOptimizeMethodCall.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c4fd8; bytecode file offset 0x9c1afc"
!SGCgMethodAttributes methodsFor: 'recovered'!
stackSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stackSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5408; bytecode file offset 0x9c1f64"
!SGCgMethodAttributes methodsFor: 'recovered'!
floatUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    floatUsage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c574c; bytecode file offset 0x9c22c8"
!SGCgMethodAttributes methodsFor: 'recovered'!
directAccessAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    directAccessAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5dc8; bytecode file offset 0x9c2804"
!SGCgMethodAttributes methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    position := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c60dc; bytecode file offset 0x9c29e8"
!SGCgMethodAttributes methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c637c; bytecode file offset 0x9c2dd0"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    symbol := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6850; bytecode file offset 0x9c3164"
!SGCgMethodAttributes methodsFor: 'recovered'!
minimumStartTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minimumStartTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fb4; bytecode file offset 0x9c38d8"
!SGCgMethodAttributes methodsFor: 'recovered'!
errorUnitName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorUnitName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2a04; bytecode file offset 0x9df430"
!SGCgMethodAttributes methodsFor: 'recovered'!
isCgAttrInline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrCompilerInlining.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrModelInlining.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a8b4; bytecode file offset 0xa271a0"
!SGCgMethodAttributes methodsFor: 'recovered'!
returnAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := returnAttributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgVarAttributes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            returnAttributes := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := returnAttributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20152514; bytecode file offset 0xa4edd0"
!SGCgMethodAttributes methodsFor: 'recovered'!
symbol
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := symbol.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := symbol.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20154f04; bytecode file offset 0xa517cc"
!SGCgMethodAttributes methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super errLabel: (recoveredValue0).
    recoveredValue1 := (self) returnAttributes.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('return/') , (recoveredValue2).
    (recoveredValue1) errLabel: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2040fab0; bytecode file offset 0xd0c3e0"
!SGCgMethodAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    (self) cgAttrPublic.
    (self) cgAttrNoInlining.
    (self) cgAttrNoSideEffectFree.
    (self) cgAttrFPUDoublePrec.
    (self) cgAttrReentrant.
    (self) cgAttrNonROMConfigurable.
    (self) cgAttrReceiverInArgList.
    (self) cgAttrAdditional.
    (self) cgAttrStandardArgList.
    (self) cgAttrNoUseServiceRoutine.
    (self) cgAttrNoPrototype.
    (self) cgAttrOptimizeMethodCall.
    (self) cgAttrNoDtUsage.
    (self) cgAttrNoMessageUsageAllowed.
    (self) cgAttrNonOSFunction.
    (self) cgAttrMethod.
    (self) cgAttrNotInvokedConcurrently.
    (self) cgOptNeedsIntegerType.
    (self) cgOptNeedsIntegerCode.
    (self) cgOptCreateWrapper.
    (self) cgOptCallSimPrePost.
    (self) memoryClass: ('Default').
    (self) stackSize: ('12').
    (self) floatUsage: (2).
    (self) position: (-1).
    (self) minimumStartTime: (#[0 0 0 0 0 0 0 0]).
    ^self
! !

"ASDBase.ic method 0x205707e8; bytecode file offset 0xe6d120"
!SGCgMethodAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('   inline: ').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (self) inliningSymbol.
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) nextPutAll: ('   side-effect-free: ').
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (self) isCgAttrSideEffectFree.
    recoveredValue11 := (recoveredValue10) printString.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) nextPutAll: ('   public: ').
    recoveredValue14 := recoveredValue2.
    recoveredValue15 := (self) isCgAttrPublic.
    recoveredValue16 := (recoveredValue15) printString.
    (recoveredValue14) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) nextPutAll: ('   messages allowed: ').
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := (self) isCgAttrMessageUsageAllowed.
    recoveredValue21 := (recoveredValue20) printString.
    (recoveredValue19) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) nextPutAll: ('   process: ').
    recoveredValue24 := recoveredValue2.
    recoveredValue25 := (self) isCgAttrProcess.
    recoveredValue26 := (recoveredValue25) printString.
    (recoveredValue24) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) nextPutAll: ('   additional (or specified): ').
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := (self) isCgAttrAdditional.
    recoveredValue31 := (recoveredValue30) printString.
    (recoveredValue29) nextPutAll: (recoveredValue31).
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) nextPutAll: ('   ROM configurable: ').
    recoveredValue34 := recoveredValue2.
    recoveredValue35 := (self) isCgAttrROMConfigurable.
    recoveredValue36 := (recoveredValue35) printString.
    (recoveredValue34) nextPutAll: (recoveredValue36).
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) cr.
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) nextPutAll: ('   direct access: ').
    recoveredValue39 := recoveredValue2.
    recoveredValue40 := (self) isCgDirectAccessMethod.
    recoveredValue41 := (recoveredValue40) printString.
    (recoveredValue39) nextPutAll: (recoveredValue41).
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) cr.
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) nextPutAll: ('   optimize method call: ').
    recoveredValue44 := recoveredValue2.
    recoveredValue45 := (self) isCgOptimizeMethodCall.
    recoveredValue46 := (recoveredValue45) printString.
    (recoveredValue44) nextPutAll: (recoveredValue46).
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) cr.
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) nextPutAll: ('   uses service routines: ').
    recoveredValue49 := recoveredValue2.
    recoveredValue50 := (self) isCgUseServiceRoutine.
    recoveredValue51 := (recoveredValue50) printString.
    (recoveredValue49) nextPutAll: (recoveredValue51).
    recoveredValue52 := recoveredValue2.
    (recoveredValue52) cr.
    recoveredValue53 := recoveredValue2.
    (recoveredValue53) nextPutAll: ('   uses prototype: ').
    recoveredValue54 := recoveredValue2.
    recoveredValue55 := (self) isCgUsePrototype.
    recoveredValue56 := (recoveredValue55) printString.
    (recoveredValue54) nextPutAll: (recoveredValue56).
    recoveredValue57 := recoveredValue2.
    (recoveredValue57) cr.
    recoveredValue58 := recoveredValue2.
    (recoveredValue58) nextPutAll: ('   stackSize: ').
    recoveredValue59 := recoveredValue2.
    recoveredValue60 := (self) stackSize.
    recoveredValue61 := (recoveredValue60) printString.
    (recoveredValue59) nextPutAll: (recoveredValue61).
    recoveredValue62 := recoveredValue2.
    (recoveredValue62) cr.
    recoveredValue63 := recoveredValue2.
    (recoveredValue63) nextPutAll: ('   block diagram: ').
    recoveredValue64 := recoveredValue2.
    recoveredValue65 := (self) isCgAttrBlockDiagram.
    recoveredValue66 := (recoveredValue65) printString.
    (recoveredValue64) nextPutAll: (recoveredValue66).
    (recoveredValue2) cr.
    recoveredValue67 := (self) returnAttributes.
    recoveredValue68 := [
    | recoveredBlock229Value0 recoveredBlock229Value1 recoveredBlock229Value2 |
    recoveredBlock229Value0 := (self) returnAttributes.
    recoveredBlock229Value1 := recoveredArg1.
    recoveredBlock229Value2 := (recoveredBlock229Value0) printOn: (recoveredBlock229Value1).
    recoveredBlock229Value2
].
    (recoveredValue67) notNil: (recoveredValue68).
    ^self
! !

