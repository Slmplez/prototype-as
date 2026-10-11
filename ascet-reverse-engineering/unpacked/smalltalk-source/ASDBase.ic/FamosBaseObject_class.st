"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036ea4; bytecode file offset 0x934580"
!FamosBaseObject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004912c; bytecode file offset 0x9459f8"
!FamosBaseObject class methodsFor: 'recovered'!
cleanupInstances
    indexReference := nil.
    ^self
! !

"ASDBase.ic method 0x2006f5e0; bytecode file offset 0x96bf7c"
!FamosBaseObject class methodsFor: 'recovered'!
indexReference
    | recoveredValue0 |
    recoveredValue0 := indexReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20080c70; bytecode file offset 0x97d52c"
!FamosBaseObject class methodsFor: 'recovered'!
endChar
    ^$;
! !

"ASDBase.ic method 0x20080e28; bytecode file offset 0x97d6ec"
!FamosBaseObject class methodsFor: 'recovered'!
separatorChar
    ^$,
! !

"ASDBase.ic method 0x20080e54; bytecode file offset 0x97d718"
!FamosBaseObject class methodsFor: 'recovered'!
startChar
    ^$|
! !

"ASDBase.ic method 0x200899f8; bytecode file offset 0x9862c4"
!FamosBaseObject class methodsFor: 'recovered'!
initializeIndexReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    indexReference := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201cacac; bytecode file offset 0xac757c"
!FamosBaseObject class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d4fc4Arg1 | 
    | block280d4fc4Value0 block280d4fc4Value1 |
    block280d4fc4Value0 := block280d4fc4Arg1.
    block280d4fc4Value1 := (block280d4fc4Value0) initializeIndexReference.
    block280d4fc4Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            WriteBinary := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202873c0; bytecode file offset 0xb83c90"
!FamosBaseObject class methodsFor: 'recovered'!
getIndexReferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allSubclasses.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) indexReference.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isEmpty.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 35] ifFalse: [recoveredBlock11PC := 26].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) indexReference.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20379e34; bytecode file offset 0xc766fc"
!FamosBaseObject class methodsFor: 'recovered'!
createObjectReferencesFor: recoveredArg1 getMethod: recoveredArg2 with: recoveredArg3 getMethod: recoveredArg4 setMethod: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg3.
    recoveredBlock7Value1 := [:recoveredBlock7Block17Arg1 | 
    | recoveredBlock7Block17Stack0 recoveredBlock7Block17Stack1 recoveredBlock7Block17Stack2 recoveredBlock7Block17Stack3 recoveredBlock7Block17Stack4 recoveredBlock7Block17Stack5 recoveredBlock7Block17Stack6 recoveredBlock7Block17PC recoveredBlock7Block17Step recoveredBlock7Block17Done recoveredBlock7Block17Result |
    recoveredBlock7Block17Stack0 := nil.
    recoveredBlock7Block17PC := 24.
    recoveredBlock7Block17Done := false.
    [recoveredBlock7Block17Done not] whileTrue: [
        recoveredBlock7Block17Step := recoveredBlock7Block17PC.
        recoveredBlock7Block17Step = 24 ifTrue: [
            recoveredBlock7Block17Stack1 := nil.
            recoveredBlock7Block17PC := 25.
        ].
        recoveredBlock7Block17Step = 25 ifTrue: [
            recoveredBlock7Block17Stack2 := recoveredBlock7Arg1.
            recoveredBlock7Block17PC := 28.
        ].
        recoveredBlock7Block17Step = 28 ifTrue: [
            recoveredBlock7Block17Stack3 := recoveredArg2.
            recoveredBlock7Block17PC := 31.
        ].
        recoveredBlock7Block17Step = 31 ifTrue: [
            recoveredBlock7Block17Stack2 := (recoveredBlock7Block17Stack2) perform: (recoveredBlock7Block17Stack3).
            recoveredBlock7Block17PC := 32.
        ].
        recoveredBlock7Block17Step = 32 ifTrue: [
            recoveredBlock7Block17Stack3 := recoveredBlock7Block17Stack2.
            recoveredBlock7Block17PC := 33.
        ].
        recoveredBlock7Block17Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock7Block17Stack3.
            recoveredBlock7Block17PC := 36.
        ].
        recoveredBlock7Block17Step = 36 ifTrue: [
            recoveredBlock7Block17Stack3 := recoveredBlock7Block17Arg1.
            recoveredBlock7Block17PC := 37.
        ].
        recoveredBlock7Block17Step = 37 ifTrue: [
            recoveredBlock7Block17Stack4 := recoveredArg4.
            recoveredBlock7Block17PC := 40.
        ].
        recoveredBlock7Block17Step = 40 ifTrue: [
            recoveredBlock7Block17Stack3 := (recoveredBlock7Block17Stack3) perform: (recoveredBlock7Block17Stack4).
            recoveredBlock7Block17PC := 41.
        ].
        recoveredBlock7Block17Step = 41 ifTrue: [
            recoveredBlock7Block17Stack2 := (recoveredBlock7Block17Stack2) = (recoveredBlock7Block17Stack3).
            recoveredBlock7Block17PC := 42.
        ].
        recoveredBlock7Block17Step = 42 ifTrue: [
            (recoveredBlock7Block17Stack2) ifTrue: [recoveredBlock7Block17PC := 46] ifFalse: [recoveredBlock7Block17PC := 63].
        ].
        recoveredBlock7Block17Step = 46 ifTrue: [
            recoveredBlock7Block17PC := 47.
        ].
        recoveredBlock7Block17Step = 47 ifTrue: [
            recoveredBlock7Block17Stack1 := recoveredBlock7Arg1.
            recoveredBlock7Block17PC := 50.
        ].
        recoveredBlock7Block17Step = 50 ifTrue: [
            recoveredBlock7Block17Stack2 := recoveredArg5.
            recoveredBlock7Block17PC := 53.
        ].
        recoveredBlock7Block17Step = 53 ifTrue: [
            recoveredBlock7Block17Stack3 := Association.
            recoveredBlock7Block17PC := 55.
        ].
        recoveredBlock7Block17Step = 55 ifTrue: [
            recoveredBlock7Block17Stack4 := recoveredLocal1.
            recoveredBlock7Block17PC := 58.
        ].
        recoveredBlock7Block17Step = 58 ifTrue: [
            recoveredBlock7Block17Stack5 := recoveredBlock7Block17Arg1.
            recoveredBlock7Block17PC := 59.
        ].
        recoveredBlock7Block17Step = 59 ifTrue: [
            recoveredBlock7Block17Stack3 := (recoveredBlock7Block17Stack3) key: (recoveredBlock7Block17Stack4) value: (recoveredBlock7Block17Stack5).
            recoveredBlock7Block17PC := 61.
        ].
        recoveredBlock7Block17Step = 61 ifTrue: [
            recoveredBlock7Block17Stack1 := (recoveredBlock7Block17Stack1) perform: (recoveredBlock7Block17Stack2) with: (recoveredBlock7Block17Stack3).
            recoveredBlock7Block17PC := 63.
        ].
        recoveredBlock7Block17Step = 63 ifTrue: [
            recoveredBlock7Block17Result := recoveredBlock7Block17Stack1.
            recoveredBlock7Block17Done := true.
        ].
    ].
    recoveredBlock7Block17Result
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) do: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204423bc; bytecode file offset 0xd3ecb4"
!FamosBaseObject class methodsFor: 'recovered'!
dataAccessClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (20).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DBU8Item.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := DBS8Item.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := DBU16Item.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := DBS16Item.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := DBU32Item.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := DBS32Item.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := DBF4Item.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := DBF8Item.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := DB16BitItem.
    (recoveredValue19) at: (11) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := DB8BitItem.
    (recoveredValue21) at: (18) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := DB32BitItem.
    (recoveredValue23) at: (19) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := DB64BitItem.
    (recoveredValue25) at: (20) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := DBU64Item.
    (recoveredValue27) at: (16) put: (recoveredValue28).
    recoveredValue29 := DBS64Item.
    (recoveredValue2) at: (17) put: (recoveredValue29).
    recoveredValue30 := recoveredLocal1.
    ^recoveredValue30
! !

"ASDBase.ic method 0x205fed28; bytecode file offset 0xefb648"
!FamosBaseObject class methodsFor: 'recovered'!
createObjectReferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) getIndexReferences.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := FamosText.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := FamosGroupDefinition.
    recoveredBlock13Value2 := [:recoveredBlock13Block25Arg1 | 
    | recoveredBlock13Block25Value0 recoveredBlock13Block25Value1 recoveredBlock13Block25Value2 |
    recoveredBlock13Block25Value0 := recoveredBlock13Arg1.
    recoveredBlock13Block25Value1 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Value2 := (self) createObjectReferencesFor: (recoveredBlock13Block25Value0) getMethod: ('groupIndex') with: (recoveredBlock13Block25Value1) getMethod: ('groupIndex') setMethod: ('groupIndex:').
    recoveredBlock13Block25Value2
].
    recoveredBlock13Value3 := (recoveredBlock13Value0) at: (recoveredBlock13Value1) ifPresent: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue1) at: (recoveredValue2) ifPresent: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := FamosChannel.
    recoveredValue6 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 |
    recoveredBlock56Value0 := recoveredLocal1.
    recoveredBlock56Value1 := FamosGroupDefinition.
    recoveredBlock56Value2 := [:recoveredBlock56Block67Arg1 | 
    | recoveredBlock56Block67Value0 recoveredBlock56Block67Value1 recoveredBlock56Block67Value2 |
    recoveredBlock56Block67Value0 := recoveredBlock56Arg1.
    recoveredBlock56Block67Value1 := recoveredBlock56Block67Arg1.
    recoveredBlock56Block67Value2 := (self) createObjectReferencesFor: (recoveredBlock56Block67Value0) getMethod: ('groupIndex') with: (recoveredBlock56Block67Value1) getMethod: ('groupIndex') setMethod: ('groupIndex:').
    recoveredBlock56Block67Value2
].
    recoveredBlock56Value3 := (recoveredBlock56Value0) at: (recoveredBlock56Value1) ifPresent: (recoveredBlock56Value2).
    recoveredBlock56Value3
].
    (recoveredValue4) at: (recoveredValue5) ifPresent: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := FamosUserDefinedKey.
    recoveredValue9 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 |
    recoveredBlock98Value0 := recoveredLocal1.
    recoveredBlock98Value1 := FamosGroupDefinition.
    recoveredBlock98Value2 := [:recoveredBlock98Block109Arg1 | 
    | recoveredBlock98Block109Value0 recoveredBlock98Block109Value1 recoveredBlock98Block109Value2 |
    recoveredBlock98Block109Value0 := recoveredBlock98Arg1.
    recoveredBlock98Block109Value1 := recoveredBlock98Block109Arg1.
    recoveredBlock98Block109Value2 := (self) createObjectReferencesFor: (recoveredBlock98Block109Value0) getMethod: ('groupIndex') with: (recoveredBlock98Block109Value1) getMethod: ('groupIndex') setMethod: ('groupIndex:').
    recoveredBlock98Block109Value2
].
    recoveredBlock98Value3 := (recoveredBlock98Value0) at: (recoveredBlock98Value1) ifPresent: (recoveredBlock98Value2).
    recoveredBlock98Value3
].
    (recoveredValue7) at: (recoveredValue8) ifPresent: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := FamosComponentPackInfo.
    recoveredValue12 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 |
    recoveredBlock140Value0 := recoveredLocal1.
    recoveredBlock140Value1 := FamosBuffer.
    recoveredBlock140Value2 := [:recoveredBlock140Block151Arg1 | 
    | recoveredBlock140Block151Value0 recoveredBlock140Block151Value1 recoveredBlock140Block151Value2 |
    recoveredBlock140Block151Value0 := recoveredBlock140Arg1.
    recoveredBlock140Block151Value1 := [:recoveredBlock140Block151Block161Arg1 | 
    | recoveredBlock140Block151Block161Value0 recoveredBlock140Block151Block161Value1 recoveredBlock140Block151Block161Value2 |
    recoveredBlock140Block151Block161Value0 := recoveredBlock140Block151Arg1.
    recoveredBlock140Block151Block161Value1 := [:recoveredBlock140Block151Block161Block171Arg1 | 
    | recoveredBlock140Block151Block161Block171Local1 recoveredBlock140Block151Block161Block171Local2 recoveredBlock140Block151Block161Block171Local3 recoveredBlock140Block151Block161Block171Local4 recoveredBlock140Block151Block161Block171Stack0 recoveredBlock140Block151Block161Block171Stack1 recoveredBlock140Block151Block161Block171Stack2 recoveredBlock140Block151Block161Block171Stack3 recoveredBlock140Block151Block161Block171Stack4 recoveredBlock140Block151Block161Block171Stack5 recoveredBlock140Block151Block161Block171PC recoveredBlock140Block151Block161Block171Step recoveredBlock140Block151Block161Block171Done recoveredBlock140Block151Block161Block171Result |
    recoveredBlock140Block151Block161Block171Stack0 := nil.
    recoveredBlock140Block151Block161Block171PC := 178.
    recoveredBlock140Block151Block161Block171Done := false.
    [recoveredBlock140Block151Block161Block171Done not] whileTrue: [
        recoveredBlock140Block151Block161Block171Step := recoveredBlock140Block151Block161Block171PC.
        recoveredBlock140Block151Block161Block171Step = 178 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 181.
        ].
        recoveredBlock140Block151Block161Block171Step = 181 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 183.
        ].
        recoveredBlock140Block151Block161Block171Step = 183 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) isAssociation.
            recoveredBlock140Block151Block161Block171PC := 185.
        ].
        recoveredBlock140Block151Block161Block171Step = 185 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack1) ifTrue: [recoveredBlock140Block151Block161Block171PC := 188] ifFalse: [recoveredBlock140Block151Block161Block171PC := 208].
        ].
        recoveredBlock140Block151Block161Block171Step = 188 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 191.
        ].
        recoveredBlock140Block151Block161Block171Step = 191 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 193.
        ].
        recoveredBlock140Block151Block161Block171Step = 193 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) key.
            recoveredBlock140Block151Block161Block171PC := 195.
        ].
        recoveredBlock140Block151Block161Block171Step = 195 ifTrue: [
            recoveredBlock140Block151Block161Block171Local4 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 196.
        ].
        recoveredBlock140Block151Block161Block171Step = 196 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 199.
        ].
        recoveredBlock140Block151Block161Block171Step = 199 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 201.
        ].
        recoveredBlock140Block151Block161Block171Step = 201 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) value.
            recoveredBlock140Block151Block161Block171PC := 203.
        ].
        recoveredBlock140Block151Block161Block171Step = 203 ifTrue: [
            recoveredBlock140Block151Block161Block171Local1 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 204.
        ].
        recoveredBlock140Block151Block161Block171Step = 204 ifTrue: [
            recoveredBlock140Block151Block161Block171PC := 219.
        ].
        recoveredBlock140Block151Block161Block171Step = 208 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 211.
        ].
        recoveredBlock140Block151Block161Block171Step = 211 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 213.
        ].
        recoveredBlock140Block151Block161Block171Step = 213 ifTrue: [
            recoveredBlock140Block151Block161Block171Local4 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 214.
        ].
        recoveredBlock140Block151Block161Block171Step = 214 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := OrderedCollection.
            recoveredBlock140Block151Block161Block171PC := 216.
        ].
        recoveredBlock140Block151Block161Block171Step = 216 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) new.
            recoveredBlock140Block151Block161Block171PC := 218.
        ].
        recoveredBlock140Block151Block161Block171Step = 218 ifTrue: [
            recoveredBlock140Block151Block161Block171Local1 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 219.
        ].
        recoveredBlock140Block151Block161Block171Step = 219 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 221.
        ].
        recoveredBlock140Block151Block161Block171Step = 221 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 223.
        ].
        recoveredBlock140Block151Block161Block171Step = 223 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) isAssociation.
            recoveredBlock140Block151Block161Block171PC := 225.
        ].
        recoveredBlock140Block151Block161Block171Step = 225 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack1) ifTrue: [recoveredBlock140Block151Block161Block171PC := 228] ifFalse: [recoveredBlock140Block151Block161Block171PC := 246].
        ].
        recoveredBlock140Block151Block161Block171Step = 228 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 230.
        ].
        recoveredBlock140Block151Block161Block171Step = 230 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 232.
        ].
        recoveredBlock140Block151Block161Block171Step = 232 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) key.
            recoveredBlock140Block151Block161Block171PC := 234.
        ].
        recoveredBlock140Block151Block161Block171Step = 234 ifTrue: [
            recoveredBlock140Block151Block161Block171Local3 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 235.
        ].
        recoveredBlock140Block151Block161Block171Step = 235 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 237.
        ].
        recoveredBlock140Block151Block161Block171Step = 237 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 239.
        ].
        recoveredBlock140Block151Block161Block171Step = 239 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) value.
            recoveredBlock140Block151Block161Block171PC := 241.
        ].
        recoveredBlock140Block151Block161Block171Step = 241 ifTrue: [
            recoveredBlock140Block151Block161Block171Local2 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 242.
        ].
        recoveredBlock140Block151Block161Block171Step = 242 ifTrue: [
            recoveredBlock140Block151Block161Block171PC := 256.
        ].
        recoveredBlock140Block151Block161Block171Step = 246 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 248.
        ].
        recoveredBlock140Block151Block161Block171Step = 248 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference.
            recoveredBlock140Block151Block161Block171PC := 250.
        ].
        recoveredBlock140Block151Block161Block171Step = 250 ifTrue: [
            recoveredBlock140Block151Block161Block171Local3 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 251.
        ].
        recoveredBlock140Block151Block161Block171Step = 251 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := OrderedCollection.
            recoveredBlock140Block151Block161Block171PC := 253.
        ].
        recoveredBlock140Block151Block161Block171Step = 253 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) new.
            recoveredBlock140Block151Block161Block171PC := 255.
        ].
        recoveredBlock140Block151Block161Block171Step = 255 ifTrue: [
            recoveredBlock140Block151Block161Block171Local2 := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171PC := 256.
        ].
        recoveredBlock140Block151Block161Block171Step = 256 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := nil.
            recoveredBlock140Block151Block161Block171PC := 257.
        ].
        recoveredBlock140Block151Block161Block171Step = 257 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := recoveredBlock140Block151Block161Block171Local4.
            recoveredBlock140Block151Block161Block171PC := 258.
        ].
        recoveredBlock140Block151Block161Block171Step = 258 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack3 := recoveredBlock140Block151Block161Block171Local3.
            recoveredBlock140Block151Block161Block171PC := 259.
        ].
        recoveredBlock140Block151Block161Block171Step = 259 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := (recoveredBlock140Block151Block161Block171Stack2) = (recoveredBlock140Block151Block161Block171Stack3).
            recoveredBlock140Block151Block161Block171PC := 260.
        ].
        recoveredBlock140Block151Block161Block171Step = 260 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack2) ifTrue: [recoveredBlock140Block151Block161Block171PC := 264] ifFalse: [recoveredBlock140Block151Block161Block171PC := 297].
        ].
        recoveredBlock140Block151Block161Block171Step = 264 ifTrue: [
            recoveredBlock140Block151Block161Block171PC := 265.
        ].
        recoveredBlock140Block151Block161Block171Step = 265 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Local1.
            recoveredBlock140Block151Block161Block171PC := 266.
        ].
        recoveredBlock140Block151Block161Block171Step = 266 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 268.
        ].
        recoveredBlock140Block151Block161Block171Step = 268 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack1) add: (recoveredBlock140Block151Block161Block171Stack2).
            recoveredBlock140Block151Block161Block171PC := 270.
        ].
        recoveredBlock140Block151Block161Block171Step = 270 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Local2.
            recoveredBlock140Block151Block161Block171PC := 271.
        ].
        recoveredBlock140Block151Block161Block171Step = 271 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 274.
        ].
        recoveredBlock140Block151Block161Block171Step = 274 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack1) add: (recoveredBlock140Block151Block161Block171Stack2).
            recoveredBlock140Block151Block161Block171PC := 276.
        ].
        recoveredBlock140Block151Block161Block171Step = 276 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Arg1.
            recoveredBlock140Block151Block161Block171PC := 279.
        ].
        recoveredBlock140Block151Block161Block171Step = 279 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := Association.
            recoveredBlock140Block151Block161Block171PC := 281.
        ].
        recoveredBlock140Block151Block161Block171Step = 281 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack3 := recoveredBlock140Block151Block161Block171Local3.
            recoveredBlock140Block151Block161Block171PC := 282.
        ].
        recoveredBlock140Block151Block161Block171Step = 282 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack4 := recoveredBlock140Block151Block161Block171Local1.
            recoveredBlock140Block151Block161Block171PC := 283.
        ].
        recoveredBlock140Block151Block161Block171Step = 283 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := (recoveredBlock140Block151Block161Block171Stack2) key: (recoveredBlock140Block151Block161Block171Stack3) value: (recoveredBlock140Block151Block161Block171Stack4).
            recoveredBlock140Block151Block161Block171PC := 285.
        ].
        recoveredBlock140Block151Block161Block171Step = 285 ifTrue: [
            (recoveredBlock140Block151Block161Block171Stack1) bufferReference: (recoveredBlock140Block151Block161Block171Stack2).
            recoveredBlock140Block151Block161Block171PC := 287.
        ].
        recoveredBlock140Block151Block161Block171Step = 287 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := recoveredBlock140Block151Block161Block171Arg1.
            recoveredBlock140Block151Block161Block171PC := 289.
        ].
        recoveredBlock140Block151Block161Block171Step = 289 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := Association.
            recoveredBlock140Block151Block161Block171PC := 291.
        ].
        recoveredBlock140Block151Block161Block171Step = 291 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack3 := recoveredBlock140Block151Block161Block171Local4.
            recoveredBlock140Block151Block161Block171PC := 292.
        ].
        recoveredBlock140Block151Block161Block171Step = 292 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack4 := recoveredBlock140Block151Block161Block171Local2.
            recoveredBlock140Block151Block161Block171PC := 293.
        ].
        recoveredBlock140Block151Block161Block171Step = 293 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack2 := (recoveredBlock140Block151Block161Block171Stack2) key: (recoveredBlock140Block151Block161Block171Stack3) value: (recoveredBlock140Block151Block161Block171Stack4).
            recoveredBlock140Block151Block161Block171PC := 295.
        ].
        recoveredBlock140Block151Block161Block171Step = 295 ifTrue: [
            recoveredBlock140Block151Block161Block171Stack1 := (recoveredBlock140Block151Block161Block171Stack1) bufferReference: (recoveredBlock140Block151Block161Block171Stack2).
            recoveredBlock140Block151Block161Block171PC := 297.
        ].
        recoveredBlock140Block151Block161Block171Step = 297 ifTrue: [
            recoveredBlock140Block151Block161Block171Result := recoveredBlock140Block151Block161Block171Stack1.
            recoveredBlock140Block151Block161Block171Done := true.
        ].
    ].
    recoveredBlock140Block151Block161Block171Result
].
    recoveredBlock140Block151Block161Value2 := (recoveredBlock140Block151Block161Value0) do: (recoveredBlock140Block151Block161Value1).
    recoveredBlock140Block151Block161Value2
].
    recoveredBlock140Block151Value2 := (recoveredBlock140Block151Value0) do: (recoveredBlock140Block151Value1).
    recoveredBlock140Block151Value2
].
    recoveredBlock140Value3 := (recoveredBlock140Value0) at: (recoveredBlock140Value1) ifPresent: (recoveredBlock140Value2).
    recoveredBlock140Value3
].
    (recoveredValue10) at: (recoveredValue11) ifPresent: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := FamosBinaryData.
    recoveredValue15 := [:recoveredBlock314Arg1 | 
    | recoveredBlock314Value0 recoveredBlock314Value1 recoveredBlock314Value2 recoveredBlock314Value3 |
    recoveredBlock314Value0 := recoveredLocal1.
    recoveredBlock314Value1 := FamosBuffer.
    recoveredBlock314Value2 := [:recoveredBlock314Block325Arg1 | 
    | recoveredBlock314Block325Value0 recoveredBlock314Block325Value1 recoveredBlock314Block325Value2 |
    recoveredBlock314Block325Value0 := recoveredBlock314Arg1.
    recoveredBlock314Block325Value1 := recoveredBlock314Block325Arg1.
    recoveredBlock314Block325Value2 := (self) createObjectReferencesFor: (recoveredBlock314Block325Value0) getMethod: ('index') with: (recoveredBlock314Block325Value1) getMethod: ('sampleIndex') setMethod: ('index:').
    recoveredBlock314Block325Value2
].
    recoveredBlock314Value3 := (recoveredBlock314Value0) at: (recoveredBlock314Value1) ifPresent: (recoveredBlock314Value2).
    recoveredBlock314Value3
].
    (recoveredValue13) at: (recoveredValue14) ifPresent: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := FamosBuffer.
    recoveredValue18 := [:recoveredBlock356Arg1 | 
    | recoveredBlock356Value0 recoveredBlock356Value1 recoveredBlock356Value2 recoveredBlock356Value3 |
    recoveredBlock356Value0 := recoveredLocal1.
    recoveredBlock356Value1 := FamosBinaryData.
    recoveredBlock356Value2 := [:recoveredBlock356Block367Arg1 | 
    | recoveredBlock356Block367Value0 recoveredBlock356Block367Value1 recoveredBlock356Block367Value2 |
    recoveredBlock356Block367Value0 := recoveredBlock356Arg1.
    recoveredBlock356Block367Value1 := [:recoveredBlock356Block367Block377Arg1 | 
    | recoveredBlock356Block367Block377Value0 recoveredBlock356Block367Block377Value1 recoveredBlock356Block367Block377Value2 |
    recoveredBlock356Block367Block377Value0 := recoveredBlock356Block367Arg1.
    recoveredBlock356Block367Block377Value1 := [:recoveredBlock356Block367Block377Block387Arg1 | 
    | recoveredBlock356Block367Block377Block387Stack0 recoveredBlock356Block367Block377Block387Stack1 recoveredBlock356Block367Block377Block387Stack2 recoveredBlock356Block367Block377Block387Stack3 recoveredBlock356Block367Block377Block387Stack4 recoveredBlock356Block367Block377Block387Stack5 recoveredBlock356Block367Block377Block387PC recoveredBlock356Block367Block377Block387Step recoveredBlock356Block367Block377Block387Done recoveredBlock356Block367Block377Block387Result |
    recoveredBlock356Block367Block377Block387Stack0 := nil.
    recoveredBlock356Block367Block377Block387PC := 394.
    recoveredBlock356Block367Block377Block387Done := false.
    [recoveredBlock356Block367Block377Block387Done not] whileTrue: [
        recoveredBlock356Block367Block377Block387Step := recoveredBlock356Block367Block377Block387PC.
        recoveredBlock356Block367Block377Block387Step = 394 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack1 := nil.
            recoveredBlock356Block367Block377Block387PC := 395.
        ].
        recoveredBlock356Block367Block377Block387Step = 395 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack2 := recoveredBlock356Block367Block377Arg1.
            recoveredBlock356Block367Block377Block387PC := 398.
        ].
        recoveredBlock356Block367Block377Block387Step = 398 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack2 := (recoveredBlock356Block367Block377Block387Stack2) sampleIndex.
            recoveredBlock356Block367Block377Block387PC := 400.
        ].
        recoveredBlock356Block367Block377Block387Step = 400 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := recoveredBlock356Block367Block377Block387Arg1.
            recoveredBlock356Block367Block377Block387PC := 401.
        ].
        recoveredBlock356Block367Block377Block387Step = 401 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := (recoveredBlock356Block367Block377Block387Stack3) index.
            recoveredBlock356Block367Block377Block387PC := 403.
        ].
        recoveredBlock356Block367Block377Block387Step = 403 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := (recoveredBlock356Block367Block377Block387Stack3) key.
            recoveredBlock356Block367Block377Block387PC := 405.
        ].
        recoveredBlock356Block367Block377Block387Step = 405 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack2 := (recoveredBlock356Block367Block377Block387Stack2) = (recoveredBlock356Block367Block377Block387Stack3).
            recoveredBlock356Block367Block377Block387PC := 406.
        ].
        recoveredBlock356Block367Block377Block387Step = 406 ifTrue: [
            (recoveredBlock356Block367Block377Block387Stack2) ifTrue: [recoveredBlock356Block367Block377Block387PC := 410] ifFalse: [recoveredBlock356Block367Block377Block387PC := 426].
        ].
        recoveredBlock356Block367Block377Block387Step = 410 ifTrue: [
            recoveredBlock356Block367Block377Block387PC := 411.
        ].
        recoveredBlock356Block367Block377Block387Step = 411 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack1 := recoveredBlock356Block367Block377Arg1.
            recoveredBlock356Block367Block377Block387PC := 414.
        ].
        recoveredBlock356Block367Block377Block387Step = 414 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack2 := Association.
            recoveredBlock356Block367Block377Block387PC := 416.
        ].
        recoveredBlock356Block367Block377Block387Step = 416 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := recoveredBlock356Block367Block377Block387Arg1.
            recoveredBlock356Block367Block377Block387PC := 417.
        ].
        recoveredBlock356Block367Block377Block387Step = 417 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := (recoveredBlock356Block367Block377Block387Stack3) index.
            recoveredBlock356Block367Block377Block387PC := 419.
        ].
        recoveredBlock356Block367Block377Block387Step = 419 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack3 := (recoveredBlock356Block367Block377Block387Stack3) key.
            recoveredBlock356Block367Block377Block387PC := 421.
        ].
        recoveredBlock356Block367Block377Block387Step = 421 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack4 := recoveredBlock356Block367Block377Block387Arg1.
            recoveredBlock356Block367Block377Block387PC := 422.
        ].
        recoveredBlock356Block367Block377Block387Step = 422 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack2 := (recoveredBlock356Block367Block377Block387Stack2) key: (recoveredBlock356Block367Block377Block387Stack3) value: (recoveredBlock356Block367Block377Block387Stack4).
            recoveredBlock356Block367Block377Block387PC := 424.
        ].
        recoveredBlock356Block367Block377Block387Step = 424 ifTrue: [
            recoveredBlock356Block367Block377Block387Stack1 := (recoveredBlock356Block367Block377Block387Stack1) sampleIndex: (recoveredBlock356Block367Block377Block387Stack2).
            recoveredBlock356Block367Block377Block387PC := 426.
        ].
        recoveredBlock356Block367Block377Block387Step = 426 ifTrue: [
            recoveredBlock356Block367Block377Block387Result := recoveredBlock356Block367Block377Block387Stack1.
            recoveredBlock356Block367Block377Block387Done := true.
        ].
    ].
    recoveredBlock356Block367Block377Block387Result
].
    recoveredBlock356Block367Block377Value2 := (recoveredBlock356Block367Block377Value0) do: (recoveredBlock356Block367Block377Value1).
    recoveredBlock356Block367Block377Value2
].
    recoveredBlock356Block367Value2 := (recoveredBlock356Block367Value0) do: (recoveredBlock356Block367Value1).
    recoveredBlock356Block367Value2
].
    recoveredBlock356Value3 := (recoveredBlock356Value0) at: (recoveredBlock356Value1) ifPresent: (recoveredBlock356Value2).
    recoveredBlock356Value3
].
    (recoveredValue16) at: (recoveredValue17) ifPresent: (recoveredValue18).
    ^self
! !

