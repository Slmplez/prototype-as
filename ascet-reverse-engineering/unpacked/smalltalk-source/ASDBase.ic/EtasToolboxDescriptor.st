"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019304; bytecode file offset 0x92209c"
!EtasToolboxDescriptor methodsFor: 'recovered'!
dontCareOptionKey
    ^'dontCare'
! !

"ASDBase.ic method 0x20027984; bytecode file offset 0x924260"
!EtasToolboxDescriptor methodsFor: 'recovered'!
isLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stApplication.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006595c; bytecode file offset 0x963428"
!EtasToolboxDescriptor methodsFor: 'recovered'!
properties
    | recoveredValue0 |
    recoveredValue0 := properties.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073900; bytecode file offset 0x970b34"
!EtasToolboxDescriptor methodsFor: 'recovered'!
apiVersion
    ^nil
! !

"ASDBase.ic method 0x20073b30; bytecode file offset 0x970b34"
!EtasToolboxDescriptor methodsFor: 'recovered'!
licenseInfo
    ^nil
! !

"ASDBase.ic method 0x200740d8; bytecode file offset 0x970b34"
!EtasToolboxDescriptor methodsFor: 'recovered'!
apiClass
    ^nil
! !

"ASDBase.ic method 0x20074118; bytecode file offset 0x970b34"
!EtasToolboxDescriptor methodsFor: 'recovered'!
baseVersion
    ^nil
! !

"ASDBase.ic method 0x20077d5c; bytecode file offset 0x9757c8"
!EtasToolboxDescriptor methodsFor: 'recovered'!
isToolboxDescription
    ^true
! !

"ASDBase.ic method 0x20084960; bytecode file offset 0x981ca4"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addDynamicMenuCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) dynamicMenuCall: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ab0a0; bytecode file offset 0x9a7960"
!EtasToolboxDescriptor methodsFor: 'recovered'!
menuBarCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('menuBarCall') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3b04; bytecode file offset 0x9b0488"
!EtasToolboxDescriptor methodsFor: 'recovered'!
dynamicMenuCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('dynamicMenuCall') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3b4c; bytecode file offset 0x9b0488"
!EtasToolboxDescriptor methodsFor: 'recovered'!
application
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('application') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3bc4; bytecode file offset 0x9b0488"
!EtasToolboxDescriptor methodsFor: 'recovered'!
packageName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('packageName') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbe50; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
dynamicMenuCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('dynamicMenuCall') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbeb4; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('version') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbf04; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('options') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbf68; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
application: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('application') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc094; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('label') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc15c; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
packageName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('packageName') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc260; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
menuCalls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('menuCalls') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc33c; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('fileName') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc350; bytecode file offset 0x9b8ddc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
toolbarCalls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('toolbarCalls') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be004; bytecode file offset 0x9bb178"
!EtasToolboxDescriptor methodsFor: 'recovered'!
properties: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    properties := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc164; bytecode file offset 0x9c8a28"
!EtasToolboxDescriptor methodsFor: 'recovered'!
stApplication
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (self) application.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) classAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012cdb8; bytecode file offset 0xa29840"
!EtasToolboxDescriptor methodsFor: 'recovered'!
fileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'fileName'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ceb4; bytecode file offset 0xa29840"
!EtasToolboxDescriptor methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'label'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e004; bytecode file offset 0xa3a928"
!EtasToolboxDescriptor methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) packageVersion.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('version') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014f690; bytecode file offset 0xa4c0bc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
toolbarCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'toolbarCalls'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd1a0Value0 block280cd1a0Value1 |
    block280cd1a0Value0 := OrderedCollection.
    block280cd1a0Value1 := (block280cd1a0Value0) new.
    block280cd1a0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f6f0; bytecode file offset 0xa4c0bc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
menuCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'menuCalls'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd20cValue0 block280cd20cValue1 |
    block280cd20cValue0 := OrderedCollection.
    block280cd20cValue1 := (block280cd20cValue0) new.
    block280cd20cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f710; bytecode file offset 0xa4c0bc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'options'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd230Value0 block280cd230Value1 |
    block280cd230Value0 := LookupTable.
    block280cd230Value1 := (block280cd230Value0) new.
    block280cd230Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201815b4; bytecode file offset 0xa7de80"
!EtasToolboxDescriptor methodsFor: 'recovered'!
menuBarCall
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := LookupTable.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := (self) menuBarCall: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) at: ('menuBarCall') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20184cd8; bytecode file offset 0xa815a8"
!EtasToolboxDescriptor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    recoveredValue2 := ('Toolbox: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (').
    recoveredValue4 := (self) version.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (') ').
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201e14f8; bytecode file offset 0xadddbc"
!EtasToolboxDescriptor methodsFor: 'recovered'!
staticAndDynamicMenuCalls
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuCalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dynamicMenuCall.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuCalls.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuCalls.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) menuCalls: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202083f0; bytecode file offset 0xb04cc0"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuBarCall: recoveredArg1 menu: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuBarCall.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d9974Value0 block280d9974Value1 |
    block280d9974Value0 := OrderedCollection.
    block280d9974Value1 := (block280d9974Value0) new.
    block280d9974Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
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
            recoveredStack1 := recoveredArg2.
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
            recoveredStack0 := (recoveredStack0) menuBarCall.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ae38; bytecode file offset 0xb47708"
!EtasToolboxDescriptor methodsFor: 'recovered'!
getCallerCollFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280deb04Arg1 | 
    | block280deb04Value0 block280deb04Value1 |
    block280deb04Value0 := block280deb04Arg1.
    block280deb04Value1 := (block280deb04Value0) isSymbol.
    block280deb04Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025ebdc; bytecode file offset 0xb5b4b8"
!EtasToolboxDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) properties: (recoveredValue1).
    (self) label: ('').
    (self) fileName: ('').
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) menuCalls: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    (self) toolbarCalls: (recoveredValue5).
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    (self) options: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20299e60; bytecode file offset 0xb9673c"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value10 := (recoveredBlock8Value0) add: (recoveredBlock8Value9).
    recoveredBlock8Value10
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202b0744; bytecode file offset 0xbad010"
!EtasToolboxDescriptor methodsFor: 'recovered'!
packageVersion
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) packageName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '<undefined>'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPackageVersion: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := '<undefined>'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f0550; bytecode file offset 0xbece2c"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addToolboxMenuBar: recoveredArg1 caller: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuBarCall.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block280e805cValue0 block280e805cValue1 |
    block280e805cValue0 := OrderedCollection.
    block280e805cValue1 := (block280e805cValue0) new.
    block280e805cValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := recoveredArg2.
    recoveredBlock29Value3 := (recoveredBlock29Value1) value: (recoveredBlock29Value2).
    recoveredBlock29Value4 := (recoveredBlock29Value0) addMenu: (recoveredBlock29Value3).
    recoveredBlock29Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030df10; bytecode file offset 0xc0a82c"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addToolbarCall: recoveredArg1 icon: recoveredArg2 helpText: recoveredArg3 action: recoveredArg4 description: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 |
    recoveredBlock8Value0 := (self) toolbarCalls.
    recoveredBlock8Value1 := RBToolboxCallFromToolbar.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) icon: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) helpText: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) action: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) description: (recoveredBlock8Value12).
    recoveredBlock8Value13 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value14 := (recoveredBlock8Value0) add: (recoveredBlock8Value13).
    recoveredBlock8Value14
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2030df48; bytecode file offset 0xc0a82c"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 action: recoveredArg4 description: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) action: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) description: (recoveredBlock8Value12).
    recoveredBlock8Value13 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value14 := (recoveredBlock8Value0) add: (recoveredBlock8Value13).
    recoveredBlock8Value14
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2033c550; bytecode file offset 0xc38e74"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 toggle: recoveredArg4 action: recoveredArg5 description: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) toggle: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) action: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) description: (recoveredBlock8Value14).
    recoveredBlock8Value15 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value16 := (recoveredBlock8Value0) add: (recoveredBlock8Value15).
    recoveredBlock8Value16
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2033c58c; bytecode file offset 0xc38e74"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 actionKey: recoveredArg4 action: recoveredArg5 description: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) actionKey: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) action: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) description: (recoveredBlock8Value14).
    recoveredBlock8Value15 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value16 := (recoveredBlock8Value0) add: (recoveredBlock8Value15).
    recoveredBlock8Value16
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2033e9b0; bytecode file offset 0xc3b290"
!EtasToolboxDescriptor methodsFor: 'recovered'!
optionsForKey: recoveredArg1 toolbox: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280edbe8Value0 block280edbe8Value1 |
    block280edbe8Value0 := OrderedCollection.
    block280edbe8Value1 := (block280edbe8Value0) new.
    block280edbe8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) dontCareOptionKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg2.
    recoveredBlock46Value2 := (recoveredBlock46Value0) optionFor: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20366d18; bytecode file offset 0xc635f4"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addOptionType: recoveredArg1 getBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasToolboxOption.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) dontCareOptionKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 |
    recoveredBlock39Value0 := (self) options.
    recoveredBlock39Value1 := recoveredLocal1.
    recoveredBlock39Value2 := OrderedCollection.
    recoveredBlock39Value3 := (recoveredBlock39Value2) new.
    recoveredBlock39Value4 := (recoveredBlock39Value0) at: (recoveredBlock39Value1) put: (recoveredBlock39Value3).
    recoveredBlock39Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036a204; bytecode file offset 0xc66bb0"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addSubMenuCall: recoveredArg1 menu: recoveredArg2 submenu: recoveredArg3 item: recoveredArg4 enable: recoveredArg5 action: recoveredArg6 description: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := EtasToolboxCallFromSubmenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) submenu: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) item: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) enable: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) action: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) description: (recoveredBlock8Value16).
    recoveredBlock8Value17 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value18 := (recoveredBlock8Value0) add: (recoveredBlock8Value17).
    recoveredBlock8Value18
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2036a244; bytecode file offset 0xc66bb0"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 actionKey: recoveredArg4 toggle: recoveredArg5 action: recoveredArg6 description: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) actionKey: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) toggle: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) action: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) description: (recoveredBlock8Value16).
    recoveredBlock8Value17 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value18 := (recoveredBlock8Value0) add: (recoveredBlock8Value17).
    recoveredBlock8Value18
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2036a284; bytecode file offset 0xc66bb0"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 enable: recoveredArg4 toggle: recoveredArg5 action: recoveredArg6 description: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) enable: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) toggle: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) action: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) description: (recoveredBlock8Value16).
    recoveredBlock8Value17 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value18 := (recoveredBlock8Value0) add: (recoveredBlock8Value17).
    recoveredBlock8Value18
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2036a2c4; bytecode file offset 0xc66bb0"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 actionKey: recoveredArg4 enable: recoveredArg5 action: recoveredArg6 description: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) actionKey: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) enable: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) action: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) description: (recoveredBlock8Value16).
    recoveredBlock8Value17 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value18 := (recoveredBlock8Value0) add: (recoveredBlock8Value17).
    recoveredBlock8Value18
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2038ff88; bytecode file offset 0xc8c900"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addSubMenuCall: recoveredArg1 menu: recoveredArg2 submenu: recoveredArg3 item: recoveredArg4 enable: recoveredArg5 toggle: recoveredArg6 action: recoveredArg7 description: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 recoveredBlock8Value19 recoveredBlock8Value20 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := EtasToolboxCallFromSubmenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) submenu: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) item: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) enable: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) toggle: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) action: (recoveredBlock8Value16).
    recoveredBlock8Value17 := recoveredBlock8Value2.
    recoveredBlock8Value18 := recoveredArg8.
    (recoveredBlock8Value17) description: (recoveredBlock8Value18).
    recoveredBlock8Value19 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value20 := (recoveredBlock8Value0) add: (recoveredBlock8Value19).
    recoveredBlock8Value20
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2038ffcc; bytecode file offset 0xc8c900"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addSubMenuCall: recoveredArg1 menu: recoveredArg2 submenu: recoveredArg3 item: recoveredArg4 id: recoveredArg5 enable: recoveredArg6 action: recoveredArg7 description: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 recoveredBlock8Value19 recoveredBlock8Value20 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := EtasToolboxCallFromSubmenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) submenu: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) item: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) identifier: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) enable: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) action: (recoveredBlock8Value16).
    recoveredBlock8Value17 := recoveredBlock8Value2.
    recoveredBlock8Value18 := recoveredArg8.
    (recoveredBlock8Value17) description: (recoveredBlock8Value18).
    recoveredBlock8Value19 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value20 := (recoveredBlock8Value0) add: (recoveredBlock8Value19).
    recoveredBlock8Value20
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20390010; bytecode file offset 0xc8c900"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 actionKey: recoveredArg4 enable: recoveredArg5 toggle: recoveredArg6 action: recoveredArg7 description: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 recoveredBlock8Value19 recoveredBlock8Value20 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) item: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) actionKey: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) enable: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) toggle: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) action: (recoveredBlock8Value16).
    recoveredBlock8Value17 := recoveredBlock8Value2.
    recoveredBlock8Value18 := recoveredArg8.
    (recoveredBlock8Value17) description: (recoveredBlock8Value18).
    recoveredBlock8Value19 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value20 := (recoveredBlock8Value0) add: (recoveredBlock8Value19).
    recoveredBlock8Value20
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203b5830; bytecode file offset 0xcb2124"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addSubMenuCall: recoveredArg1 menu: recoveredArg2 submenu: recoveredArg3 item: recoveredArg4 id: recoveredArg5 enable: recoveredArg6 toggle: recoveredArg7 action: recoveredArg8 description: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 recoveredBlock8Value14 recoveredBlock8Value15 recoveredBlock8Value16 recoveredBlock8Value17 recoveredBlock8Value18 recoveredBlock8Value19 recoveredBlock8Value20 recoveredBlock8Value21 recoveredBlock8Value22 |
    recoveredBlock8Value0 := (self) menuCalls.
    recoveredBlock8Value1 := EtasToolboxCallFromSubmenu.
    recoveredBlock8Value2 := (recoveredBlock8Value1) create.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredBlock8Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Value3) caller: (recoveredBlock8Value4).
    recoveredBlock8Value5 := recoveredBlock8Value2.
    recoveredBlock8Value6 := recoveredArg2.
    (recoveredBlock8Value5) menu: (recoveredBlock8Value6).
    recoveredBlock8Value7 := recoveredBlock8Value2.
    recoveredBlock8Value8 := recoveredArg3.
    (recoveredBlock8Value7) submenu: (recoveredBlock8Value8).
    recoveredBlock8Value9 := recoveredBlock8Value2.
    recoveredBlock8Value10 := recoveredArg4.
    (recoveredBlock8Value9) item: (recoveredBlock8Value10).
    recoveredBlock8Value11 := recoveredBlock8Value2.
    recoveredBlock8Value12 := recoveredArg5.
    (recoveredBlock8Value11) identifier: (recoveredBlock8Value12).
    recoveredBlock8Value13 := recoveredBlock8Value2.
    recoveredBlock8Value14 := recoveredArg6.
    (recoveredBlock8Value13) enable: (recoveredBlock8Value14).
    recoveredBlock8Value15 := recoveredBlock8Value2.
    recoveredBlock8Value16 := recoveredArg7.
    (recoveredBlock8Value15) toggle: (recoveredBlock8Value16).
    recoveredBlock8Value17 := recoveredBlock8Value2.
    recoveredBlock8Value18 := recoveredArg8.
    (recoveredBlock8Value17) action: (recoveredBlock8Value18).
    recoveredBlock8Value19 := recoveredBlock8Value2.
    recoveredBlock8Value20 := recoveredArg9.
    (recoveredBlock8Value19) description: (recoveredBlock8Value20).
    recoveredBlock8Value21 := (recoveredBlock8Value2) toolbox: (self).
    recoveredBlock8Value22 := (recoveredBlock8Value0) add: (recoveredBlock8Value21).
    recoveredBlock8Value22
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203d689c; bytecode file offset 0xcd31d8"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 enable: recoveredArg4 toggle: recoveredArg5 action: recoveredArg6 description: recoveredArg7 isDynamicMenu: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) menuCalls.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := RBToolboxCallFromMenu.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) create.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) caller: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) menu: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg3.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            (recoveredBlock8Stack2) item: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg4.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            (recoveredBlock8Stack2) enable: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg5.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            (recoveredBlock8Stack2) toggle: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg6.
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            (recoveredBlock8Stack2) action: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg7.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            (recoveredBlock8Stack2) description: (recoveredBlock8Stack3).
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) toolbox: (recoveredBlock8Stack2).
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            (recoveredBlock8Stack0) add: (recoveredBlock8Stack1).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack0 := recoveredArg8.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 72] ifFalse: [recoveredBlock8PC := 78].
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) setDynamicMenu.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) clearDynamicMenu.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203d68e4; bytecode file offset 0xcd31d8"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addSubMenuCall: recoveredArg1 menu: recoveredArg2 submenu: recoveredArg3 item: recoveredArg4 enable: recoveredArg5 action: recoveredArg6 description: recoveredArg7 isDynamicMenu: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) menuCalls.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := EtasToolboxCallFromSubmenu.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) create.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) caller: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) menu: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg3.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            (recoveredBlock8Stack2) submenu: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg4.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            (recoveredBlock8Stack2) item: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg5.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            (recoveredBlock8Stack2) enable: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg6.
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            (recoveredBlock8Stack2) action: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg7.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            (recoveredBlock8Stack2) description: (recoveredBlock8Stack3).
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) toolbox: (recoveredBlock8Stack2).
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            (recoveredBlock8Stack0) add: (recoveredBlock8Stack1).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack0 := recoveredArg8.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 72] ifFalse: [recoveredBlock8PC := 78].
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) setDynamicMenu.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) clearDynamicMenu.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2048e1c0; bytecode file offset 0xd8aac4"
!EtasToolboxDescriptor methodsFor: 'recovered'!
addMenuCall: recoveredArg1 menu: recoveredArg2 item: recoveredArg3 enable: recoveredArg4 action: recoveredArg5 description: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCallerCollFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := ('Kli') == ('Call_64767').
    recoveredBlock8Value1 := (self) menuCalls.
    recoveredBlock8Value2 := [:recoveredBlock8Block21Arg1 | 
    | recoveredBlock8Block21Stack0 recoveredBlock8Block21Stack1 recoveredBlock8Block21Stack2 recoveredBlock8Block21Stack3 recoveredBlock8Block21Stack4 recoveredBlock8Block21PC recoveredBlock8Block21Step recoveredBlock8Block21Done recoveredBlock8Block21Result |
    recoveredBlock8Block21Stack0 := nil.
    recoveredBlock8Block21PC := 28.
    recoveredBlock8Block21Done := false.
    [recoveredBlock8Block21Done not] whileTrue: [
        recoveredBlock8Block21Step := recoveredBlock8Block21PC.
        recoveredBlock8Block21Step = 28 ifTrue: [
            recoveredBlock8Block21Stack1 := false.
            recoveredBlock8Block21PC := 29.
        ].
        recoveredBlock8Block21Step = 29 ifTrue: [
            recoveredBlock8Block21Stack2 := recoveredBlock8Block21Arg1.
            recoveredBlock8Block21PC := 30.
        ].
        recoveredBlock8Block21Step = 30 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) caller.
            recoveredBlock8Block21PC := 32.
        ].
        recoveredBlock8Block21Step = 32 ifTrue: [
            recoveredBlock8Block21Stack3 := recoveredBlock8Arg1.
            recoveredBlock8Block21PC := 35.
        ].
        recoveredBlock8Block21Step = 35 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) = (recoveredBlock8Block21Stack3).
            recoveredBlock8Block21PC := 36.
        ].
        recoveredBlock8Block21Step = 36 ifTrue: [
            (recoveredBlock8Block21Stack2) ifTrue: [recoveredBlock8Block21PC := 40] ifFalse: [recoveredBlock8Block21PC := 71].
        ].
        recoveredBlock8Block21Step = 40 ifTrue: [
            recoveredBlock8Block21PC := 41.
        ].
        recoveredBlock8Block21Step = 41 ifTrue: [
            recoveredBlock8Block21Stack1 := false.
            recoveredBlock8Block21PC := 42.
        ].
        recoveredBlock8Block21Step = 42 ifTrue: [
            recoveredBlock8Block21Stack2 := recoveredBlock8Block21Arg1.
            recoveredBlock8Block21PC := 43.
        ].
        recoveredBlock8Block21Step = 43 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) menu.
            recoveredBlock8Block21PC := 45.
        ].
        recoveredBlock8Block21Step = 45 ifTrue: [
            recoveredBlock8Block21Stack3 := recoveredArg2.
            recoveredBlock8Block21PC := 48.
        ].
        recoveredBlock8Block21Step = 48 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) = (recoveredBlock8Block21Stack3).
            recoveredBlock8Block21PC := 49.
        ].
        recoveredBlock8Block21Step = 49 ifTrue: [
            (recoveredBlock8Block21Stack2) ifTrue: [recoveredBlock8Block21PC := 52] ifFalse: [recoveredBlock8Block21PC := 71].
        ].
        recoveredBlock8Block21Step = 52 ifTrue: [
            recoveredBlock8Block21PC := 53.
        ].
        recoveredBlock8Block21Step = 53 ifTrue: [
            recoveredBlock8Block21Stack1 := false.
            recoveredBlock8Block21PC := 54.
        ].
        recoveredBlock8Block21Step = 54 ifTrue: [
            recoveredBlock8Block21Stack2 := recoveredBlock8Block21Arg1.
            recoveredBlock8Block21PC := 55.
        ].
        recoveredBlock8Block21Step = 55 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) item.
            recoveredBlock8Block21PC := 57.
        ].
        recoveredBlock8Block21Step = 57 ifTrue: [
            recoveredBlock8Block21Stack3 := recoveredArg3.
            recoveredBlock8Block21PC := 60.
        ].
        recoveredBlock8Block21Step = 60 ifTrue: [
            recoveredBlock8Block21Stack2 := (recoveredBlock8Block21Stack2) = (recoveredBlock8Block21Stack3).
            recoveredBlock8Block21PC := 61.
        ].
        recoveredBlock8Block21Step = 61 ifTrue: [
            (recoveredBlock8Block21Stack2) ifTrue: [recoveredBlock8Block21PC := 64] ifFalse: [recoveredBlock8Block21PC := 71].
        ].
        recoveredBlock8Block21Step = 64 ifTrue: [
            recoveredBlock8Block21PC := 65.
        ].
        recoveredBlock8Block21Step = 65 ifTrue: [
            recoveredBlock8Block21Stack1 := recoveredBlock8Block21Arg1.
            recoveredBlock8Block21PC := 66.
        ].
        recoveredBlock8Block21Step = 66 ifTrue: [
            recoveredBlock8Block21Stack1 := (recoveredBlock8Block21Stack1) item.
            recoveredBlock8Block21PC := 68.
        ].
        recoveredBlock8Block21Step = 68 ifTrue: [
            recoveredBlock8Block21Stack2 := ''.
            recoveredBlock8Block21PC := 70.
        ].
        recoveredBlock8Block21Step = 70 ifTrue: [
            recoveredBlock8Block21Stack1 := (recoveredBlock8Block21Stack1) ~= (recoveredBlock8Block21Stack2).
            recoveredBlock8Block21PC := 71.
        ].
        recoveredBlock8Block21Step = 71 ifTrue: [
            recoveredBlock8Block21Result := recoveredBlock8Block21Stack1.
            recoveredBlock8Block21Done := true.
        ].
    ].
    recoveredBlock8Block21Result
].
    recoveredBlock8Value3 := [
    | recoveredBlock8Block72Value0 recoveredBlock8Block72Value1 recoveredBlock8Block72Value2 recoveredBlock8Block72Value3 recoveredBlock8Block72Value4 recoveredBlock8Block72Value5 recoveredBlock8Block72Value6 recoveredBlock8Block72Value7 recoveredBlock8Block72Value8 recoveredBlock8Block72Value9 recoveredBlock8Block72Value10 recoveredBlock8Block72Value11 recoveredBlock8Block72Value12 recoveredBlock8Block72Value13 recoveredBlock8Block72Value14 recoveredBlock8Block72Value15 recoveredBlock8Block72Value16 |
    recoveredBlock8Block72Value0 := (self) menuCalls.
    recoveredBlock8Block72Value1 := RBToolboxCallFromMenu.
    recoveredBlock8Block72Value2 := (recoveredBlock8Block72Value1) create.
    recoveredBlock8Block72Value3 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value4 := recoveredBlock8Arg1.
    (recoveredBlock8Block72Value3) caller: (recoveredBlock8Block72Value4).
    recoveredBlock8Block72Value5 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value6 := recoveredArg2.
    (recoveredBlock8Block72Value5) menu: (recoveredBlock8Block72Value6).
    recoveredBlock8Block72Value7 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value8 := recoveredArg3.
    (recoveredBlock8Block72Value7) item: (recoveredBlock8Block72Value8).
    recoveredBlock8Block72Value9 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value10 := recoveredArg4.
    (recoveredBlock8Block72Value9) enable: (recoveredBlock8Block72Value10).
    recoveredBlock8Block72Value11 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value12 := recoveredArg5.
    (recoveredBlock8Block72Value11) action: (recoveredBlock8Block72Value12).
    recoveredBlock8Block72Value13 := recoveredBlock8Block72Value2.
    recoveredBlock8Block72Value14 := recoveredArg6.
    (recoveredBlock8Block72Value13) description: (recoveredBlock8Block72Value14).
    recoveredBlock8Block72Value15 := (recoveredBlock8Block72Value2) toolbox: (self).
    recoveredBlock8Block72Value16 := (recoveredBlock8Block72Value0) add: (recoveredBlock8Block72Value15).
    recoveredBlock8Block72Value16
].
    recoveredBlock8Value4 := (recoveredBlock8Value1) detect: (recoveredBlock8Value2) ifNone: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

