"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000030; bytecode file offset 0x232e0"
!CfsImplementationESWin class methodsFor: 'recovered'!
_PRAGMA_NlsCatCFSWin
    ^self
! !

"cfsnls.ic method 0x20000048; bytecode file offset 0x232e0"
!CfsImplementationESWin class methodsFor: 'recovered'!
_PRAGMA_CfsPlatformConstants
    ^self
! !

"cfsnls.ic method 0x20001650; bytecode file offset 0x24898"
!CfsImplementationESWin class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := CfsStat.
    (recoveredValue0) clearPrivateSharedDiscardableDta.
    ^self
! !

"cfsnls.ic method 0x200030fc; bytecode file offset 0x26374"
!CfsImplementationESWin class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCFSWin.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20006e60; bytecode file offset 0x2a0b0"
!CfsImplementationESWin class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initializeFileDescriptors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicAllInstances.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block2800473cArg1 | 
    | block2800473cValue0 block2800473cValue1 |
    block2800473cValue0 := block2800473cArg1.
    block2800473cValue1 := (block2800473cValue0) fileDescriptor: (nil).
    block2800473cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initializeStartUpDirectory.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200070d4; bytecode file offset 0x2a328"
!CfsImplementationESWin class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileDescriptors.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) initializeFileDescriptors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) initializeCfsConstants.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CfsError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initializeErrors.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) clearPrivateSharedDiscardableDta.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20015198; bytecode file offset 0x384c0"
!CfsImplementationESWin class methodsFor: 'recovered'!
initializeCfsConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := CfsConstants.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('EPERM') put: (1).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ENOENT') put: (2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('EIO') put: (5).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('EBADF') put: (9).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('EACCES') put: (13).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('EBUSY') put: (16).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('EEXIST') put: (17).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('EXDEV') put: (18).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('EISDIR') put: (21).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('EINVAL') put: (22).
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('ENFILE') put: (23).
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('ENOSPC') put: (28).
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('EROFS') put: (30).
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('ORDONLY') put: (0).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('OWRONLY') put: (1).
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('ORDWR') put: (2).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) at: ('ODENYNONE') put: (64).
    recoveredValue18 := recoveredValue0.
    (recoveredValue18) at: ('ODENYRD') put: (48).
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) at: ('ODENYWR') put: (32).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) at: ('ODENYRDWR') put: (16).
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) at: ('OAPPEND') put: (65536).
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) at: ('OCREAT') put: (131072).
    recoveredValue23 := recoveredValue0.
    (recoveredValue23) at: ('OEXCL') put: (262144).
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) at: ('OTRUNC') put: (524288).
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) at: ('SEEKSET') put: (0).
    recoveredValue26 := recoveredValue0.
    (recoveredValue26) at: ('SEEKCUR') put: (1).
    recoveredValue27 := recoveredValue0.
    (recoveredValue27) at: ('SEEKEND') put: (2).
    recoveredValue28 := recoveredValue0.
    (recoveredValue28) at: ('FMDLOCK') put: (0).
    recoveredValue29 := recoveredValue0.
    (recoveredValue29) at: ('FRDLOCK') put: (1).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) at: ('FWRLOCK') put: (2).
    recoveredValue31 := recoveredValue0.
    (recoveredValue31) at: ('FREG') put: (256).
    recoveredValue32 := recoveredValue0.
    (recoveredValue32) at: ('FDIR') put: (16).
    recoveredValue33 := recoveredValue0.
    (recoveredValue33) at: ('FSPECIAL') put: (6).
    recoveredValue34 := recoveredValue0.
    (recoveredValue34) at: ('SIRWXU') put: (0).
    recoveredValue35 := recoveredValue0.
    (recoveredValue35) at: ('SIRUSR') put: (1).
    recoveredValue36 := recoveredValue0.
    (recoveredValue36) at: ('SIWUSR') put: (2).
    recoveredValue37 := recoveredValue0.
    (recoveredValue37) at: ('SIXUSR') put: (0).
    recoveredValue38 := recoveredValue0.
    (recoveredValue38) at: ('SIRWXG') put: (0).
    recoveredValue39 := recoveredValue0.
    (recoveredValue39) at: ('SIRGRP') put: (0).
    recoveredValue40 := recoveredValue0.
    (recoveredValue40) at: ('SIWGRP') put: (0).
    recoveredValue41 := recoveredValue0.
    (recoveredValue41) at: ('SIXGRP') put: (0).
    recoveredValue42 := recoveredValue0.
    (recoveredValue42) at: ('SIRWXO') put: (0).
    recoveredValue43 := recoveredValue0.
    (recoveredValue43) at: ('SIROTH') put: (0).
    recoveredValue44 := recoveredValue0.
    (recoveredValue44) at: ('SIWOTH') put: (0).
    recoveredValue45 := recoveredValue0.
    (recoveredValue45) at: ('SIXOTH') put: (0).
    recoveredValue46 := recoveredValue0.
    (recoveredValue46) at: ('FDUPFD') put: (0).
    recoveredValue47 := recoveredValue0.
    (recoveredValue47) at: ('FGETFD') put: (1).
    recoveredValue48 := recoveredValue0.
    (recoveredValue48) at: ('FGETLK') put: (14).
    recoveredValue49 := recoveredValue0.
    (recoveredValue49) at: ('FSETFD') put: (2).
    recoveredValue50 := recoveredValue0.
    (recoveredValue50) at: ('FGETFL') put: (3).
    recoveredValue51 := recoveredValue0.
    (recoveredValue51) at: ('FSETFL') put: (4).
    recoveredValue52 := recoveredValue0.
    (recoveredValue52) at: ('FSETLK') put: (6).
    recoveredValue53 := recoveredValue0.
    (recoveredValue53) at: ('FSETLKW') put: (7).
    recoveredValue54 := recoveredValue0.
    (recoveredValue54) at: ('FDCLOEXEC') put: (1).
    recoveredValue55 := recoveredValue0.
    (recoveredValue55) at: ('FUNLOCK') put: (3).
    (recoveredValue0) at: ('ONONBLOCK') put: (128).
    ^self
! !

