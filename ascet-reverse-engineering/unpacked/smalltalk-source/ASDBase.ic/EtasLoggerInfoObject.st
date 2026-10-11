"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002653c; bytecode file offset 0x923928"
!EtasLoggerInfoObject methodsFor: 'recovered'!
undefined
    ^'<undefined>'
! !

"ASDBase.ic method 0x20065c2c; bytecode file offset 0x963428"
!EtasLoggerInfoObject methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008954c; bytecode file offset 0x985ef8"
!EtasLoggerInfoObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    attributes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009c518; bytecode file offset 0x998e50"
!EtasLoggerInfoObject methodsFor: 'recovered'!
writeToLogfile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasLogger.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) writeToLogfile: (self).
    ^self
! !

"ASDBase.ic method 0x200bbef0; bytecode file offset 0x9b8ddc"
!EtasLoggerInfoObject methodsFor: 'recovered'!
module: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('module') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbf18; bytecode file offset 0x9b8ddc"
!EtasLoggerInfoObject methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('message:') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc170; bytecode file offset 0x9b8ddc"
!EtasLoggerInfoObject methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('category:') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc184; bytecode file offset 0x9b8ddc"
!EtasLoggerInfoObject methodsFor: 'recovered'!
location: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('location') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ca504; bytecode file offset 0x9c7020"
!EtasLoggerInfoObject methodsFor: 'recovered'!
getMethodLocation: recoveredArg1 class: recoveredArg2 method: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) getMethodLocation: (recoveredValue1) class: (recoveredValue2) method: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013dfbc; bytecode file offset 0xa3a928"
!EtasLoggerInfoObject methodsFor: 'recovered'!
category
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) undefined.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('category:') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013e034; bytecode file offset 0xa3a928"
!EtasLoggerInfoObject methodsFor: 'recovered'!
message
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) undefined.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('message:') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013e04c; bytecode file offset 0xa3a928"
!EtasLoggerInfoObject methodsFor: 'recovered'!
location
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) undefined.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('location') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013e064; bytecode file offset 0xa3a928"
!EtasLoggerInfoObject methodsFor: 'recovered'!
module
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) undefined.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('module') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20183a84; bytecode file offset 0xa8034c"
!EtasLoggerInfoObject methodsFor: 'recovered'!
categoryID
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) possibleCategories.
    recoveredValue2 := (self) category.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    ^recoveredBlock9Value0
].
    (recoveredValue1) at: (recoveredValue3) ifPresent: (recoveredValue4).
    ^1
! !

"ASDBase.ic method 0x203456e4; bytecode file offset 0xc41fc4"
!EtasLoggerInfoObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmptyOrNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    (recoveredBlock25Value1) cr.
    recoveredBlock25Value2 := recoveredBlock25Value0.
    (recoveredBlock25Value2) tab.
    recoveredBlock25Value3 := recoveredBlock25Value0.
    recoveredBlock25Value4 := recoveredBlock25Arg1.
    (recoveredBlock25Value3) nextPutAll: (recoveredBlock25Value4).
    recoveredBlock25Value5 := recoveredBlock25Value0.
    (recoveredBlock25Value5) tab.
    recoveredBlock25Value6 := recoveredBlock25Value0.
    (recoveredBlock25Value6) tab.
    recoveredBlock25Value7 := (self) attributes.
    recoveredBlock25Value8 := recoveredBlock25Arg1.
    recoveredBlock25Value9 := (recoveredBlock25Value7) at: (recoveredBlock25Value8).
    recoveredBlock25Value10 := (recoveredBlock25Value0) nextPutAll: (recoveredBlock25Value9).
    recoveredBlock25Value10
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

