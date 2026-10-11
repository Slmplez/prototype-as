"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20002ca4; bytecode file offset 0x63d70"
!AbtMD5Engine class methodsFor: 'recovered'!
printableDigest: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) digest: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) abtMD5AsHexString.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000301c; bytecode file offset 0x64108"
!AbtMD5Engine class methodsFor: 'recovered'!
digest: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) digest: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000a1bc; bytecode file offset 0x6b28c"
!AbtMD5Engine class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    (self) initialize.
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000d010; bytecode file offset 0x6e0e0"
!AbtMD5Engine class methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Initialized.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            Initialized := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) initializeFunctions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) initializeConstants.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20022be4; bytecode file offset 0x83cd8"
!AbtMD5Engine class methodsFor: 'recovered'!
initializeFunctions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800bcdcArg1 :block2800bcdcArg2 :block2800bcdcArg3 | 
    | block2800bcdcValue0 block2800bcdcValue1 block2800bcdcValue2 block2800bcdcValue3 block2800bcdcValue4 block2800bcdcValue5 block2800bcdcValue6 block2800bcdcValue7 |
    block2800bcdcValue0 := block2800bcdcArg1.
    block2800bcdcValue1 := block2800bcdcArg2.
    block2800bcdcValue2 := (block2800bcdcValue0) bitAnd: (block2800bcdcValue1).
    block2800bcdcValue3 := block2800bcdcArg1.
    block2800bcdcValue4 := (block2800bcdcValue3) bitXor: (4294967295).
    block2800bcdcValue5 := block2800bcdcArg3.
    block2800bcdcValue6 := (block2800bcdcValue4) bitAnd: (block2800bcdcValue5).
    block2800bcdcValue7 := (block2800bcdcValue2) bitOr: (block2800bcdcValue6).
    block2800bcdcValue7
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            F := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block2800bd00Arg1 :block2800bd00Arg2 :block2800bd00Arg3 | 
    | block2800bd00Value0 block2800bd00Value1 block2800bd00Value2 block2800bd00Value3 block2800bd00Value4 block2800bd00Value5 block2800bd00Value6 block2800bd00Value7 |
    block2800bd00Value0 := block2800bd00Arg1.
    block2800bd00Value1 := block2800bd00Arg3.
    block2800bd00Value2 := (block2800bd00Value0) bitAnd: (block2800bd00Value1).
    block2800bd00Value3 := block2800bd00Arg2.
    block2800bd00Value4 := block2800bd00Arg3.
    block2800bd00Value5 := (block2800bd00Value4) bitXor: (4294967295).
    block2800bd00Value6 := (block2800bd00Value3) bitAnd: (block2800bd00Value5).
    block2800bd00Value7 := (block2800bd00Value2) bitOr: (block2800bd00Value6).
    block2800bd00Value7
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            G := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:block2800bd24Arg1 :block2800bd24Arg2 :block2800bd24Arg3 | 
    | block2800bd24Value0 block2800bd24Value1 block2800bd24Value2 block2800bd24Value3 block2800bd24Value4 |
    block2800bd24Value0 := block2800bd24Arg1.
    block2800bd24Value1 := block2800bd24Arg2.
    block2800bd24Value2 := (block2800bd24Value0) bitXor: (block2800bd24Value1).
    block2800bd24Value3 := block2800bd24Arg3.
    block2800bd24Value4 := (block2800bd24Value2) bitXor: (block2800bd24Value3).
    block2800bd24Value4
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            H := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:block2800bd48Arg1 :block2800bd48Arg2 :block2800bd48Arg3 | 
    | block2800bd48Value0 block2800bd48Value1 block2800bd48Value2 block2800bd48Value3 block2800bd48Value4 block2800bd48Value5 |
    block2800bd48Value0 := block2800bd48Arg2.
    block2800bd48Value1 := block2800bd48Arg1.
    block2800bd48Value2 := block2800bd48Arg3.
    block2800bd48Value3 := (block2800bd48Value2) bitXor: (4294967295).
    block2800bd48Value4 := (block2800bd48Value1) bitOr: (block2800bd48Value3).
    block2800bd48Value5 := (block2800bd48Value0) bitXor: (block2800bd48Value4).
    block2800bd48Value5
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            I := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002f944; bytecode file offset 0x90b78"
!AbtMD5Engine class methodsFor: 'recovered'!
initializeConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 |
    A := 1732584193.
    B := 4023233417.
    C := 2562383102.
    D := 271733878.
    S11 := 7.
    S12 := 12.
    S13 := 17.
    S14 := 22.
    S21 := 5.
    S22 := 9.
    S23 := 14.
    S24 := 20.
    S31 := 4.
    S32 := 11.
    S33 := 16.
    S34 := 23.
    S41 := 6.
    S42 := 10.
    S43 := 15.
    S44 := 21.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (64).
    T := recoveredValue1.
    recoveredValue2 := T.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (1) put: (3614090360).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: (3905402710).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (3) put: (606105819).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (4) put: (3250441966).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (5) put: (4118548399).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (6) put: (1200080426).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (7) put: (2821735955).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (8) put: (4249261313).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (9) put: (1770035416).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (10) put: (2336552879).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (11) put: (4294925233).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (12) put: (2304563134).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (13) put: (1804603682).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (14) put: (4254626195).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (15) put: (2792965006).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (16) put: (1236535329).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (17) put: (4129170786).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: (18) put: (3225465664).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: (19) put: (643717713).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: (20) put: (3921069994).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: (21) put: (3593408605).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: (22) put: (38016083).
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: (23) put: (3634488961).
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: (24) put: (3889429448).
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: (25) put: (568446438).
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: (26) put: (3275163606).
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: (27) put: (4107603335).
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: (28) put: (1163531501).
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: (29) put: (2850285829).
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: (30) put: (4243563512).
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: (31) put: (1735328473).
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: (32) put: (2368359562).
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: (33) put: (4294588738).
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: (34) put: (2272392833).
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: (35) put: (1839030562).
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: (36) put: (4259657740).
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: (37) put: (2763975236).
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: (38) put: (1272893353).
    recoveredValue41 := recoveredValue2.
    (recoveredValue41) at: (39) put: (4139469664).
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) at: (40) put: (3200236656).
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) at: (41) put: (681279174).
    recoveredValue44 := recoveredValue2.
    (recoveredValue44) at: (42) put: (3936430074).
    recoveredValue45 := recoveredValue2.
    (recoveredValue45) at: (43) put: (3572445317).
    recoveredValue46 := recoveredValue2.
    (recoveredValue46) at: (44) put: (76029189).
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) at: (45) put: (3654602809).
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) at: (46) put: (3873151461).
    recoveredValue49 := recoveredValue2.
    (recoveredValue49) at: (47) put: (530742520).
    recoveredValue50 := recoveredValue2.
    (recoveredValue50) at: (48) put: (3299628645).
    recoveredValue51 := recoveredValue2.
    (recoveredValue51) at: (49) put: (4096336452).
    recoveredValue52 := recoveredValue2.
    (recoveredValue52) at: (50) put: (1126891415).
    recoveredValue53 := recoveredValue2.
    (recoveredValue53) at: (51) put: (2878612391).
    recoveredValue54 := recoveredValue2.
    (recoveredValue54) at: (52) put: (4237533241).
    recoveredValue55 := recoveredValue2.
    (recoveredValue55) at: (53) put: (1700485571).
    recoveredValue56 := recoveredValue2.
    (recoveredValue56) at: (54) put: (2399980690).
    recoveredValue57 := recoveredValue2.
    (recoveredValue57) at: (55) put: (4293915773).
    recoveredValue58 := recoveredValue2.
    (recoveredValue58) at: (56) put: (2240044497).
    recoveredValue59 := recoveredValue2.
    (recoveredValue59) at: (57) put: (1873313359).
    recoveredValue60 := recoveredValue2.
    (recoveredValue60) at: (58) put: (4264355552).
    recoveredValue61 := recoveredValue2.
    (recoveredValue61) at: (59) put: (2734768916).
    recoveredValue62 := recoveredValue2.
    (recoveredValue62) at: (60) put: (1309151649).
    recoveredValue63 := recoveredValue2.
    (recoveredValue63) at: (61) put: (4149444226).
    recoveredValue64 := recoveredValue2.
    (recoveredValue64) at: (62) put: (3174756917).
    recoveredValue65 := recoveredValue2.
    (recoveredValue65) at: (63) put: (718787259).
    (recoveredValue2) at: (64) put: (3951481745).
    ^self
! !

