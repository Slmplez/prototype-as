"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000e088; bytecode file offset 0x90ab8c"
!ASDSeparateFileSnippetHandle methodsFor: 'recovered'!
store: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) storeInSeparateFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20060be8; bytecode file offset 0x95d4a4"
!ASDSeparateFileSnippetHandle methodsFor: 'recovered'!
completeFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := key.
    recoveredValue2 := (recoveredValue0) completeFilePath: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202dffe8; bytecode file offset 0xbdc8dc"
!ASDSeparateFileSnippetHandle methodsFor: 'recovered'!
storeInSeparateFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := ByteArray.
    recoveredValue2 := (recoveredValue1) new: (10240).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := ObjectDumper.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredLocal3.
    (recoveredValue5) unload: (self) intoStream: (recoveredValue6).
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue7) contents.
    recoveredValue9 := (recoveredValue8) simpleEncryptWithKey: (2943591322).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := ETASOSHandle.
    recoveredValue11 := (self) completeFilePath.
    recoveredValue12 := (recoveredValue10) createFile: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) writeBytes: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue15) closeFile.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) size.
    ^recoveredValue17
! !

