"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d828; bytecode file offset 0x92209c"
!FamosDataSource class methodsFor: 'recovered'!
keyWord
    ^'NO'
! !

"ASDBase.ic method 0x200b5c18; bytecode file offset 0x9b39ac"
!FamosDataSource class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('origin' 'nameLength' 'name' 'commentLength' 'comment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203cd864; bytecode file offset 0xcca178"
!FamosDataSource class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := (self) create.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := ReadWriteStream.
    recoveredValue2 := (recoveredValue1) on: ('').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: ('Willi.E.Coyote,genius : ').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) nextPutAll: ('TimeStamp ').
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Date.
    recoveredValue9 := (recoveredValue8) today.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue7) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    (recoveredValue11) nextPut: ($ ).
    recoveredValue12 := Time.
    recoveredValue13 := (recoveredValue12) now.
    recoveredValue14 := (recoveredValue13) printString.
    (recoveredValue3) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) origin: (0).
    recoveredValue17 := recoveredValue15.
    (recoveredValue17) name: ('Created by FamosWriter').
    recoveredValue18 := recoveredValue15.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) name.
    recoveredValue21 := (recoveredValue20) size.
    (recoveredValue18) nameLength: (recoveredValue21).
    recoveredValue22 := recoveredValue15.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) contents.
    (recoveredValue22) comment: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (recoveredValue25) comment.
    recoveredValue27 := (recoveredValue26) size.
    (recoveredValue15) commentLength: (recoveredValue27).
    recoveredValue28 := recoveredLocal2.
    ^recoveredValue28
! !

