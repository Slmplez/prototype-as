"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20061fd8; bytecode file offset 0x95e8c4"
!OSMemorystatus methodsFor: 'recovered'!
getFreeMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dwAvailPhys.
    recoveredValue1 := (self) dwAvailPageFile.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20061fe8; bytecode file offset 0x95e8c4"
!OSMemorystatus methodsFor: 'recovered'!
totalMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dwTotalPhys.
    recoveredValue1 := (self) dwTotalPageFile.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0094; bytecode file offset 0x99c9e0"
!OSMemorystatus methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) dwLength: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202ad160; bytecode file offset 0xba9a34"
!OSMemorystatus methodsFor: 'recovered'!
findSwapFile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) getLocalHardDisks.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := CfsStat.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack4 := '386spart.par'.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) , (recoveredBlock7Stack4).
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) stat: (recoveredBlock7Stack3).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isCfsError.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 34].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20495410; bytecode file offset 0xd91d28"
!OSMemorystatus methodsFor: 'recovered'!
formattedSysInfo
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
    recoveredValue0 := EwNumericFormat.
    recoveredValue1 := (recoveredValue0) formatString: ('9T999T999T999').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ReadWriteStream.
    recoveredValue3 := (recoveredValue2) on: ('').
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) name.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) dwTotalPhys.
    recoveredValue12 := (recoveredValue10) formattedStringFrom: (recoveredValue11).
    recoveredValue13 := ('ram             ') , (recoveredValue12).
    (recoveredValue9) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue4.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) dwAvailPhys.
    recoveredValue18 := (recoveredValue16) formattedStringFrom: (recoveredValue17).
    recoveredValue19 := ('ram (avail)     ') , (recoveredValue18).
    (recoveredValue15) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredValue4.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (self) dwTotalPageFile.
    recoveredValue25 := (recoveredValue23) formattedStringFrom: (recoveredValue24).
    recoveredValue26 := ('pageMem         ') , (recoveredValue25).
    (recoveredValue22) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue4.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (self) dwAvailPageFile.
    recoveredValue31 := (recoveredValue29) formattedStringFrom: (recoveredValue30).
    recoveredValue32 := ('pageMem (avail) ') , (recoveredValue31).
    (recoveredValue28) nextPutAll: (recoveredValue32).
    recoveredValue33 := recoveredValue4.
    (recoveredValue33) cr.
    recoveredValue34 := recoveredValue4.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue4.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (self) dwTotalVirtual.
    recoveredValue38 := (recoveredValue36) formattedStringFrom: (recoveredValue37).
    recoveredValue39 := ('virtual         ') , (recoveredValue38).
    (recoveredValue35) nextPutAll: (recoveredValue39).
    recoveredValue40 := recoveredValue4.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue4.
    recoveredValue42 := recoveredLocal1.
    recoveredValue43 := (self) dwAvailVirtual.
    recoveredValue44 := (recoveredValue42) formattedStringFrom: (recoveredValue43).
    recoveredValue45 := ('virtual (avail) ') , (recoveredValue44).
    (recoveredValue41) nextPutAll: (recoveredValue45).
    recoveredValue46 := recoveredValue4.
    (recoveredValue46) cr.
    recoveredValue47 := (recoveredValue4) contents.
    ^recoveredValue47
! !

"ASDBase.ic method 0x20595c44; bytecode file offset 0xe92558"
!OSMemorystatus methodsFor: 'recovered'!
printSysInfo
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) name.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue2) cr.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) nextPutAll: ('ram               ').
    recoveredValue7 := (self) dwTotalPhys.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue7) printOn: (recoveredValue8) base: (10) showRadix: (false).
    recoveredValue9 := recoveredLocal2.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue10) nextPutAll: ('freeRam     ').
    recoveredValue11 := (self) dwAvailPhys.
    recoveredValue12 := recoveredLocal2.
    (recoveredValue11) printOn: (recoveredValue12) base: (10) showRadix: (false).
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) nextPutAll: ('pageMem   ').
    recoveredValue16 := (self) dwTotalPageFile.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) printOn: (recoveredValue17) base: (10) showRadix: (false).
    recoveredValue18 := recoveredLocal2.
    (recoveredValue18) nextPut: ($/).
    recoveredValue19 := (self) dwTotalPageFile.
    recoveredValue20 := recoveredLocal2.
    (recoveredValue19) printOn: (recoveredValue20) base: (16) showRadix: (true).
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) nextPutAll: ('freePage   ').
    recoveredValue23 := (self) dwAvailPageFile.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue23) printOn: (recoveredValue24) base: (10) showRadix: (false).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) nextPut: ($/).
    recoveredValue26 := (self) dwAvailPageFile.
    recoveredValue27 := recoveredLocal2.
    (recoveredValue26) printOn: (recoveredValue27) base: (16) showRadix: (true).
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredLocal2.
    (recoveredValue29) cr.
    recoveredValue30 := (self) dwTotalPhys.
    recoveredValue31 := (self) dwTotalPageFile.
    recoveredValue32 := (recoveredValue30) + (recoveredValue31).
    recoveredLocal1 := recoveredValue32.
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) nextPutAll: ('totalMem   ').
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := recoveredLocal2.
    (recoveredValue34) printOn: (recoveredValue35) base: (10) showRadix: (false).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) nextPut: ($/).
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := recoveredLocal2.
    (recoveredValue37) printOn: (recoveredValue38) base: (16) showRadix: (true).
    recoveredValue39 := recoveredLocal2.
    (recoveredValue39) cr.
    recoveredValue40 := (self) dwAvailPhys.
    recoveredValue41 := (self) dwAvailPageFile.
    recoveredValue42 := (recoveredValue40) + (recoveredValue41).
    recoveredLocal1 := recoveredValue42.
    recoveredValue43 := recoveredLocal2.
    (recoveredValue43) nextPutAll: ('freeTotal   ').
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := recoveredLocal2.
    (recoveredValue44) printOn: (recoveredValue45) base: (10) showRadix: (false).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) nextPut: ($/).
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := recoveredLocal2.
    (recoveredValue47) printOn: (recoveredValue48) base: (16) showRadix: (true).
    recoveredValue49 := recoveredLocal2.
    (recoveredValue49) cr.
    recoveredValue50 := recoveredLocal2.
    (recoveredValue50) cr.
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) nextPutAll: ('virtual          ').
    recoveredValue52 := (self) dwTotalVirtual.
    recoveredValue53 := recoveredLocal2.
    (recoveredValue52) printOn: (recoveredValue53) base: (10) showRadix: (false).
    recoveredValue54 := recoveredLocal2.
    (recoveredValue54) nextPut: ($/).
    recoveredValue55 := (self) dwTotalVirtual.
    recoveredValue56 := recoveredLocal2.
    (recoveredValue55) printOn: (recoveredValue56) base: (16) showRadix: (true).
    recoveredValue57 := recoveredLocal2.
    (recoveredValue57) cr.
    recoveredValue58 := recoveredLocal2.
    (recoveredValue58) nextPutAll: ('freeVirtual ').
    recoveredValue59 := (self) dwAvailVirtual.
    recoveredValue60 := recoveredLocal2.
    (recoveredValue59) printOn: (recoveredValue60) base: (10) showRadix: (false).
    recoveredValue61 := recoveredLocal2.
    (recoveredValue61) nextPut: ($/).
    recoveredValue62 := (self) dwAvailVirtual.
    recoveredValue63 := recoveredLocal2.
    (recoveredValue62) printOn: (recoveredValue63) base: (16) showRadix: (true).
    recoveredValue64 := recoveredLocal2.
    (recoveredValue64) cr.
    recoveredValue65 := recoveredLocal2.
    recoveredValue66 := (recoveredValue65) contents.
    ^recoveredValue66
! !

