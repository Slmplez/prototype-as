"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001dc48; bytecode file offset 0x1714f4"
!OSIStorage methodsFor: 'recovered'!
revert
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Revert.
    recoveredValue1 := (recoveredValue0) callWith: (10) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2002320c; bytecode file offset 0x176b18"
!OSIStorage methodsFor: 'recovered'!
commit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Commit.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (9) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200234bc; bytecode file offset 0x176d68"
!OSIStorage methodsFor: 'recovered'!
setClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SetClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (15) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002556c; bytecode file offset 0x178e0c"
!OSIStorage methodsFor: 'recovered'!
destroyElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DestroyElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := (recoveredValue0) callWith: (12) with: (self) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025da8; bytecode file offset 0x179644"
!OSIStorage methodsFor: 'recovered'!
setStateBits: recoveredArg1 grfMask: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SetStateBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (16) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025dd8; bytecode file offset 0x179684"
!OSIStorage methodsFor: 'recovered'!
stat: recoveredArg1 grfStatFlag: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Stat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (17) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200293a4; bytecode file offset 0x17cc44"
!OSIStorage methodsFor: 'recovered'!
renameElement: recoveredArg1 pwcsNewName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RenameElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asOlePSZ.
    recoveredValue5 := (recoveredValue0) callWith: (13) with: (self) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200297f8; bytecode file offset 0x17d0c4"
!OSIStorage methodsFor: 'recovered'!
copyTo: recoveredArg1 rgiidExclude: recoveredArg2 snbExclude: recoveredArg3 pstgDest: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CopyTo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x200298d8; bytecode file offset 0x17d174"
!OSIStorage methodsFor: 'recovered'!
enumElements: recoveredArg1 reserved2: recoveredArg2 reserved3: recoveredArg3 ppenum: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EnumElements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (11) with: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x2002a8a0; bytecode file offset 0x17e140"
!OSIStorage methodsFor: 'recovered'!
setElementTimes: recoveredArg1 pctime: recoveredArg2 patime: recoveredArg3 pmtime: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SetElementTimes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue0) callWith: (14) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002b15c; bytecode file offset 0x17e9fc"
!OSIStorage methodsFor: 'recovered'!
moveElementTo: recoveredArg1 pstgDest: recoveredArg2 pwcsNewName: recoveredArg3 grfFlags: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := MoveElementTo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) asOlePSZ.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002bb6c; bytecode file offset 0x17f40c"
!OSIStorage methodsFor: 'recovered'!
createStream: recoveredArg1 grfMode: recoveredArg2 reserved1: recoveredArg3 reserved2: recoveredArg4 ppstm: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CreateStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002bb94; bytecode file offset 0x17f434"
!OSIStorage methodsFor: 'recovered'!
openStream: recoveredArg1 reserved1: recoveredArg2 grfMode: recoveredArg3 reserved2: recoveredArg4 ppstm: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OpenStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (4) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002bbbc; bytecode file offset 0x17f45c"
!OSIStorage methodsFor: 'recovered'!
createStorage: recoveredArg1 grfMode: recoveredArg2 dwStgFmt: recoveredArg3 reserved2: recoveredArg4 ppstg: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CreateStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2002ce80; bytecode file offset 0x180720"
!OSIStorage methodsFor: 'recovered'!
openStorage: recoveredArg1 pstgPriority: recoveredArg2 grfMode: recoveredArg3 snbExclude: recoveredArg4 reserved: recoveredArg5 ppstg: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OpenStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

