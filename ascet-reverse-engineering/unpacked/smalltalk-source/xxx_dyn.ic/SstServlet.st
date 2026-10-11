"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000068; bytecode file offset 0x6147c"
!SstServlet methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x20000ff4; bytecode file offset 0x626a4"
!SstServlet methodsFor: 'recovered'!
getServletInfo
    ^'Basic Servlet'
! !

"xxx_dyn.ic method 0x200016fc; bytecode file offset 0x62c08"
!SstServlet methodsFor: 'recovered'!
getServletName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getServletConfig.
    recoveredValue1 := (recoveredValue0) getServletName.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200019bc; bytecode file offset 0x62c08"
!SstServlet methodsFor: 'recovered'!
getInitParameterNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getServletConfig.
    recoveredValue1 := (recoveredValue0) getInitParameterNames.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001aec; bytecode file offset 0x62c08"
!SstServlet methodsFor: 'recovered'!
getServletContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getServletConfig.
    recoveredValue1 := (recoveredValue0) getServletContext.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001b9c; bytecode file offset 0x62c64"
!SstServlet methodsFor: 'recovered'!
service: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := SstNullReturnValue.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002748; bytecode file offset 0x63814"
!SstServlet methodsFor: 'recovered'!
destroy
    configuration := nil.
    ^self
! !

"xxx_dyn.ic method 0x20002ab8; bytecode file offset 0x63b88"
!SstServlet methodsFor: 'recovered'!
server
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletConfig.
    recoveredValue1 := (recoveredValue0) getServletContext.
    recoveredValue2 := (recoveredValue1) owner.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002d2c; bytecode file offset 0x64108"
!SstServlet methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) logInfo: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002f0c; bytecode file offset 0x64108"
!SstServlet methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) log: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002f2c; bytecode file offset 0x64108"
!SstServlet methodsFor: 'recovered'!
getInitParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletConfig.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getInitParameter: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20002fdc; bytecode file offset 0x64108"
!SstServlet methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) logError: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000303c; bytecode file offset 0x64108"
!SstServlet methodsFor: 'recovered'!
logTrace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getServletContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) logTrace: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200037f4; bytecode file offset 0x649e8"
!SstServlet methodsFor: 'recovered'!
getServletConfig
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007e24; bytecode file offset 0x68f50"
!SstServlet methodsFor: 'recovered'!
init: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007fd0; bytecode file offset 0x69104"
!SstServlet methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000da68; bytecode file offset 0x6eb38"
!SstServlet methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

