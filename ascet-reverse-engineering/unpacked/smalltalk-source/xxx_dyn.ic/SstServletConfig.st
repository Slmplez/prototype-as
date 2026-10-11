"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002520; bytecode file offset 0x6363c"
!SstServletConfig methodsFor: 'recovered'!
getInitParameterNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := initParameters.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000385c; bytecode file offset 0x649e8"
!SstServletConfig methodsFor: 'recovered'!
getServletContext
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003ae0; bytecode file offset 0x64bac"
!SstServletConfig methodsFor: 'recovered'!
initParameters
    | recoveredValue0 |
    recoveredValue0 := initParameters.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b54; bytecode file offset 0x64d78"
!SstServletConfig methodsFor: 'recovered'!
getServletName
    | recoveredValue0 |
    recoveredValue0 := servletName.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003db8; bytecode file offset 0x64ed4"
!SstServletConfig methodsFor: 'recovered'!
loadAtStartUp
    | recoveredValue0 |
    recoveredValue0 := loadAtStartUp.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e24; bytecode file offset 0x64fe8"
!SstServletConfig methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200078ec; bytecode file offset 0x689c8"
!SstServletConfig methodsFor: 'recovered'!
getInitParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := initParameters.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007e4c; bytecode file offset 0x68f50"
!SstServletConfig methodsFor: 'recovered'!
servletContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    context := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20007f00; bytecode file offset 0x69104"
!SstServletConfig methodsFor: 'recovered'!
initParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initParameters := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000814c; bytecode file offset 0x692b8"
!SstServletConfig methodsFor: 'recovered'!
servletName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    servletName := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008298; bytecode file offset 0x69404"
!SstServletConfig methodsFor: 'recovered'!
loadAtStartUp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loadAtStartUp := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000842c; bytecode file offset 0x69508"
!SstServletConfig methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008e04; bytecode file offset 0x69ed0"
!SstServletConfig methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    initParameters := recoveredValue1.
    loadAtStartUp := false.
    ^self
! !

