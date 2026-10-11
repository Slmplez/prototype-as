"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000c58; bytecode file offset 0x8ffcfc"
!ASAP2RT class methodsFor: 'recovered'!
_PRAGMA_ASAP2Constants
    ^self
! !

"ASDBase.ic method 0x20001528; bytecode file offset 0x8ffcfc"
!ASAP2RT class methodsFor: 'recovered'!
_PRAGMA_ASAP2RTNlsPool
    ^self
! !

"ASDBase.ic method 0x20024ba8; bytecode file offset 0x92209c"
!ASAP2RT class methodsFor: 'recovered'!
toBeLoadedCodeString
    ^'| loader pool1 pool2  pool | 
(Smalltalk includesKey: #ASAP2Constants) 
	ifTrue: [(Smalltalk at: #ASAP2Constants) isNil
							ifTrue: [ Smalltalk declarePoolDictionary: ''ASAP2Constants''  ].
					]
	ifFalse: [ Smalltalk declarePoolDictionary: ''ASAP2Constants'' .
					].
pool := Smalltalk at: #ASAP2Constants .
pool declareVariable: ''MSB_FIRST''.
pool declareVariable: ''MSB_LAST''.
pool declareVariable: ''LITTLE_ENDIAN''.
pool declareVariable: ''BIG_ENDIAN''.
'
! !

"ASDBase.ic method 0x2005bf74; bytecode file offset 0x958ab0"
!ASAP2RT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := ASAP2BaseObject.
    (recoveredValue0) errorLogOff.
    ^self
! !

"ASDBase.ic method 0x20246c78; bytecode file offset 0xb43560"
!ASAP2RT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) Persistent: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ASAP2InterfaceData.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'DBMethodLinker'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := DBMethodLinker.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ASAP2Project.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ASAP2Version.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) Version: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

