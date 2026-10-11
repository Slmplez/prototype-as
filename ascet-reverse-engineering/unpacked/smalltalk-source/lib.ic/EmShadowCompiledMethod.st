"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000020; bytecode file offset 0x3c0a8"
!EmShadowCompiledMethod methodsFor: 'recovered'!
consistentMethod
    ^self
! !

"lib.ic method 0x200009e8; bytecode file offset 0x3cba0"
!EmShadowCompiledMethod methodsFor: 'recovered'!
filePosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) filePointer.
    recoveredValue1 := (recoveredValue0) asFilePosition.
    ^recoveredValue1
! !

"lib.ic method 0x20000a48; bytecode file offset 0x3cba0"
!EmShadowCompiledMethod methodsFor: 'recovered'!
signature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) signature.
    ^recoveredValue1
! !

"lib.ic method 0x20001a14; bytecode file offset 0x3da5c"
!EmShadowCompiledMethod methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) signature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) printOn: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200022b4; bytecode file offset 0x3e2dc"
!EmShadowCompiledMethod methodsFor: 'recovered'!
methodSignature
    | recoveredValue0 |
    recoveredValue0 := super signature.
    ^recoveredValue0
! !

"lib.ic method 0x20002450; bytecode file offset 0x3e480"
!EmShadowCompiledMethod methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := itsApplication.
    ^recoveredValue0
! !

"lib.ic method 0x200024e8; bytecode file offset 0x3e508"
!EmShadowCompiledMethod methodsFor: 'recovered'!
filePointer
    | recoveredValue0 |
    recoveredValue0 := filePointer.
    ^recoveredValue0
! !

"lib.ic method 0x20002a44; bytecode file offset 0x3eaac"
!EmShadowCompiledMethod methodsFor: 'recovered'!
isLoaded
    ^false
! !

"lib.ic method 0x20002ce4; bytecode file offset 0x3ed04"
!EmShadowCompiledMethod methodsFor: 'recovered'!
filePointer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    filePointer := recoveredValue1.
    ^recoveredValue0
! !

"lib.ic method 0x20003a78; bytecode file offset 0x3facc"
!EmShadowCompiledMethod methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new.
    (self) bytecodes: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20004898; bytecode file offset 0x408b8"
!EmShadowCompiledMethod methodsFor: 'recovered'!
application: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itsApplication := recoveredValue0.
    ^self
! !

"lib.ic method 0x200048cc; bytecode file offset 0x408fc"
!EmShadowCompiledMethod methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004f14; bytecode file offset 0x40f44"
!EmShadowCompiledMethod methodsFor: 'recovered'!
statusBits: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatEMc.
    recoveredValue1 := (recoveredValue0) residentMsg: ('MxEMc65').
    (self) error: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20007bd0; bytecode file offset 0x43bf8"
!EmShadowCompiledMethod methodsFor: 'recovered'!
isResident
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) resident.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePosition.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007cf8; bytecode file offset 0x43d20"
!EmShadowCompiledMethod methodsFor: 'recovered'!
timeStamp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := timeStamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super timeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            timeStamp := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := timeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20008d2c; bytecode file offset 0x44d60"
!EmShadowCompiledMethod methodsFor: 'recovered'!
resident
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009d24; bytecode file offset 0x45d60"
!EmShadowCompiledMethod methodsFor: 'recovered'!
description
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'MxEMc9'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super description.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b5d0; bytecode file offset 0x47614"
!EmShadowCompiledMethod methodsFor: 'recovered'!
sourceString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'MxEMc64'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super sourceString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20030cd0; bytecode file offset 0x6cd8c"
!EmShadowCompiledMethod methodsFor: 'recovered'!
load
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) resident.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeSelector: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoaded.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentApplication.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 151.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoaded.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefinedIn: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 152.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodClass.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAdd: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) modifyIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) record.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Stack0 recoveredBlock195Stack1 recoveredBlock195Stack2 recoveredBlock195Stack3 recoveredBlock195Stack4 recoveredBlock195Stack5 recoveredBlock195PC recoveredBlock195Step recoveredBlock195Done recoveredBlock195Result |
    recoveredBlock195Stack0 := self.
    recoveredBlock195PC := 202.
    recoveredBlock195Done := false.
    [recoveredBlock195Done not] whileTrue: [
        recoveredBlock195Step := recoveredBlock195PC.
        recoveredBlock195Step = 202 ifTrue: [
            recoveredBlock195Stack1 := recoveredBlock195Arg1.
            recoveredBlock195PC := 203.
        ].
        recoveredBlock195Step = 203 ifTrue: [
            (recoveredBlock195Stack1 ~~ nil) ifTrue: [recoveredBlock195PC := 208] ifFalse: [recoveredBlock195PC := 206].
        ].
        recoveredBlock195Step = 206 ifTrue: [
            recoveredBlock195Stack1 := false.
            recoveredBlock195PC := 207.
        ].
        recoveredBlock195Step = 207 ifTrue: [
            ^recoveredBlock195Stack1
        ].
        recoveredBlock195Step = 208 ifTrue: [
            recoveredBlock195Stack1 := recoveredLocal2.
            recoveredBlock195PC := 211.
        ].
        recoveredBlock195Step = 211 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 212.
        ].
        recoveredBlock195Step = 212 ifTrue: [
            recoveredBlock195Stack3 := Transcript.
            recoveredBlock195PC := 214.
        ].
        recoveredBlock195Step = 214 ifTrue: [
            recoveredBlock195Stack4 := [
    ^false
].
            recoveredBlock195PC := 222.
        ].
        recoveredBlock195Step = 222 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) basicCompile: (recoveredBlock195Stack2) notifying: (recoveredBlock195Stack3) ifFail: (recoveredBlock195Stack4).
            recoveredBlock195PC := 225.
        ].
        recoveredBlock195Step = 225 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Stack1.
            recoveredBlock195PC := 226.
        ].
        recoveredBlock195Step = 226 ifTrue: [
            recoveredBlock195Stack3 := self.
            recoveredBlock195PC := 227.
        ].
        recoveredBlock195Step = 227 ifTrue: [
            recoveredBlock195Stack3 := (recoveredBlock195Stack3) filePointer.
            recoveredBlock195PC := 228.
        ].
        recoveredBlock195Step = 228 ifTrue: [
            (recoveredBlock195Stack2) filePointer: (recoveredBlock195Stack3).
            recoveredBlock195PC := 230.
        ].
        recoveredBlock195Step = 230 ifTrue: [
            recoveredBlock195Result := recoveredBlock195Stack1.
            recoveredBlock195Done := true.
        ].
    ].
    recoveredBlock195Result
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock231Value0 recoveredBlock231Value1 |
    recoveredBlock231Value0 := [:recoveredBlock231Block238Arg1 | 
    | recoveredBlock231Block238Value0 recoveredBlock231Block238Value1 recoveredBlock231Block238Value2 recoveredBlock231Block238Value3 recoveredBlock231Block238Value4 |
    recoveredBlock231Block238Value0 := recoveredBlock231Block238Arg1.
    recoveredBlock231Block238Value1 := recoveredLocal2.
    recoveredBlock231Block238Value2 := [
    | recoveredBlock231Block238Block250Value0 recoveredBlock231Block238Block250Value1 recoveredBlock231Block238Block250Value2 recoveredBlock231Block238Block250Value3 recoveredBlock231Block238Block250Value4 recoveredBlock231Block238Block250Value5 |
    recoveredBlock231Block238Block250Value0 := recoveredBlock231Block238Arg1.
    recoveredBlock231Block238Block250Value1 := Array.
    recoveredBlock231Block238Block250Value2 := (self) methodSignature.
    recoveredBlock231Block238Block250Value3 := (recoveredBlock231Block238Block250Value1) with: (recoveredBlock231Block238Block250Value2).
    recoveredBlock231Block238Block250Value4 := [
    ^false
].
    recoveredBlock231Block238Block250Value5 := (recoveredBlock231Block238Block250Value0) stopAndReport: (8) withParms: (recoveredBlock231Block238Block250Value3) exitUsing: (recoveredBlock231Block238Block250Value4).
    recoveredBlock231Block238Block250Value5
].
    recoveredBlock231Block238Value3 := [
    | recoveredBlock231Block238Block280Value0 recoveredBlock231Block238Block280Value1 recoveredBlock231Block238Block280Value2 recoveredBlock231Block238Block280Value3 recoveredBlock231Block238Block280Value4 recoveredBlock231Block238Block280Value5 |
    recoveredBlock231Block238Block280Value0 := recoveredBlock231Block238Arg1.
    recoveredBlock231Block238Block280Value1 := Array.
    recoveredBlock231Block238Block280Value2 := (self) methodSignature.
    recoveredBlock231Block238Block280Value3 := (recoveredBlock231Block238Block280Value1) with: (recoveredBlock231Block238Block280Value2).
    recoveredBlock231Block238Block280Value4 := [
    ^false
].
    recoveredBlock231Block238Block280Value5 := (recoveredBlock231Block238Block280Value0) stopAndReport: (8) withParms: (recoveredBlock231Block238Block280Value3) exitUsing: (recoveredBlock231Block238Block280Value4).
    recoveredBlock231Block238Block280Value5
].
    recoveredBlock231Block238Value4 := (recoveredBlock231Block238Value0) recompileIn: (recoveredBlock231Block238Value1) ifNoSource: (recoveredBlock231Block238Value2) ifCompileError: (recoveredBlock231Block238Value3).
    recoveredBlock231Block238Value4
].
    recoveredBlock231Value1 := (self) updateRecordWith: (recoveredBlock231Value0).
    recoveredBlock231Value1
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkIn: (recoveredStack1) named: (recoveredStack2) ifMustCompile: (recoveredStack3) ifNoCode: (recoveredStack4).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 369] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) doesCompile.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrivate.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) isPrivate.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) isPublic.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodClass.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack3 ~~ recoveredStack4) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredPC := 399.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodClass.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack4 := (recoveredStack4) selector.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoriesFor: (recoveredStack4).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) releaseMethod: (recoveredStack1) in: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

