"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ce8; bytecode file offset 0x8ffcfc"
!DBLookupTable methodsFor: 'recovered'!
testPro
    ^self
! !

"ASDBase.ic method 0x20039c68; bytecode file offset 0x938608"
!DBLookupTable methodsFor: 'recovered'!
dumpWithHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) emWriteWithHeader: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200418dc; bytecode file offset 0x93e1a0"
!DBLookupTable methodsFor: 'recovered'!
asDBProxy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) asDBProxy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050430; bytecode file offset 0x94d048"
!DBLookupTable methodsFor: 'recovered'!
initialize
    (self) initializeRBDBObject.
    ^self
! !

"ASDBase.ic method 0x20069670; bytecode file offset 0x966bdc"
!DBLookupTable methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200758f4; bytecode file offset 0x9757c8"
!DBLookupTable methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x20077874; bytecode file offset 0x9757c8"
!DBLookupTable methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^true
! !

"ASDBase.ic method 0x2008b0d0; bytecode file offset 0x987994"
!DBLookupTable methodsFor: 'recovered'!
modified
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    (recoveredValue0) modified: (self).
    ^self
! !

"ASDBase.ic method 0x200b04ac; bytecode file offset 0x9acd68"
!DBLookupTable methodsFor: 'recovered'!
hdrByte
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (254).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200beb00; bytecode file offset 0x9bc0b4"
!DBLookupTable methodsFor: 'recovered'!
keys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbcc; bytecode file offset 0x9bd228"
!DBLookupTable methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b28; bytecode file offset 0x9bdf14"
!DBLookupTable methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20112de0; bytecode file offset 0xa0f6a0"
!DBLookupTable methodsFor: 'recovered'!
shallowCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super shallowCopy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := dbObject.
    (recoveredValue1) dbObject: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20125700; bytecode file offset 0xa21fdc"
!DBLookupTable methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super deepCopy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := dbObject.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) dbObject: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20159f7c; bytecode file offset 0xa56838"
!DBLookupTable methodsFor: 'recovered'!
emWriteObjectOrLiteralOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbObject.
    recoveredLocal1 := recoveredValue0.
    dbObject := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOrLiteralOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    dbObject := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2029c608; bytecode file offset 0xb98ed8"
!DBLookupTable methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := keys.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := keys.
    recoveredValue5 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := values.
    recoveredBlock14Value3 := recoveredBlock14Arg2.
    recoveredBlock14Value4 := (recoveredBlock14Value2) at: (recoveredBlock14Value3).
    recoveredBlock14Value5 := (recoveredBlock14Value0) at: (recoveredBlock14Value1) put: (recoveredBlock14Value4).
    recoveredBlock14Value5
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dbObject.
    (recoveredValue6) dbObject: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2040f1e0; bytecode file offset 0xd0bac0"
!DBLookupTable methodsFor: 'recovered'!
preDump: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := Array.
    recoveredValue4 := (self) size.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredLocal1 := 1.
    recoveredValue6 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 |
    recoveredBlock25Value0 := recoveredLocal3.
    recoveredBlock25Value1 := recoveredLocal1.
    recoveredBlock25Value2 := recoveredBlock25Arg1.
    (recoveredBlock25Value0) at: (recoveredBlock25Value1) put: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredLocal2.
    recoveredBlock25Value4 := recoveredLocal1.
    recoveredBlock25Value5 := recoveredBlock25Arg2.
    (recoveredBlock25Value3) at: (recoveredBlock25Value4) put: (recoveredBlock25Value5).
    recoveredBlock25Value6 := recoveredLocal1.
    recoveredBlock25Value7 := (recoveredBlock25Value6) + (1).
    recoveredBlock25Value8 := recoveredBlock25Value7.
    recoveredLocal1 := recoveredBlock25Value8.
    recoveredBlock25Value7
].
    (self) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal4 := recoveredValue8.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := elementCount.
    (recoveredValue10) elementCount: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := recoveredLocal3.
    (recoveredValue12) keys: (recoveredValue13).
    recoveredValue14 := recoveredValue9.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) values: (recoveredValue15).
    recoveredValue16 := dbObject.
    (recoveredValue9) dbObject: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"ASDBase.ic method 0x2049a9e0; bytecode file offset 0xd972c4"
!DBLookupTable methodsFor: 'recovered'!
test
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := System.
    (recoveredValue0) globalGarbageCollect.
    recoveredValue1 := Time.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) library.
    recoveredBlock10Value1 := (recoveredBlock10Value0) dumpObject: (self).
    recoveredBlock10Value2 := (recoveredBlock10Value1) at: (1).
    recoveredBlock10Value3 := recoveredBlock10Value2.
    recoveredLocal5 := recoveredBlock10Value3.
    recoveredBlock10Value2
].
    recoveredValue3 := (recoveredValue1) millisecondsToRun: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := System.
    (recoveredValue4) globalGarbageCollect.
    recoveredValue5 := Time.
    recoveredValue6 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := (self) library.
    recoveredBlock40Value1 := (recoveredBlock40Value0) linDeLin.
    recoveredBlock40Value2 := recoveredLocal5.
    recoveredBlock40Value3 := (recoveredBlock40Value1) getLoadedObjectFrom: (recoveredBlock40Value2).
    recoveredBlock40Value4 := recoveredBlock40Value3.
    recoveredLocal2 := recoveredBlock40Value4.
    recoveredBlock40Value3
].
    recoveredValue7 := (recoveredValue5) millisecondsToRun: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := System.
    (recoveredValue8) globalGarbageCollect.
    recoveredValue9 := Time.
    recoveredValue10 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 |
    recoveredBlock70Value0 := (self) library.
    recoveredBlock70Value1 := (recoveredBlock70Value0) dumpObject: (self).
    recoveredBlock70Value2 := (recoveredBlock70Value1) at: (1).
    recoveredBlock70Value3 := recoveredBlock70Value2.
    recoveredLocal5 := recoveredBlock70Value3.
    recoveredBlock70Value2
].
    recoveredValue11 := (recoveredValue9) millisecondsToRun: (recoveredValue10).
    recoveredLocal6 := recoveredValue11.
    recoveredValue12 := System.
    (recoveredValue12) globalGarbageCollect.
    recoveredValue13 := Time.
    recoveredValue14 := [
    | recoveredBlock100Value0 recoveredBlock100Value1 |
    recoveredBlock100Value0 := recoveredLocal2.
    recoveredBlock100Value1 := (recoveredBlock100Value0) emReadAll.
    recoveredBlock100Value1
].
    recoveredValue15 := (recoveredValue13) millisecondsToRun: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := Array.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := recoveredLocal6.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue16) with: (recoveredValue17) with: (recoveredValue18) with: (recoveredValue19) with: (recoveredValue20).
    ^recoveredValue21
! !

