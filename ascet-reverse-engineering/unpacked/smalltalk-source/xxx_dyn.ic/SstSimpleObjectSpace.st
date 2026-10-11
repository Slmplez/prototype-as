"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000100; bytecode file offset 0x6147c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x2000087c; bytecode file offset 0x619a4"
!SstSimpleObjectSpace methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := (self) reset.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002738; bytecode file offset 0x63814"
!SstSimpleObjectSpace methodsFor: 'recovered'!
clear
    exportSet := nil.
    ^self
! !

"xxx_dyn.ic method 0x200029e8; bytecode file offset 0x63b1c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
reset
    (self) resetExportSet.
    ^self
! !

"xxx_dyn.ic method 0x200047c0; bytecode file offset 0x6592c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
supportsLocalReset
    ^true
! !

"xxx_dyn.ic method 0x200048ec; bytecode file offset 0x65b30"
!SstSimpleObjectSpace methodsFor: 'recovered'!
isLocalSpace
    ^false
! !

"xxx_dyn.ic method 0x20004fe4; bytecode file offset 0x660ac"
!SstSimpleObjectSpace methodsFor: 'recovered'!
resolve: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) objectExportedAs: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200051d0; bytecode file offset 0x662ec"
!SstSimpleObjectSpace methodsFor: 'recovered'!
resetExportSet
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    exportSet := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x200054c4; bytecode file offset 0x6658c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    count := 10.
    recoveredValue0 := (self) reset.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000a9b0; bytecode file offset 0x6ba7c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
exports
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := (recoveredBlock4Value0) keys.
    recoveredBlock4Value1
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000eaa4; bytecode file offset 0x6fb88"
!SstSimpleObjectSpace methodsFor: 'recovered'!
exportIdFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) keyAtValue: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000eab8; bytecode file offset 0x6fb88"
!SstSimpleObjectSpace methodsFor: 'recovered'!
unexportId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f5b4; bytecode file offset 0x70680"
!SstSimpleObjectSpace methodsFor: 'recovered'!
export: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f5dc; bytecode file offset 0x706a8"
!SstSimpleObjectSpace methodsFor: 'recovered'!
objectExportedAs: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001457c; bytecode file offset 0x7564c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
unexportObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    ^nil
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) keyAtValue: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Local1 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredBlock4Local1.
    recoveredBlock4Value5 := (self) unexportId: (recoveredBlock4Value4).
    recoveredBlock4Value5
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20016dc4; bytecode file offset 0x77e9c"
!SstSimpleObjectSpace methodsFor: 'recovered'!
objectExportedAs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 |
    recoveredBlock4Block15Value0 := SstError.
    recoveredBlock4Block15Value1 := SstObjectNotFoundError.
    recoveredBlock4Block15Value2 := recoveredArg1.
    recoveredBlock4Block15Value3 := (recoveredBlock4Block15Value0) for: (recoveredBlock4Block15Value1) with: (recoveredBlock4Block15Value2).
    ^recoveredBlock4Block15Value3
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001fb24; bytecode file offset 0x80bf8"
!SstSimpleObjectSpace methodsFor: 'recovered'!
export: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := exportSet.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack3 := [].
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) keyAtValue: (recoveredBlock4Stack2) ifAbsent: (recoveredBlock4Stack3).
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 26].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := [
    | recoveredBlock4Block30Value0 recoveredBlock4Block30Value1 recoveredBlock4Block30Value2 recoveredBlock4Block30Value3 |
    recoveredBlock4Block30Value0 := count.
    recoveredBlock4Local1 := recoveredBlock4Block30Value0.
    recoveredBlock4Block30Value1 := count.
    recoveredBlock4Block30Value2 := (recoveredBlock4Block30Value1) + (1).
    recoveredBlock4Block30Value3 := recoveredBlock4Block30Value2.
    count := recoveredBlock4Block30Value3.
    recoveredBlock4Block30Value2
].
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            (recoveredBlock4Stack1) critical.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            (recoveredBlock4Stack0) export: (recoveredBlock4Stack1) as: (recoveredBlock4Stack2).
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

