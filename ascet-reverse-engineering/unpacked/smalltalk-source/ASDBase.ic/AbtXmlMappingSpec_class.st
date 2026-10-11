"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021128; bytecode file offset 0x92209c"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
abtXmlCacheKey
    ^'abtxmap'
! !

"ASDBase.ic method 0x2003a9a0; bytecode file offset 0x938608"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
fromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) from: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200428a4; bytecode file offset 0x93f170"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
domParserClass
    | recoveredValue0 |
    recoveredValue0 := ('AbtXmlDOMParser') abrAsClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200912f4; bytecode file offset 0x98de70"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20096ea0; bytecode file offset 0x9937fc"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) name: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20166078; bytecode file offset 0xa6293c"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
mappingClassFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) localName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ClassElementMapping'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtClassElementMapping.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtTypeElementMapping.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035d978; bytecode file offset 0xc5a260"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
fromMappingDOM: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := AbtXmlMappingSpec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) documentElement.
    recoveredValue3 := (recoveredValue2) getAttribute: ('Name').
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) documentElement.
    recoveredValue8 := (recoveredValue7) getAttribute: ('NameSpaceURI').
    (recoveredValue5) nameSpaceURI: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) rootTag.
    recoveredValue11 := (recoveredValue10) childNodes.
    recoveredValue12 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (self) mappingClassFor: (recoveredBlock37Value1).
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := recoveredLocal1.
    recoveredBlock37Value5 := (recoveredBlock37Value2) fromDOMElement: (recoveredBlock37Value3) inSet: (recoveredBlock37Value4).
    recoveredBlock37Value6 := (recoveredBlock37Value0) addMapping: (recoveredBlock37Value5).
    recoveredBlock37Value6
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x203b233c; bytecode file offset 0xcaec2c"
!AbtXmlMappingSpec class methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := (self) domParserClass.
    recoveredBlock4Value1 := (recoveredBlock4Value0) newValidatingParser.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value1) parseURI: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal2 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := SgmlException.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := ExError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 recoveredBlock27Value8 |
    recoveredBlock27Value0 := AbtXmlUtility.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) , ('-> ').
    recoveredBlock27Value3 := recoveredBlock27Arg1.
    recoveredBlock27Value4 := (recoveredBlock27Value3) argument.
    recoveredBlock27Value5 := (recoveredBlock27Value4) printString.
    recoveredBlock27Value6 := (recoveredBlock27Value2) , (recoveredBlock27Value5).
    (recoveredBlock27Value0) logError: (recoveredBlock27Value6).
    recoveredBlock27Value7 := recoveredBlock27Arg1.
    recoveredBlock27Value8 := (recoveredBlock27Value7) resumeWith: (nil).
    recoveredBlock27Value8
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromMappingDOM: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

