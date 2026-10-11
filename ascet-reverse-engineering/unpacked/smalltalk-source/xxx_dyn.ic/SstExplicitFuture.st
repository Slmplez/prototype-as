"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003244; bytecode file offset 0x64308"
!SstExplicitFuture methodsFor: 'recovered'!
sstHasValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) ~~ (self).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003afc; bytecode file offset 0x64d78"
!SstExplicitFuture methodsFor: 'recovered'!
sstSource
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004720; bytecode file offset 0x6592c"
!SstExplicitFuture methodsFor: 'recovered'!
sstIsFuture
    ^true
! !

"xxx_dyn.ic method 0x20005a70; bytecode file offset 0x66b38"
!SstExplicitFuture methodsFor: 'recovered'!
terminateWaitingProcesses: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := semaphore.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) sstTerminateWaitingProcesses: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200081ec; bytecode file offset 0x692b8"
!SstExplicitFuture methodsFor: 'recovered'!
sstSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008de4; bytecode file offset 0x69eb0"
!SstExplicitFuture methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Semaphore.
    recoveredValue1 := (recoveredValue0) new.
    semaphore := recoveredValue1.
    value := self.
    ^self
! !

"xxx_dyn.ic method 0x20009af8; bytecode file offset 0x6abc0"
!SstExplicitFuture methodsFor: 'recovered'!
sstSetValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    recoveredValue1 := semaphore.
    (recoveredValue1) sstSignalAllPending.
    recoveredValue2 := value.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20012814; bytecode file offset 0x738e8"
!SstExplicitFuture methodsFor: 'recovered'!
touch
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) sstHasValue.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 23] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := semaphore.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack2) wait.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) signal.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    recoveredValue1 := value.
    ^recoveredValue1
! !

