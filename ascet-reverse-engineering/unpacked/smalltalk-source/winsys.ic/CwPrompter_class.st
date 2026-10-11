"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000a94; bytecode file offset 0x7cc7c"
!CwPrompter class methodsFor: 'recovered'!
defaultPrompterStyle
    | recoveredValue0 |
    recoveredValue0 := DefaultPrompterStyle.
    ^recoveredValue0
! !

"winsys.ic method 0x20001e00; bytecode file offset 0x7e054"
!CwPrompter class methodsFor: 'recovered'!
defaultPrompterStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultPrompterStyle := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001f74; bytecode file offset 0x7e17c"
!CwPrompter class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) parent: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005628; bytecode file offset 0x81844"
!CwPrompter class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x2000aaec; bytecode file offset 0x86cb4"
!CwPrompter class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultPrompterStyle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := XmFULLAPPLICATIONMODAL.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            DefaultPrompterStyle := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

