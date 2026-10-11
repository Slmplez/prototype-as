"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001631c; bytecode file offset 0x92209c"
!SGFileOutObject methodsFor: 'recovered'!
writingFilesTitle
    ^'Writing files to directory'
! !

"ASDBase.ic method 0x20061348; bytecode file offset 0x95e838"
!SGFileOutObject methodsFor: 'recovered'!
asapFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLabel.
    recoveredValue1 := (recoveredValue0) , ('.a2l').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062a8c; bytecode file offset 0x95f8b0"
!SGFileOutObject methodsFor: 'recovered'!
asapFullPathFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) destinationPath.
    recoveredValue1 := (self) asapFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200703a4; bytecode file offset 0x96ce40"
!SGFileOutObject methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timestamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070730; bytecode file offset 0x96d06c"
!SGFileOutObject methodsFor: 'recovered'!
preCompile
    | recoveredValue0 |
    recoveredValue0 := preCompile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070884; bytecode file offset 0x96d218"
!SGFileOutObject methodsFor: 'recovered'!
projectLabel
    | recoveredValue0 |
    recoveredValue0 := projectLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007da1c; bytecode file offset 0x97c330"
!SGFileOutObject methodsFor: 'recovered'!
supportsPrePostBuildOperation
    ^false
! !

"ASDBase.ic method 0x200c6b74; bytecode file offset 0x9c3470"
!SGFileOutObject methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timestamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c48; bytecode file offset 0x9c36ec"
!SGFileOutObject methodsFor: 'recovered'!
preCompile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preCompile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6e5c; bytecode file offset 0x9c38d8"
!SGFileOutObject methodsFor: 'recovered'!
projectLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5b90; bytecode file offset 0x9d247c"
!SGFileOutObject methodsFor: 'recovered'!
initialize
    super initialize.
    preCompile := false.
    ^self
! !

