"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024c50; bytecode file offset 0x92209c"
!SGMonitorStream methodsFor: 'recovered'!
warningCategory
    ^'WARNING'
! !

"ASDBase.ic method 0x2004fd4c; bytecode file offset 0x94d048"
!SGMonitorStream methodsFor: 'recovered'!
endError
    (self) messageMarker.
    ^self
! !

"ASDBase.ic method 0x200500a0; bytecode file offset 0x94d048"
!SGMonitorStream methodsFor: 'recovered'!
closeSourceObject
    (self) closeFileList.
    ^self
! !

"ASDBase.ic method 0x20050454; bytecode file offset 0x94d048"
!SGMonitorStream methodsFor: 'recovered'!
endWarning
    (self) messageMarker.
    ^self
! !

"ASDBase.ic method 0x20064184; bytecode file offset 0x961970"
!SGMonitorStream methodsFor: 'recovered'!
endDeclFile
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20064954; bytecode file offset 0x961970"
!SGMonitorStream methodsFor: 'recovered'!
endCategoryDecl
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) decIndent.
    ^self
! !

"ASDBase.ic method 0x20069e38; bytecode file offset 0x966bdc"
!SGMonitorStream methodsFor: 'recovered'!
tempStream
    | recoveredValue0 |
    recoveredValue0 := tempStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200847f8; bytecode file offset 0x981ca4"
!SGMonitorStream methodsFor: 'recovered'!
openSourceObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) openFileList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a0ffc; bytecode file offset 0x99db8c"
!SGMonitorStream methodsFor: 'recovered'!
operationAborted
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('!!!!!! Operation ABORTED !!!!!!').
    ^self
! !

"ASDBase.ic method 0x200a1254; bytecode file offset 0x99db8c"
!SGMonitorStream methodsFor: 'recovered'!
messageMarker
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('!!!!!! =====================================================').
    ^self
! !

"ASDBase.ic method 0x200a12a4; bytecode file offset 0x99db8c"
!SGMonitorStream methodsFor: 'recovered'!
notUpToDateMessage
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (' --- Code is NOT up to date').
    ^self
! !

"ASDBase.ic method 0x200a91fc; bytecode file offset 0x9a5d18"
!SGMonitorStream methodsFor: 'recovered'!
endTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) endTask: (recoveredValue0) info: ('ended').
    ^self
! !

"ASDBase.ic method 0x200adbb8; bytecode file offset 0x9aa484"
!SGMonitorStream methodsFor: 'recovered'!
template: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) bindWithArguments: (recoveredValue1).
    (self) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b3774; bytecode file offset 0x9b0070"
!SGMonitorStream methodsFor: 'recovered'!
endDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x200dadc8; bytecode file offset 0x9d7684"
!SGMonitorStream methodsFor: 'recovered'!
declIdentifier: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    (self) declLabel: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) declIdentifier: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dc36c; bytecode file offset 0x9d8c38"
!SGMonitorStream methodsFor: 'recovered'!
fileName: recoveredArg1 index: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) fileName: (recoveredValue0) extension: ('') index: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dc7b0; bytecode file offset 0x9d90fc"
!SGMonitorStream methodsFor: 'recovered'!
ignored: recoveredArg1 identifier: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) ignored: (recoveredValue0) identifier: (recoveredValue1) reason: ('identifier unknown').
    ^self
! !

"ASDBase.ic method 0x200dc7c0; bytecode file offset 0x9d90fc"
!SGMonitorStream methodsFor: 'recovered'!
message: recoveredArg1 category: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) message: (recoveredValue0) category: (recoveredValue1) args: (#()).
    ^self
! !

"ASDBase.ic method 0x200e35fc; bytecode file offset 0x9e0028"
!SGMonitorStream methodsFor: 'recovered'!
beginError
    | recoveredValue0 |
    (self) messageMarker.
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('ERROR: ').
    ^self
! !

"ASDBase.ic method 0x200e36d4; bytecode file offset 0x9e0028"
!SGMonitorStream methodsFor: 'recovered'!
beginWarning
    | recoveredValue0 |
    (self) messageMarker.
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('WARNING: ').
    ^self
! !

"ASDBase.ic method 0x200e6a7c; bytecode file offset 0x9e333c"
!SGMonitorStream methodsFor: 'recovered'!
versionInfo: recoveredArg1
    | recoveredValue0 |
    (self) newlinePutAll: ('Version: ').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fc174; bytecode file offset 0x9f8a68"
!SGMonitorStream methodsFor: 'recovered'!
nextPutPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (' "') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('"').
    (self) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fc18c; bytecode file offset 0x9f8a68"
!SGMonitorStream methodsFor: 'recovered'!
command: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (' <') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    (self) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fc1a4; bytecode file offset 0x9f8a68"
!SGMonitorStream methodsFor: 'recovered'!
newlineCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (' <') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    (self) newlinePutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200feb98; bytecode file offset 0x9fb480"
!SGMonitorStream methodsFor: 'recovered'!
hint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' --- ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20101fa4; bytecode file offset 0x9fe864"
!SGMonitorStream methodsFor: 'recovered'!
message: recoveredArg1 category: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    (self) message: (recoveredValue0) category: (recoveredValue1) args: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010d7cc; bytecode file offset 0xa0a090"
!SGMonitorStream methodsFor: 'recovered'!
error: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) beginError.
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    (self) endError.
    ^self
! !

"ASDBase.ic method 0x20133458; bytecode file offset 0xa2fd20"
!SGMonitorStream methodsFor: 'recovered'!
beginCategoryDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: (' declarations').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x20148048; bytecode file offset 0xa4490c"
!SGMonitorStream methodsFor: 'recovered'!
message: recoveredArg1 category: recoveredArg2 args: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    (self) newlinePutAll: (recoveredValue0).
    (self) nextPutAll: (': ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    (self) template: (recoveredValue1) args: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20155128; bytecode file offset 0xa51a04"
!SGMonitorStream methodsFor: 'recovered'!
declLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' "').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x20155140; bytecode file offset 0xa51a04"
!SGMonitorStream methodsFor: 'recovered'!
declIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' [').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: (']').
    ^self
! !

"ASDBase.ic method 0x20165208; bytecode file offset 0xa61ad0"
!SGMonitorStream methodsFor: 'recovered'!
warning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) messageMarker.
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('WARNING: ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    (self) messageMarker.
    ^self
! !

"ASDBase.ic method 0x20170d88; bytecode file offset 0xa6d650"
!SGMonitorStream methodsFor: 'recovered'!
closeFileList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tempStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    (recoveredValue0) decIndent.
    recoveredValue2 := (self) stream.
    recoveredValue3 := (self) tempStream.
    recoveredValue4 := (recoveredValue3) contents.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    tempStream := nil.
    ^self
! !

"ASDBase.ic method 0x20176f0c; bytecode file offset 0xa737d8"
!SGMonitorStream methodsFor: 'recovered'!
startInternalDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newline.
    recoveredValue1 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: (' defined internally - no declaration file').
    (recoveredValue2) incIndent.
    ^self
! !

"ASDBase.ic method 0x20178d7c; bytecode file offset 0xa7564c"
!SGMonitorStream methodsFor: 'recovered'!
monitoringResultErrors: recoveredArg1 warnings: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue2) , (' errors, ').
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (' warnings').
    recoveredValue8 := (recoveredValue7) withCrLfs.
    (recoveredValue0) nextPutAll: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20185f00; bytecode file offset 0xa827d0"
!SGMonitorStream methodsFor: 'recovered'!
firstLetterUppercase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue3) asUppercase.
    (recoveredValue1) nextPut: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) copyFrom: (2) to: (recoveredValue7).
    (recoveredValue0) nextPutAll: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2018899c; bytecode file offset 0xa85268"
!SGMonitorStream methodsFor: 'recovered'!
supports: recoveredArg1 identifier: recoveredArg2 label: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('Supports ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    (self) declLabel: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (self) declIdentifier: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201cb588; bytecode file offset 0xac7e5c"
!SGMonitorStream methodsFor: 'recovered'!
openFileList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) asMonitorStream.
    tempStream := recoveredValue2.
    recoveredValue3 := (self) tempStream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) incIndent.
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) newlinePutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) nextPutAll: (':').
    (recoveredValue3) incIndent.
    ^self
! !

"ASDBase.ic method 0x201e9724; bytecode file offset 0xae5ff0"
!SGMonitorStream methodsFor: 'recovered'!
memoryClass: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (': ').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (recoveredValue0) nextPutAll: (' bytes').
    ^self
! !

"ASDBase.ic method 0x20206dd4; bytecode file offset 0xb036a8"
!SGMonitorStream methodsFor: 'recovered'!
openTask: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) newlinePutAll: ('### ').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: (' started').
    recoveredValue6 := (self) stream.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) releaseGetContents.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20240cb0; bytecode file offset 0xb3d584"
!SGMonitorStream methodsFor: 'recovered'!
startDeclaration: recoveredArg1 fileName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newline.
    recoveredValue1 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: (' declaration file').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) nextPutAll: (' "').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) nextPutAll: ('"').
    (recoveredValue2) incIndent.
    ^self
! !

"ASDBase.ic method 0x2024bb44; bytecode file offset 0xb48414"
!SGMonitorStream methodsFor: 'recovered'!
toolType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'OS'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'operating system'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'CC'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'compiler'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202581ec; bytecode file offset 0xb54ac0"
!SGMonitorStream methodsFor: 'recovered'!
ignored: recoveredArg1 identifier: recoveredArg2 reason: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) beginWarning.
    (self) nextPutAll: ('Entry ').
    recoveredValue0 := recoveredArg2.
    (self) declIdentifier: (recoveredValue0).
    (self) nextPutAll: (' ignored ').
    recoveredValue1 := recoveredArg1.
    (self) hint: (recoveredValue1).
    (self) nextPutAll: (' ').
    recoveredValue2 := recoveredArg3.
    (self) nextPutAll: (recoveredValue2).
    (self) endWarning.
    ^self
! !

"ASDBase.ic method 0x202635d4; bytecode file offset 0xb5feac"
!SGMonitorStream methodsFor: 'recovered'!
missingDecl: recoveredArg1 identifier: recoveredArg2 label: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) beginError.
    recoveredValue0 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue0).
    (self) nextPutAll: (' ').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) declIdentifier: (recoveredValue1) label: (recoveredValue2).
    (self) nextPutAll: (' misses declaration file ').
    recoveredValue3 := recoveredArg1.
    (self) hint: (recoveredValue3).
    (self) nextPutAll: (' integration will not work properly').
    (self) endError.
    ^self
! !

"ASDBase.ic method 0x2026ee44; bytecode file offset 0xb6b714"
!SGMonitorStream methodsFor: 'recovered'!
fileName: recoveredArg1 extension: recoveredArg2 index: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) fillSpaceTo: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271db0; bytecode file offset 0xb6e688"
!SGMonitorStream methodsFor: 'recovered'!
endTask: recoveredArg1 info: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) newlinePutAll: ('### ').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) nextPutAll: (' ').
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    (recoveredValue1) nextPutAll: (' --- ').
    recoveredValue9 := (self) stream.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) releaseGetContents.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20285e2c; bytecode file offset 0xb82704"
!SGMonitorStream methodsFor: 'recovered'!
changed: recoveredArg1 label: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) beginWarning.
    recoveredValue0 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue0).
    (self) nextPutAll: (' label').
    recoveredValue1 := recoveredArg2.
    (self) declLabel: (recoveredValue1).
    (self) nextPutAll: (' already used for ').
    recoveredValue2 := recoveredArg1.
    (self) nextPutAll: (recoveredValue2).
    (self) hint: ('changed label to').
    recoveredValue3 := recoveredArg3.
    (self) declLabel: (recoveredValue3).
    (self) endWarning.
    ^self
! !

"ASDBase.ic method 0x2028d938; bytecode file offset 0xb8a210"
!SGMonitorStream methodsFor: 'recovered'!
newlinePutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    tempStream := recoveredValue1.
    recoveredValue2 := tempStream.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Cr.
    (recoveredValue3) nextPut: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Lf.
    (recoveredValue5) nextPut: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) stream.
    recoveredValue9 := (recoveredValue8) indentString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue10).
    recoveredValue11 := tempStream.
    recoveredValue12 := (recoveredValue11) releaseGetContents.
    (self) nextPutAll: (recoveredValue12).
    tempStream := nil.
    ^self
! !

"ASDBase.ic method 0x2029053c; bytecode file offset 0xb8ce14"
!SGMonitorStream methodsFor: 'recovered'!
startDeclIdentifier: recoveredArg1 label: recoveredArg2 addOn: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'ASCET-'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) declIdentifier: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ':'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) incIndent.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202abaf4; bytecode file offset 0xba83d0"
!SGMonitorStream methodsFor: 'recovered'!
matchesBuildIn: recoveredArg1 identifier: recoveredArg2 label: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) beginError.
    recoveredValue0 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue0).
    (self) nextPutAll: (' identifier').
    recoveredValue1 := recoveredArg2.
    (self) declIdentifier: (recoveredValue1).
    (self) nextPutAll: (' already used for build-in ').
    recoveredValue2 := recoveredArg1.
    (self) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    (self) declLabel: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) hint: (recoveredValue4).
    (self) nextPutAll: (' declaration will be ignored').
    (self) endError.
    ^self
! !

"ASDBase.ic method 0x202b572c; bytecode file offset 0xbb2000"
!SGMonitorStream methodsFor: 'recovered'!
noSupportLinking: recoveredArg1 mapFileCreation: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'Restrictions: '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) incIndent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'linking not supported'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'map file creation not supported'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) decIndent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b5ec4; bytecode file offset 0xbb2798"
!SGMonitorStream methodsFor: 'recovered'!
startTime: recoveredArg1 endTime: recoveredArg2 duration: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('  ').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: (' (started at: ').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) printString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) nextPutAll: (' ended at: ').
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) printString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x2032d414; bytecode file offset 0xc29cf8"
!SGMonitorStream methodsFor: 'recovered'!
matches: recoveredArg1 identifier: recoveredArg2 label: recoveredArg3 declFile: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) beginError.
    recoveredValue0 := recoveredArg1.
    (self) firstLetterUppercase: (recoveredValue0).
    (self) nextPutAll: (' type').
    recoveredValue1 := recoveredArg2.
    (self) declIdentifier: (recoveredValue1).
    (self) nextPutAll: (' already used for ').
    recoveredValue2 := recoveredArg1.
    (self) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    (self) declLabel: (recoveredValue3).
    (self) nextPutAll: (' (declared in "').
    recoveredValue4 := recoveredArg4.
    (self) nextPutAll: (recoveredValue4).
    (self) nextPutAll: ('")').
    recoveredValue5 := recoveredArg1.
    (self) hint: (recoveredValue5).
    (self) nextPutAll: (' declaration will be ignored').
    (self) endError.
    ^self
! !

