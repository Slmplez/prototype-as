"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067674; bytecode file offset 0x9646f8"
!TGAggregatedSourceHandle methodsFor: 'recovered'!
sourceObjects
    | recoveredValue0 |
    recoveredValue0 := sourceObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beba0; bytecode file offset 0x9bc0b4"
!TGAggregatedSourceHandle methodsFor: 'recovered'!
sourceObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceObjects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9e9c; bytecode file offset 0x9f6778"
!TGAggregatedSourceHandle methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    sourceObjects := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2039cf7c; bytecode file offset 0xc99874"
!TGAggregatedSourceHandle methodsFor: 'recovered'!
asHSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := WriteStream.
    recoveredValue2 := Locale.
    recoveredValue3 := (recoveredValue2) current.
    recoveredValue4 := (recoveredValue3) preferredStringClass.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue1) on: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createWithStream: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) sourceObjects.
    recoveredValue10 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredLocal1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) completeHSourceOn: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := super asHSource.
    (recoveredValue11) nextPutAll: (recoveredValue12).
    recoveredValue13 := (self) sourceObjects.
    recoveredValue14 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredLocal1.
    recoveredBlock54Value2 := (recoveredBlock54Value0) placeInlineSourceOn: (recoveredBlock54Value1) banner: (true).
    recoveredBlock54Value2
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    ^recoveredValue16
! !

