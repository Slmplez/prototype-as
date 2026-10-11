"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200009e0; bytecode file offset 0x8ffcfc"
!SGWriteStreamDummy methodsFor: 'recovered'!
stream
    ^self
! !

"ASDBase.ic method 0x200023d8; bytecode file offset 0x8ffcfc"
!SGWriteStreamDummy methodsFor: 'recovered'!
cr
    ^self
! !

"ASDBase.ic method 0x20002818; bytecode file offset 0x8ffcfc"
!SGWriteStreamDummy methodsFor: 'recovered'!
createNewInstance
    ^self
! !

"ASDBase.ic method 0x20002cd0; bytecode file offset 0x8ffcfc"
!SGWriteStreamDummy methodsFor: 'recovered'!
flush
    ^self
! !

"ASDBase.ic method 0x20003110; bytecode file offset 0x8ffcfc"
!SGWriteStreamDummy methodsFor: 'recovered'!
newline
    ^self
! !

"ASDBase.ic method 0x20004540; bytecode file offset 0x90206c"
!SGWriteStreamDummy methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004fc8; bytecode file offset 0x90206c"
!SGWriteStreamDummy methodsFor: 'recovered'!
nextPutStream: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005348; bytecode file offset 0x90206c"
!SGWriteStreamDummy methodsFor: 'recovered'!
nextPut: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200053e0; bytecode file offset 0x90206c"
!SGWriteStreamDummy methodsFor: 'recovered'!
nextPutAllFromStream: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006204; bytecode file offset 0x902de8"
!SGWriteStreamDummy methodsFor: 'recovered'!
nextPutAll: recoveredArg1 fillChar: recoveredArg2 to: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20007e38; bytecode file offset 0x908be4"
!SGWriteStreamDummy methodsFor: 'recovered'!
contentsOrFilename
    | recoveredValue0 |
    recoveredValue0 := (self) contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e5b4; bytecode file offset 0x92209c"
!SGWriteStreamDummy methodsFor: 'recovered'!
contents
    ^''
! !

"ASDBase.ic method 0x2005b7fc; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asMonitorStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b98c; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asAnsiCCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAnsiCCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b9fc; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asWrappedUpCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGWrappedUpCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ba2c; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asPerlCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGPerlCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bb8c; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asXmlCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGXmlCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bc0c; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asExternalMakeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExternalMakeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bc1c; bytecode file offset 0x958548"
!SGWriteStreamDummy methodsFor: 'recovered'!
asESDLCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGESDLCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071b94; bytecode file offset 0x96e578"
!SGWriteStreamDummy methodsFor: 'recovered'!
numOfLines
    ^0
! !

"ASDBase.ic method 0x20076b04; bytecode file offset 0x9757c8"
!SGWriteStreamDummy methodsFor: 'recovered'!
isEmpty
    ^true
! !

"ASDBase.ic method 0x20091750; bytecode file offset 0x98e0cc"
!SGWriteStreamDummy methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200a247c; bytecode file offset 0x99ed48"
!SGWriteStreamDummy methodsFor: 'recovered'!
asAnnotatedCodeStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGAnnotatedCodeStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWithStream: (self) withExpander: (recoveredValue1).
    ^recoveredValue2
! !

