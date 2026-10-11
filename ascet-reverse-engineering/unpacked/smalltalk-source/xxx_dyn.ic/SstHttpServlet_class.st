"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200029dc; bytecode file offset 0x63b1c"
!SstHttpServlet class methodsFor: 'recovered'!
setupAfterLoad
    (self) initializeRequestMap.
    ^self
! !

"xxx_dyn.ic method 0x20008e48; bytecode file offset 0x69f18"
!SstHttpServlet class methodsFor: 'recovered'!
initializeRequestMap
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    requestMap := recoveredValue1.
    (self) registerRequestCommands.
    ^self
! !

"xxx_dyn.ic method 0x2000a8cc; bytecode file offset 0x6b994"
!SstHttpServlet class methodsFor: 'recovered'!
requestMap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := requestMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeRequestMap.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := requestMap.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001d34c; bytecode file offset 0x7e44c"
!SstHttpServlet class methodsFor: 'recovered'!
registerRequestCommands
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := requestMap.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := HttpGetMethod.
    (recoveredValue1) at: (recoveredValue2) put: ('doGet:').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := HttpPostMethod.
    (recoveredValue3) at: (recoveredValue4) put: ('doPost:').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := HttpHeadMethod.
    (recoveredValue5) at: (recoveredValue6) put: ('doHead:').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := HttpDeleteMethod.
    (recoveredValue7) at: (recoveredValue8) put: ('doDelete:').
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := HttpOptionsMethod.
    (recoveredValue9) at: (recoveredValue10) put: ('doOptions:').
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := HttpPutMethod.
    (recoveredValue11) at: (recoveredValue12) put: ('doPut:').
    recoveredValue13 := HttpTraceMethod.
    (recoveredValue0) at: (recoveredValue13) put: ('doTrace:').
    ^self
! !

