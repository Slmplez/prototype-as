"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ed88; bytecode file offset 0x93bf94"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getToolString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) toolDisplayName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042eec; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
headline
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Headline').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004323c; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
content
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Content').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004391c; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
subheadline
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('Subheadline').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043eac; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
toString
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('ToString').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044b7c; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
dialogType
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: ('DialogType').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200482dc; bytecode file offset 0x9451f8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
dialogTitle
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743816).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008815c; bytecode file offset 0x984bc0"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getVersionString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getRegKey: ('Version').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a3330; bytecode file offset 0x9a0b4c"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
headline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('Headline') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a36d0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
subheadline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('Subheadline') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3710; bytecode file offset 0x9a0b4c"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
dialogType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('DialogType') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38b0; bytecode file offset 0x9a0b4c"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
content: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('Content') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c50; bytecode file offset 0x9a0b4c"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
toString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: ('ToString') put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d0b78; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
addRef
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('AddRef') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1118; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
oleRelease
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Release') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1654; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getHashCode
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetHashCode') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1a14; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
showDialog
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('ShowDialog') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1a8c; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
dispose
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Dispose') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1adc; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getType
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('GetType') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1c80; bytecode file offset 0x9ce734"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
show
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Show') withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e1588; bytecode file offset 0x9ddea4"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getTitleString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getRegKey: ('Version').
    recoveredValue2 := ('About ASCET ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011e794; bytecode file offset 0xa1b070"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
dialogTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743816) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('dialogTitleChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20199410; bytecode file offset 0xa95cfc"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getCopyrightString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('\') withCrs.
    recoveredValue1 := MainController.
    recoveredValue2 := (recoveredValue1) getVersionString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (String new: 80) at: 1 put: (Character value: 92); at: 2 put: (Character value: 32); at: 3 put: (Character value: 92); at: 4 put: (Character value: 67); at: 5 put: (Character value: 111); at: 6 put: (Character value: 112); at: 7 put: (Character value: 121); at: 8 put: (Character value: 114); at: 9 put: (Character value: 105); at: 10 put: (Character value: 103); at: 11 put: (Character value: 104); at: 12 put: (Character value: 116); at: 13 put: (Character value: 32); at: 14 put: (Character value: 49); at: 15 put: (Character value: 57); at: 16 put: (Character value: 57); at: 17 put: (Character value: 52); at: 18 put: (Character value: 32); at: 19 put: (Character value: 45); at: 20 put: (Character value: 32); at: 21 put: (Character value: 50); at: 22 put: (Character value: 48); at: 23 put: (Character value: 49); at: 24 put: (Character value: 49); at: 25 put: (Character value: 92); at: 26 put: (Character value: 69); at: 27 put: (Character value: 84); at: 28 put: (Character value: 65); at: 29 put: (Character value: 83); at: 30 put: (Character value: 32); at: 31 put: (Character value: 71); at: 32 put: (Character value: 109); at: 33 put: (Character value: 98); at: 34 put: (Character value: 72); at: 35 put: (Character value: 32); at: 36 put: (Character value: 45); at: 37 put: (Character value: 32); at: 38 put: (Character value: 66); at: 39 put: (Character value: 111); at: 40 put: (Character value: 114); at: 41 put: (Character value: 115); at: 42 put: (Character value: 105); at: 43 put: (Character value: 103); at: 44 put: (Character value: 115); at: 45 put: (Character value: 116); at: 46 put: (Character value: 114); at: 47 put: (Character value: 97); at: 48 put: (Character value: 223); at: 49 put: (Character value: 101); at: 50 put: (Character value: 32); at: 51 put: (Character value: 49); at: 52 put: (Character value: 52); at: 53 put: (Character value: 32); at: 54 put: (Character value: 45); at: 55 put: (Character value: 32); at: 56 put: (Character value: 55); at: 57 put: (Character value: 48); at: 58 put: (Character value: 52); at: 59 put: (Character value: 54); at: 60 put: (Character value: 57); at: 61 put: (Character value: 32); at: 62 put: (Character value: 83); at: 63 put: (Character value: 116); at: 64 put: (Character value: 117); at: 65 put: (Character value: 116); at: 66 put: (Character value: 116); at: 67 put: (Character value: 103); at: 68 put: (Character value: 97); at: 69 put: (Character value: 114); at: 70 put: (Character value: 116); at: 71 put: (Character value: 32); at: 72 put: (Character value: 45); at: 73 put: (Character value: 32); at: 74 put: (Character value: 71); at: 75 put: (Character value: 101); at: 76 put: (Character value: 114); at: 77 put: (Character value: 109); at: 78 put: (Character value: 97); at: 79 put: (Character value: 110); at: 80 put: (Character value: 121); yourself.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) withCrs.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2019a348; bytecode file offset 0xa97444"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('Equals') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a498; bytecode file offset 0xa97444"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
showDialog2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('ShowDialog_2') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a700; bytecode file offset 0xa97444"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getTypeInfoCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('GetTypeInfoCount') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a984; bytecode file offset 0xa97444"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
show2: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: ('Show_2') withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201facb4; bytecode file offset 0xaf7758"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObj: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: ('QueryInterface') withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20244dd8; bytecode file offset 0xb41860"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 lcid: recoveredArg2 pptinfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) invoke: ('GetTypeInfo') withArguments: (recoveredValue8) returnType: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202deae0; bytecode file offset 0xbdb530"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getIDsOfNames: recoveredArg1 rgszNames: recoveredArg2 cNames: recoveredArg3 lcid: recoveredArg4 rgdispid: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) invoke: ('GetIDsOfNames') withArguments: (recoveredValue12) returnType: (true).
    ^recoveredValue13
! !

"ASDBase.ic method 0x202f2ab8; bytecode file offset 0xbef3a8"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
open
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) dialogType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getToolString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) headline: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getVersionString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) subheadline: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCopyrightString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := System.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) isRuntime.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := '\ \ \ \'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) getCreditString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) content: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) showDialog.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037ff74; bytecode file offset 0xc7c9e0"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
invoke: recoveredArg1 riid: recoveredArg2 lcid: recoveredArg3 wFlags: recoveredArg4 pdispparams: recoveredArg5 pvarResult: recoveredArg6 pexcepinfo: recoveredArg7 puArgErr: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) invoke: ('Invoke') withArguments: (recoveredValue18) returnType: (true).
    ^recoveredValue19
! !

"ASDBase.ic method 0x20414578; bytecode file offset 0xd10eb0"
!EtasOleWrapperInfoScreenDialog methodsFor: 'recovered'!
getCreditString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := ('The ASCET Team are:\') , ('Axel Bergmann, ').
    recoveredValue1 := (recoveredValue0) , ('Gunter Blache, ').
    recoveredValue2 := (recoveredValue1) , ('Darren Buttle, ').
    recoveredValue3 := (recoveredValue2) , ('Rajesh Das, ').
    recoveredValue4 := (recoveredValue3) , ('Dominik Diesch, ').
    recoveredValue5 := (recoveredValue4) , ('Guido Fiala, ').
    recoveredValue6 := (recoveredValue5) , ('Gerd Flattich, ').
    recoveredValue7 := (recoveredValue6) , ('Viktor Flemmer, ').
    recoveredValue8 := (String new: 17) at: 1 put: (Character value: 84); at: 2 put: (Character value: 105); at: 3 put: (Character value: 108); at: 4 put: (Character value: 109); at: 5 put: (Character value: 97); at: 6 put: (Character value: 110); at: 7 put: (Character value: 32); at: 8 put: (Character value: 71); at: 9 put: (Character value: 108); at: 10 put: (Character value: 246); at: 11 put: (Character value: 116); at: 12 put: (Character value: 122); at: 13 put: (Character value: 110); at: 14 put: (Character value: 101); at: 15 put: (Character value: 114); at: 16 put: (Character value: 44); at: 17 put: (Character value: 32); yourself.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('Manabendra Narayan Gupta, ').
    recoveredValue11 := (recoveredValue10) , ('Wolfgang Haug, ').
    recoveredValue12 := (recoveredValue11) , ('Christine Kammerer, ').
    recoveredValue13 := (recoveredValue12) , ('Michael Keppler, ').
    recoveredValue14 := (recoveredValue13) , ('Reiko Klimpsch, ').
    recoveredValue15 := (recoveredValue14) , ('Jens Krause, ').
    recoveredValue16 := (recoveredValue15) , ('Andreas Kubelka, ').
    recoveredValue17 := (recoveredValue16) , ('Renate Manthey, ').
    recoveredValue18 := (recoveredValue17) , ('Antje Pottschmidt, ').
    recoveredValue19 := (recoveredValue18) , ('Vikrant Raghu, ').
    recoveredValue20 := (recoveredValue19) , ('Justus Reidel, ').
    recoveredValue21 := (recoveredValue20) , ('Manuel Resa, ').
    recoveredValue22 := (recoveredValue21) , ('Holger Ruf, ').
    recoveredValue23 := (recoveredValue22) , ('Werner Sandmann, ').
    recoveredValue24 := (recoveredValue23) , ('Stefan Schimpf, ').
    recoveredValue25 := (recoveredValue24) , ('Karl-Heinz Schweikert, ').
    recoveredValue26 := (recoveredValue25) , ('Richard Uttner, ').
    recoveredValue27 := (recoveredValue26) , ('Udo Waldenmaier, ').
    recoveredValue28 := (recoveredValue27) , ('Kai Werther, ').
    recoveredValue29 := (recoveredValue28) , ('Dirk Ziegenbein.').
    recoveredValue30 := (recoveredValue29) , ('').
    recoveredValue31 := (recoveredValue30) withCrs.
    ^recoveredValue31
! !

