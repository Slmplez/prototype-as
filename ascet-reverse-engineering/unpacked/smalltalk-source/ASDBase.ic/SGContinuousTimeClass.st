"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200041a0; bytecode file offset 0x90206c"
!SGContinuousTimeClass methodsFor: 'recovered'!
initDefaultMethodsForSpec: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000b5f4; bytecode file offset 0x908be4"
!SGContinuousTimeClass methodsFor: 'recovered'!
experimentMethods
    | recoveredValue0 |
    recoveredValue0 := (self) publicMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015eb4; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
allEnumValues
    ^#()
! !

"ASDBase.ic method 0x20017abc; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
getComponentType
    ^'ASCET_CTClass'
! !

"ASDBase.ic method 0x2001b128; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
getXMLType
    ^'Class'
! !

"ASDBase.ic method 0x2001cb8c; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
itemTypeLabel
    ^'CT Block'
! !

"ASDBase.ic method 0x2001dc78; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
asap2Type
    ^'VALUE'
! !

"ASDBase.ic method 0x2001e1d0; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
publicMethodsForGraphics
    ^#()
! !

"ASDBase.ic method 0x2001ecb0; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
classType
    ^'CtClass'
! !

"ASDBase.ic method 0x20025280; bytecode file offset 0x92209c"
!SGContinuousTimeClass methodsFor: 'recovered'!
iconName
    ^'ComponentsContinuousTimeblock'
! !

"ASDBase.ic method 0x20025f0c; bytecode file offset 0x923928"
!SGContinuousTimeClass methodsFor: 'recovered'!
editorIconName
    ^'ComponentsContinuousTimeblock'
! !

"ASDBase.ic method 0x2002d174; bytecode file offset 0x934580"
!SGContinuousTimeClass methodsFor: 'recovered'!
isNondirect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) isNondirect.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037cdc; bytecode file offset 0x934768"
!SGContinuousTimeClass methodsFor: 'recovered'!
isDirect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) isDirect.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065678; bytecode file offset 0x962104"
!SGContinuousTimeClass methodsFor: 'recovered'!
additionalStructMethodsForGraphics
    | recoveredValue0 |
    recoveredValue0 := super additionalStructMethodsForGraphics.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075534; bytecode file offset 0x9757c8"
!SGContinuousTimeClass methodsFor: 'recovered'!
isCTClass
    ^true
! !

"ASDBase.ic method 0x20076de4; bytecode file offset 0x9757c8"
!SGContinuousTimeClass methodsFor: 'recovered'!
standaloneCode
    ^true
! !

"ASDBase.ic method 0x2007a76c; bytecode file offset 0x97c330"
!SGContinuousTimeClass methodsFor: 'recovered'!
isDIFFComparable
    ^false
! !

"ASDBase.ic method 0x2007a80c; bytecode file offset 0x97c330"
!SGContinuousTimeClass methodsFor: 'recovered'!
getSetAvailable
    ^false
! !

"ASDBase.ic method 0x20087cf8; bytecode file offset 0x9845b8"
!SGContinuousTimeClass methodsFor: 'recovered'!
possibleSignatureTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := SGMethod.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ba14; bytecode file offset 0x9982d8"
!SGContinuousTimeClass methodsFor: 'recovered'!
initGraphics
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGContTimeCodeGO.
    recoveredValue1 := (recoveredValue0) createDefault: ('Dummy').
    recoveredValue2 := (self) graphicObject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20104480; bytecode file offset 0xa00d64"
!SGContinuousTimeClass methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := SGContinuousTimeClass.
    recoveredValue2 := SGClass.
    recoveredValue3 := ASDRecord.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201cb860; bytecode file offset 0xac812c"
!SGContinuousTimeClass methodsFor: 'recovered'!
xmlMethodsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'XMLExport'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d5030Arg1 :block280d5030Arg2 | 
    | block280d5030Value0 block280d5030Value1 block280d5030Value2 block280d5030Value3 block280d5030Value4 |
    block280d5030Value0 := block280d5030Arg1.
    block280d5030Value1 := (block280d5030Value0) methodName.
    block280d5030Value2 := block280d5030Arg2.
    block280d5030Value3 := (block280d5030Value2) methodName.
    block280d5030Value4 := (block280d5030Value1) < (block280d5030Value3).
    block280d5030Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202013c0; bytecode file offset 0xafdc84"
!SGContinuousTimeClass methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isAtomicSoftwareComponent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isARDataInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClientServerInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcessClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a4c4; bytecode file offset 0xb16db0"
!SGContinuousTimeClass methodsFor: 'recovered'!
directMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) methodsForClass: (self).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) methodName.
    recoveredBlock7Value2 := (self) class.
    recoveredBlock7Value3 := (recoveredBlock7Value2) directOutputMethodName.
    recoveredBlock7Value4 := (recoveredBlock7Value1) = (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021a4e4; bytecode file offset 0xb16db0"
!SGContinuousTimeClass methodsFor: 'recovered'!
nondirectMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) methodsForClass: (self).
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) methodName.
    recoveredBlock7Value2 := (self) class.
    recoveredBlock7Value3 := (recoveredBlock7Value2) nondirectOutputMethodName.
    recoveredBlock7Value4 := (recoveredBlock7Value1) = (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202316dc; bytecode file offset 0xb2dfac"
!SGContinuousTimeClass methodsFor: 'recovered'!
apiClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdSpecification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasAPICTBlockBDE.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCCodeSpecification.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EtasAPICTBlockC.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDLSpecification.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := EtasAPICTBlockESDL.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c685c; bytecode file offset 0xbc312c"
!SGContinuousTimeClass methodsFor: 'recovered'!
switchToDirect: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasHandwrittenCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirect.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputOutputVariablesForAccess.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := (recoveredBlock24Value0) changeDirectTo: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) setDirect: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20330310; bytecode file offset 0xc2cc1c"
!SGContinuousTimeClass methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super createInfoWidget: (recoveredStack1) parent: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredBlock34Value0.
    recoveredBlock34Value2 := recoveredArg3.
    (recoveredBlock34Value1) owner: (recoveredBlock34Value2).
    recoveredBlock34Value3 := (recoveredBlock34Value0) item: (self).
    recoveredBlock34Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasNotebookComponentLayoutWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041d098; bytecode file offset 0xd1998c"
!SGContinuousTimeClass methodsFor: 'recovered'!
printComponentAttributesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    (recoveredValue0) nextPutAll: ('BEGIN component').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) nextPutAll: ('class: "').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) label.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) nextPutAll: ('"').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) tab.
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) nextPutAll: ('isCTClass: ').
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := (self) isCTClass.
    recoveredValue13 := (recoveredValue12) asString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) tab.
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) nextPutAll: ('isDirect: ').
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := (self) isDirect.
    recoveredValue19 := (recoveredValue18) asString.
    (recoveredValue17) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) tab.
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) nextPutAll: ('isNondirect: ').
    recoveredValue23 := (self) isNondirect.
    recoveredValue24 := (recoveredValue23) asString.
    (recoveredValue2) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    (self) printElementAttributesOn: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) cr.
    (recoveredValue26) nextPutAll: ('END component').
    ^self
! !

"ASDBase.ic method 0x205ea4a4; bytecode file offset 0xee6e1c"
!SGContinuousTimeClass methodsFor: 'recovered'!
printElementAttributesOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2811b204Arg1 :block2811b204Arg2 | 
    | block2811b204Value0 block2811b204Value1 block2811b204Value2 block2811b204Value3 block2811b204Value4 |
    block2811b204Value0 := block2811b204Arg1.
    block2811b204Value1 := (block2811b204Value0) elementName.
    block2811b204Value2 := block2811b204Arg2.
    block2811b204Value3 := (block2811b204Value2) elementName.
    block2811b204Value4 := (block2811b204Value1) < (block2811b204Value3).
    block2811b204Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'BEGIN elements'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack3 := 'element: "'.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) elementName.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack3 := '"'.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 68.
        ].
        recoveredBlock40Step = 68 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack3 := 'isCTContinuous: '.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 79.
        ].
        recoveredBlock40Step = 79 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTContinuous.
            recoveredBlock40PC := 82.
        ].
        recoveredBlock40Step = 82 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 84.
        ].
        recoveredBlock40Step = 84 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 90.
        ].
        recoveredBlock40Step = 90 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 93.
        ].
        recoveredBlock40Step = 93 ifTrue: [
            recoveredBlock40Stack3 := 'isCTDependentParameter: '.
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 98.
        ].
        recoveredBlock40Step = 98 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTDependentParameter.
            recoveredBlock40PC := 101.
        ].
        recoveredBlock40Step = 101 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 103.
        ].
        recoveredBlock40Step = 103 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 106.
        ].
        recoveredBlock40Step = 106 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 109.
        ].
        recoveredBlock40Step = 109 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 112.
        ].
        recoveredBlock40Step = 112 ifTrue: [
            recoveredBlock40Stack3 := 'isCTDerivative: '.
            recoveredBlock40PC := 114.
        ].
        recoveredBlock40Step = 114 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 117.
        ].
        recoveredBlock40Step = 117 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 118.
        ].
        recoveredBlock40Step = 118 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTDerivative.
            recoveredBlock40PC := 120.
        ].
        recoveredBlock40Step = 120 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 122.
        ].
        recoveredBlock40Step = 122 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 125.
        ].
        recoveredBlock40Step = 125 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 128.
        ].
        recoveredBlock40Step = 128 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 131.
        ].
        recoveredBlock40Step = 131 ifTrue: [
            recoveredBlock40Stack3 := 'isCTDirect: '.
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 136.
        ].
        recoveredBlock40Step = 136 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 137.
        ].
        recoveredBlock40Step = 137 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTDirect.
            recoveredBlock40PC := 139.
        ].
        recoveredBlock40Step = 139 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 141.
        ].
        recoveredBlock40Step = 141 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 144.
        ].
        recoveredBlock40Step = 144 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 147.
        ].
        recoveredBlock40Step = 147 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 150.
        ].
        recoveredBlock40Step = 150 ifTrue: [
            recoveredBlock40Stack3 := 'isCTDiscrete: '.
            recoveredBlock40PC := 152.
        ].
        recoveredBlock40Step = 152 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 155.
        ].
        recoveredBlock40Step = 155 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 156.
        ].
        recoveredBlock40Step = 156 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTDiscrete.
            recoveredBlock40PC := 158.
        ].
        recoveredBlock40Step = 158 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 160.
        ].
        recoveredBlock40Step = 160 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 163.
        ].
        recoveredBlock40Step = 163 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 166.
        ].
        recoveredBlock40Step = 166 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 169.
        ].
        recoveredBlock40Step = 169 ifTrue: [
            recoveredBlock40Stack3 := 'isCTElement: '.
            recoveredBlock40PC := 171.
        ].
        recoveredBlock40Step = 171 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 174.
        ].
        recoveredBlock40Step = 174 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 175.
        ].
        recoveredBlock40Step = 175 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTElement.
            recoveredBlock40PC := 177.
        ].
        recoveredBlock40Step = 177 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 180.
        ].
        recoveredBlock40Step = 180 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 183.
        ].
        recoveredBlock40Step = 183 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 186.
        ].
        recoveredBlock40Step = 186 ifTrue: [
            recoveredBlock40Stack3 := 'isCTIndependentParameter: '.
            recoveredBlock40PC := 188.
        ].
        recoveredBlock40Step = 188 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 191.
        ].
        recoveredBlock40Step = 191 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 192.
        ].
        recoveredBlock40Step = 192 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTIndependentParameter.
            recoveredBlock40PC := 194.
        ].
        recoveredBlock40Step = 194 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 196.
        ].
        recoveredBlock40Step = 196 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 199.
        ].
        recoveredBlock40Step = 199 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 202.
        ].
        recoveredBlock40Step = 202 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 205.
        ].
        recoveredBlock40Step = 205 ifTrue: [
            recoveredBlock40Stack3 := 'isCTInput: '.
            recoveredBlock40PC := 207.
        ].
        recoveredBlock40Step = 207 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 210.
        ].
        recoveredBlock40Step = 210 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 211.
        ].
        recoveredBlock40Step = 211 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTInput.
            recoveredBlock40PC := 213.
        ].
        recoveredBlock40Step = 213 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 215.
        ].
        recoveredBlock40Step = 215 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 218.
        ].
        recoveredBlock40Step = 218 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 221.
        ].
        recoveredBlock40Step = 221 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 224.
        ].
        recoveredBlock40Step = 224 ifTrue: [
            recoveredBlock40Stack3 := 'isCTNondirect: '.
            recoveredBlock40PC := 226.
        ].
        recoveredBlock40Step = 226 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 229.
        ].
        recoveredBlock40Step = 229 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 230.
        ].
        recoveredBlock40Step = 230 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTNondirect.
            recoveredBlock40PC := 232.
        ].
        recoveredBlock40Step = 232 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 234.
        ].
        recoveredBlock40Step = 234 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 237.
        ].
        recoveredBlock40Step = 237 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 240.
        ].
        recoveredBlock40Step = 240 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 243.
        ].
        recoveredBlock40Step = 243 ifTrue: [
            recoveredBlock40Stack3 := 'isCTOutput: '.
            recoveredBlock40PC := 245.
        ].
        recoveredBlock40Step = 245 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 248.
        ].
        recoveredBlock40Step = 248 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 249.
        ].
        recoveredBlock40Step = 249 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTOutput.
            recoveredBlock40PC := 251.
        ].
        recoveredBlock40Step = 251 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 253.
        ].
        recoveredBlock40Step = 253 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 256.
        ].
        recoveredBlock40Step = 256 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 259.
        ].
        recoveredBlock40Step = 259 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 262.
        ].
        recoveredBlock40Step = 262 ifTrue: [
            recoveredBlock40Stack3 := 'isCTStepLocal: '.
            recoveredBlock40PC := 264.
        ].
        recoveredBlock40Step = 264 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 267.
        ].
        recoveredBlock40Step = 267 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 268.
        ].
        recoveredBlock40Step = 268 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isCTStepLocal.
            recoveredBlock40PC := 270.
        ].
        recoveredBlock40Step = 270 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 272.
        ].
        recoveredBlock40Step = 272 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 275.
        ].
        recoveredBlock40Step = 275 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 278.
        ].
        recoveredBlock40Step = 278 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 281.
        ].
        recoveredBlock40Step = 281 ifTrue: [
            recoveredBlock40Stack3 := 'isDirect: '.
            recoveredBlock40PC := 283.
        ].
        recoveredBlock40Step = 283 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 286.
        ].
        recoveredBlock40Step = 286 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 287.
        ].
        recoveredBlock40Step = 287 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isDirect.
            recoveredBlock40PC := 289.
        ].
        recoveredBlock40Step = 289 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 291.
        ].
        recoveredBlock40Step = 291 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 294.
        ].
        recoveredBlock40Step = 294 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 297.
        ].
        recoveredBlock40Step = 297 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 300.
        ].
        recoveredBlock40Step = 300 ifTrue: [
            recoveredBlock40Stack3 := 'isInput: '.
            recoveredBlock40PC := 302.
        ].
        recoveredBlock40Step = 302 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 305.
        ].
        recoveredBlock40Step = 305 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 306.
        ].
        recoveredBlock40Step = 306 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isInput.
            recoveredBlock40PC := 308.
        ].
        recoveredBlock40Step = 308 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 310.
        ].
        recoveredBlock40Step = 310 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 313.
        ].
        recoveredBlock40Step = 313 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 316.
        ].
        recoveredBlock40Step = 316 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 319.
        ].
        recoveredBlock40Step = 319 ifTrue: [
            recoveredBlock40Stack3 := 'isNondirect: '.
            recoveredBlock40PC := 321.
        ].
        recoveredBlock40Step = 321 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 324.
        ].
        recoveredBlock40Step = 324 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Arg1.
            recoveredBlock40PC := 325.
        ].
        recoveredBlock40Step = 325 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) isNondirect.
            recoveredBlock40PC := 327.
        ].
        recoveredBlock40Step = 327 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) asString.
            recoveredBlock40PC := 329.
        ].
        recoveredBlock40Step = 329 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 332.
        ].
        recoveredBlock40Step = 332 ifTrue: [
            (recoveredBlock40Stack2) cr.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 335.
        ].
        recoveredBlock40Step = 335 ifTrue: [
            (recoveredBlock40Stack2) tab.
            recoveredBlock40Stack2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 338.
        ].
        recoveredBlock40Step = 338 ifTrue: [
            recoveredBlock40Stack3 := 'isOutput: '.
            recoveredBlock40PC := 340.
        ].
        recoveredBlock40Step = 340 ifTrue: [
            (recoveredBlock40Stack2) nextPutAll: (recoveredBlock40Stack3).
            recoveredBlock40PC := 342.
        ].
        recoveredBlock40Step = 342 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 343.
        ].
        recoveredBlock40Step = 343 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isOutput.
            recoveredBlock40PC := 345.
        ].
        recoveredBlock40Step = 345 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) asString.
            recoveredBlock40PC := 347.
        ].
        recoveredBlock40Step = 347 ifTrue: [
            (recoveredBlock40Stack1) nextPutAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 349.
        ].
        recoveredBlock40Step = 349 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 350.
        ].
        recoveredBlock40Step = 350 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 351.
        ].
        recoveredBlock40Step = 351 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isUserDefined.
            recoveredBlock40PC := 353.
        ].
        recoveredBlock40Step = 353 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 356] ifFalse: [recoveredBlock40PC := 365].
        ].
        recoveredBlock40Step = 356 ifTrue: [
            recoveredBlock40PC := 357.
        ].
        recoveredBlock40Step = 357 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 360.
        ].
        recoveredBlock40Step = 360 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 361.
        ].
        recoveredBlock40Step = 361 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sgClass.
            recoveredBlock40PC := 363.
        ].
        recoveredBlock40Step = 363 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 365.
        ].
        recoveredBlock40Step = 365 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := 'END elements'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Value0 recoveredBlock381Value1 recoveredBlock381Value2 |
    recoveredBlock381Value0 := recoveredBlock381Arg1.
    recoveredBlock381Value1 := recoveredArg1.
    recoveredBlock381Value2 := (recoveredBlock381Value0) printComponentAttributesOn: (recoveredBlock381Value1).
    recoveredBlock381Value2
].
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

