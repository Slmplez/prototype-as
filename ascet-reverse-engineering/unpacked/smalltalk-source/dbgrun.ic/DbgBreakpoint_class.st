"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x200000d4; bytecode file offset 0x76d0"
!DbgBreakpoint class methodsFor: 'recovered'!
lastBreakpointTime
    | recoveredValue0 |
    recoveredValue0 := LastBreakpointTime.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000110; bytecode file offset 0x76d0"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointInProgress
    | recoveredValue0 |
    recoveredValue0 := BreakpointInProgress.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000250; bytecode file offset 0x7864"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointInProgress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BreakpointInProgress := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000268; bytecode file offset 0x7864"
!DbgBreakpoint class methodsFor: 'recovered'!
lastBreakpointTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastBreakpointTime := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200006e4; bytecode file offset 0x7cac"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointReceiver
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Core.
    recoveredValue1 := (recoveredValue0) registry.
    recoveredValue2 := (recoveredValue1) at: (55).
    ^recoveredValue2
! !

"dbgrun.ic method 0x20000704; bytecode file offset 0x7ccc"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointSelector
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Core.
    recoveredValue1 := (recoveredValue0) registry.
    recoveredValue2 := (recoveredValue1) at: (56).
    ^recoveredValue2
! !

"dbgrun.ic method 0x20000ad0; bytecode file offset 0x8098"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointReceiver: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Core.
    recoveredValue1 := (recoveredValue0) registry.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (55) put: (recoveredValue2).
    ^recoveredValue3
! !

"dbgrun.ic method 0x20000af4; bytecode file offset 0x80bc"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Core.
    recoveredValue1 := (recoveredValue0) registry.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (56) put: (recoveredValue2).
    ^recoveredValue3
! !

"dbgrun.ic method 0x20000c14; bytecode file offset 0x81dc"
!DbgBreakpoint class methodsFor: 'recovered'!
null
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) number: (0).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) active: (false).
    ^recoveredValue0
! !

"dbgrun.ic method 0x20001740; bytecode file offset 0x8d1c"
!DbgBreakpoint class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) breakpointInProgress: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) lastBreakpointTime: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakpointReceiver.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFixed.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) breakpointReceiver: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakpointSelector.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'breakpointEncountered:'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFixed.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) breakpointSelector: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20002fa0; bytecode file offset 0xa5bc"
!DbgBreakpoint class methodsFor: 'recovered'!
breakpointEncountered: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('PR') = ('1EBM3LX').
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) activeProcess.
    recoveredValue3 := recoveredValue2.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (recoveredValue2) senderBP.
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := System.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) breakpointManager.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) breakpointsEnabled.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 40] ifFalse: [recoveredBlock22PC := 38].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            ^recoveredBlock22Stack1
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) breakpointInProgress.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            (recoveredBlock22Stack0) ifTrue: [recoveredBlock22PC := 46] ifFalse: [recoveredBlock22PC := 48].
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            ^recoveredBlock22Stack0
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack0 := self.
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack1 := true.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) breakpointInProgress: (recoveredBlock22Stack1).
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue5) critical.
    recoveredValue6 := [
    | recoveredBlock55Local1 recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := System.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) breakpointManager.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack2 := recoveredArg1.
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) breakpointNumber: (recoveredBlock55Stack2).
            recoveredBlock55PC := 71.
        ].
        recoveredBlock55Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            (recoveredBlock55Stack1 ~~ nil) ifTrue: [recoveredBlock55PC := 82] ifFalse: [recoveredBlock55PC := 80].
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack1 := self.
            recoveredBlock55PC := 81.
        ].
        recoveredBlock55Step = 81 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 82 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal2.
            recoveredBlock55PC := 85.
        ].
        recoveredBlock55Step = 85 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal4.
            recoveredBlock55PC := 88.
        ].
        recoveredBlock55Step = 88 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) stackFrameAtBP: (recoveredBlock55Stack2).
            recoveredBlock55PC := 90.
        ].
        recoveredBlock55Step = 90 ifTrue: [
            recoveredBlock55Local1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 91.
        ].
        recoveredBlock55Step = 91 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 94.
        ].
        recoveredBlock55Step = 94 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local1.
            recoveredBlock55PC := 95.
        ].
        recoveredBlock55Step = 95 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) breakpointHit: (recoveredBlock55Stack2).
            recoveredBlock55PC := 97.
        ].
        recoveredBlock55Step = 97 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 98.
        ].
        recoveredBlock55Step = 98 ifTrue: [
            recoveredLocal3 := recoveredBlock55Stack2.
            recoveredBlock55PC := 101.
        ].
        recoveredBlock55Step = 101 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
    recoveredValue7 := [
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := false.
            recoveredBlock102PC := 109.
        ].
        recoveredBlock102Step = 109 ifTrue: [
            (recoveredBlock102Stack0) breakpointInProgress: (recoveredBlock102Stack1).
            recoveredBlock102PC := 111.
        ].
        recoveredBlock102Step = 111 ifTrue: [
            recoveredBlock102Stack0 := nil.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal3.
            recoveredBlock102PC := 115.
        ].
        recoveredBlock102Step = 115 ifTrue: [
            recoveredBlock102Stack2 := true.
            recoveredBlock102PC := 116.
        ].
        recoveredBlock102Step = 116 ifTrue: [
            (recoveredBlock102Stack1 ~~ recoveredBlock102Stack2) ifTrue: [recoveredBlock102PC := 152] ifFalse: [recoveredBlock102PC := 120].
        ].
        recoveredBlock102Step = 120 ifTrue: [
            recoveredBlock102PC := 121.
        ].
        recoveredBlock102Step = 121 ifTrue: [
            recoveredBlock102Stack0 := Processor.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal2.
            recoveredBlock102PC := 126.
        ].
        recoveredBlock102Step = 126 ifTrue: [
            (recoveredBlock102Stack0) checkRecursiveDebug: (recoveredBlock102Stack1).
            recoveredBlock102PC := 128.
        ].
        recoveredBlock102Step = 128 ifTrue: [
            recoveredBlock102Stack0 := self.
            recoveredBlock102PC := 129.
        ].
        recoveredBlock102Step = 129 ifTrue: [
            recoveredBlock102Stack1 := Time.
            recoveredBlock102PC := 131.
        ].
        recoveredBlock102Step = 131 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) millisecondClockValue.
            recoveredBlock102PC := 133.
        ].
        recoveredBlock102Step = 133 ifTrue: [
            (recoveredBlock102Stack0) lastBreakpointTime: (recoveredBlock102Stack1).
            recoveredBlock102PC := 135.
        ].
        recoveredBlock102Step = 135 ifTrue: [
            recoveredBlock102Stack0 := ExHalt.
            recoveredBlock102PC := 137.
        ].
        recoveredBlock102Step = 137 ifTrue: [
            recoveredBlock102Stack1 := MxDBG22.
            recoveredBlock102PC := 139.
        ].
        recoveredBlock102Step = 139 ifTrue: [
            recoveredBlock102Stack2 := recoveredArg1.
            recoveredBlock102PC := 142.
        ].
        recoveredBlock102Step = 142 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) printString.
            recoveredBlock102PC := 144.
        ].
        recoveredBlock102Step = 144 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) bindWith: (recoveredBlock102Stack2).
            recoveredBlock102PC := 146.
        ].
        recoveredBlock102Step = 146 ifTrue: [
            recoveredBlock102Stack2 := recoveredLocal1.
            recoveredBlock102PC := 149.
        ].
        recoveredBlock102Step = 149 ifTrue: [
            recoveredBlock102Stack0 := (recoveredBlock102Stack0) signalWith: (recoveredBlock102Stack1) with: (recoveredBlock102Stack2).
            recoveredBlock102PC := 151.
        ].
        recoveredBlock102Step = 151 ifTrue: [
            ^recoveredBlock102Stack0
        ].
        recoveredBlock102Step = 152 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack0.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
    (recoveredValue6) atEndOrWhenExceptionDo: (recoveredValue7).
    ^self
! !

