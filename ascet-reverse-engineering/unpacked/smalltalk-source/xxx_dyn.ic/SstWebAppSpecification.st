"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20003724; bytecode file offset 0x649e8"
!SstWebAppSpecification methodsFor: 'recovered'!
appName
    | recoveredValue0 |
    recoveredValue0 := appName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ad8; bytecode file offset 0x64bac"
!SstWebAppSpecification methodsFor: 'recovered'!
contextPath
    | recoveredValue0 |
    recoveredValue0 := contextPath.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b64; bytecode file offset 0x64d78"
!SstWebAppSpecification methodsFor: 'recovered'!
logFileName
    | recoveredValue0 |
    recoveredValue0 := logFileName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003da8; bytecode file offset 0x64ed4"
!SstWebAppSpecification methodsFor: 'recovered'!
contextParameters
    | recoveredValue0 |
    recoveredValue0 := contextParameters.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ea4; bytecode file offset 0x64fe8"
!SstWebAppSpecification methodsFor: 'recovered'!
sessionConfiguration
    | recoveredValue0 |
    recoveredValue0 := sessionConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fa8; bytecode file offset 0x650c4"
!SstWebAppSpecification methodsFor: 'recovered'!
servlets
    | recoveredValue0 |
    recoveredValue0 := servlets.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200040a4; bytecode file offset 0x65178"
!SstWebAppSpecification methodsFor: 'recovered'!
servletMappings
    | recoveredValue0 |
    recoveredValue0 := servletMappings.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004198; bytecode file offset 0x65264"
!SstWebAppSpecification methodsFor: 'recovered'!
defaultServlet
    | recoveredValue0 |
    recoveredValue0 := defaultServlet.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200072e4; bytecode file offset 0x683c0"
!SstWebAppSpecification methodsFor: 'recovered'!
setErrorPage: recoveredArg1 forError: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorPages.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007330; bytecode file offset 0x6843c"
!SstWebAppSpecification methodsFor: 'recovered'!
atContextParameter: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contextParameters.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x2000789c; bytecode file offset 0x68980"
!SstWebAppSpecification methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ObjectDumper.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) unload: (self) intoStream: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007bf4; bytecode file offset 0x68cc4"
!SstWebAppSpecification methodsFor: 'recovered'!
setDefaultErrorPage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorPages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('DEFAULT') put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007c58; bytecode file offset 0x68d28"
!SstWebAppSpecification methodsFor: 'recovered'!
addServletSpecification: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) servlets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getServletName.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x20007e2c; bytecode file offset 0x68f50"
!SstWebAppSpecification methodsFor: 'recovered'!
appName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    appName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007eb0; bytecode file offset 0x69104"
!SstWebAppSpecification methodsFor: 'recovered'!
contextPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contextPath := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008124; bytecode file offset 0x692b8"
!SstWebAppSpecification methodsFor: 'recovered'!
logFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logFileName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200082d8; bytecode file offset 0x69404"
!SstWebAppSpecification methodsFor: 'recovered'!
contextParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contextParameters := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008354; bytecode file offset 0x69508"
!SstWebAppSpecification methodsFor: 'recovered'!
sessionConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sessionConfiguration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084f0; bytecode file offset 0x695c4"
!SstWebAppSpecification methodsFor: 'recovered'!
servlets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    servlets := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008594; bytecode file offset 0x69688"
!SstWebAppSpecification methodsFor: 'recovered'!
servletMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    servletMappings := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008648; bytecode file offset 0x6978c"
!SstWebAppSpecification methodsFor: 'recovered'!
defaultServlet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultServlet := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008744; bytecode file offset 0x69858"
!SstWebAppSpecification methodsFor: 'recovered'!
errorPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorPages := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000bedc; bytecode file offset 0x6cfb8"
!SstWebAppSpecification methodsFor: 'recovered'!
errorPages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorPages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            errorPages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := errorPages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e170; bytecode file offset 0x6f24c"
!SstWebAppSpecification methodsFor: 'recovered'!
defineServlet: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) servlets.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SstServletConfig.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) servletName: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) className: (recoveredValue7).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x200105c8; bytecode file offset 0x71694"
!SstWebAppSpecification methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    contextParameters := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    servlets := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    servletMappings := recoveredValue5.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    errorPages := recoveredValue7.
    ^self
! !

"xxx_dyn.ic method 0x20010e78; bytecode file offset 0x71f74"
!SstWebAppSpecification methodsFor: 'recovered'!
addServletMap: recoveredArg1 forServletNamed: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) servletMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block2800abfcValue0 block2800abfcValue1 |
    block2800abfcValue0 := OrderedCollection.
    block2800abfcValue1 := (block2800abfcValue0) new.
    block2800abfcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012ea8; bytecode file offset 0x73f8c"
!SstWebAppSpecification methodsFor: 'recovered'!
defineServlet: recoveredArg1 as: recoveredArg2 loadAtStartUp: recoveredArg3 initParameters: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) servlets.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SstServletConfig.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) servletName: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) className: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) loadAtStartUp: (recoveredValue9).
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) initParameters: (recoveredValue11).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

