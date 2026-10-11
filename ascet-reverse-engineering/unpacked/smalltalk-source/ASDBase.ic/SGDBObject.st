"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002cb14; bytecode file offset 0x934580"
!SGDBObject methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) copyDatabaseObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f424; bytecode file offset 0x934580"
!SGDBObject methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200354f4; bytecode file offset 0x934580"
!SGDBObject methodsFor: 'recovered'!
applicationTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200661f4; bytecode file offset 0x963428"
!SGDBObject methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200754a4; bytecode file offset 0x9757c8"
!SGDBObject methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x2008eee0; bytecode file offset 0x98b80c"
!SGDBObject methodsFor: 'recovered'!
modifiedWithoutTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) modified: (self).
    ^self
! !

"ASDBase.ic method 0x200bdb9c; bytecode file offset 0x9bb178"
!SGDBObject methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d068c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isCodeGeneration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d074c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isImport.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d083c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isRead
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isRead.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d089c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isExecute
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isExecute.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0914; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isDelete
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isDelete.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d095c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isWrite
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isWrite.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0974; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isCalibrate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isCalibrate.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0a4c; bytecode file offset 0x9cd3a0"
!SGDBObject methodsFor: 'recovered'!
isExport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) isExport.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d5f30; bytecode file offset 0x9d27f0"
!SGDBObject methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initializeRBDBObject.
    ^self
! !

"ASDBase.ic method 0x200da7a4; bytecode file offset 0x9d7154"
!SGDBObject methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) name: (recoveredValue1).
    (self) modified.
    ^self
! !

