"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001c74; bytecode file offset 0x7de68"
!CgFontPath methodsFor: 'recovered'!
defaultFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fontServers.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) defaultFont.
    ^recoveredValue2
! !

"winsys.ic method 0x20001fa4; bytecode file offset 0x7e17c"
!CgFontPath methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fontServers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20002960; bytecode file offset 0x7ed00"
!CgFontPath methodsFor: 'recovered'!
server
    | recoveredValue0 |
    recoveredValue0 := server.
    ^recoveredValue0
! !

"winsys.ic method 0x20002c78; bytecode file offset 0x7efc0"
!CgFontPath methodsFor: 'recovered'!
fontServers
    | recoveredValue0 |
    recoveredValue0 := fontServers.
    ^recoveredValue0
! !

"winsys.ic method 0x20004d10; bytecode file offset 0x80edc"
!CgFontPath methodsFor: 'recovered'!
getFontResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fontServers.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getFontResource: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20007184; bytecode file offset 0x8346c"
!CgFontPath methodsFor: 'recovered'!
server: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    server := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007384; bytecode file offset 0x836b4"
!CgFontPath methodsFor: 'recovered'!
fontServers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontServers := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000afa4; bytecode file offset 0x87174"
!CgFontPath methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) server: (recoveredValue0).
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) fontServers: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2000c350; bytecode file offset 0x88538"
!CgFontPath methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontServers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28008a10Arg1 | 
    | block28008a10Value0 block28008a10Value1 |
    block28008a10Value0 := block28008a10Arg1.
    block28008a10Value1 := (block28008a10Value0) startUp.
    block28008a10Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20020904; bytecode file offset 0x9cad4"
!CgFontPath methodsFor: 'recovered'!
loadFont: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontServers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Value0 recoveredBlock5Block16Value1 |
    recoveredBlock5Block16Value0 := recoveredBlock5Block16Arg1.
    recoveredBlock5Block16Value1 := (self) loadFont: (recoveredBlock5Block16Value0).
    ^recoveredBlock5Block16Value1
].
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) loadFont: (recoveredBlock5Stack2) ifAlias: (recoveredBlock5Stack3).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 43] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"winsys.ic method 0x20026ab8; bytecode file offset 0xa2c98"
!CgFontPath methodsFor: 'recovered'!
listFonts: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) min: (100).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) fontServers.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18Stack6 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg2.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) size.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) = (recoveredBlock18Stack2).
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 40].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            ^recoveredBlock18Stack1
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack4 := recoveredArg2.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack5 := recoveredLocal1.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack5 := (recoveredBlock18Stack5) size.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) - (recoveredBlock18Stack5).
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) listFonts: (recoveredBlock18Stack3) max: (recoveredBlock18Stack4).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) addAll: (recoveredBlock18Stack2).
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"winsys.ic method 0x20036ec0; bytecode file offset 0xb30b4"
!CgFontPath methodsFor: 'recovered'!
listFontsWithInfo: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := (self) fontServers.
    recoveredValue9 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := recoveredArg2.
    recoveredBlock31Value3 := recoveredLocal3.
    recoveredBlock31Value4 := (recoveredBlock31Value3) size.
    recoveredBlock31Value5 := (recoveredBlock31Value2) - (recoveredBlock31Value4).
    recoveredBlock31Value6 := [:recoveredBlock31Block51Arg1 :recoveredBlock31Block51Arg2 | 
    | recoveredBlock31Block51Stack0 recoveredBlock31Block51Stack1 recoveredBlock31Block51Stack2 recoveredBlock31Block51Stack3 recoveredBlock31Block51Stack4 recoveredBlock31Block51PC recoveredBlock31Block51Step recoveredBlock31Block51Done recoveredBlock31Block51Result |
    recoveredBlock31Block51Stack0 := self.
    recoveredBlock31Block51PC := 58.
    recoveredBlock31Block51Done := false.
    [recoveredBlock31Block51Done not] whileTrue: [
        recoveredBlock31Block51Step := recoveredBlock31Block51PC.
        recoveredBlock31Block51Step = 58 ifTrue: [
            recoveredBlock31Block51Stack1 := recoveredLocal3.
            recoveredBlock31Block51PC := 61.
        ].
        recoveredBlock31Block51Step = 61 ifTrue: [
            recoveredBlock31Block51Stack2 := recoveredBlock31Block51Arg1.
            recoveredBlock31Block51PC := 62.
        ].
        recoveredBlock31Block51Step = 62 ifTrue: [
            (recoveredBlock31Block51Stack1) add: (recoveredBlock31Block51Stack2).
            recoveredBlock31Block51PC := 64.
        ].
        recoveredBlock31Block51Step = 64 ifTrue: [
            recoveredBlock31Block51Stack1 := recoveredLocal2.
            recoveredBlock31Block51PC := 67.
        ].
        recoveredBlock31Block51Step = 67 ifTrue: [
            recoveredBlock31Block51Stack2 := recoveredBlock31Block51Arg2.
            recoveredBlock31Block51PC := 68.
        ].
        recoveredBlock31Block51Step = 68 ifTrue: [
            recoveredBlock31Block51Stack2 := (recoveredBlock31Block51Stack2) asFontStruct.
            recoveredBlock31Block51PC := 70.
        ].
        recoveredBlock31Block51Step = 70 ifTrue: [
            (recoveredBlock31Block51Stack1) add: (recoveredBlock31Block51Stack2).
            recoveredBlock31Block51PC := 72.
        ].
        recoveredBlock31Block51Step = 72 ifTrue: [
            recoveredBlock31Block51Stack1 := nil.
            recoveredBlock31Block51PC := 73.
        ].
        recoveredBlock31Block51Step = 73 ifTrue: [
            recoveredBlock31Block51Stack2 := recoveredLocal3.
            recoveredBlock31Block51PC := 76.
        ].
        recoveredBlock31Block51Step = 76 ifTrue: [
            recoveredBlock31Block51Stack2 := (recoveredBlock31Block51Stack2) size.
            recoveredBlock31Block51PC := 78.
        ].
        recoveredBlock31Block51Step = 78 ifTrue: [
            recoveredBlock31Block51Stack3 := recoveredArg2.
            recoveredBlock31Block51PC := 81.
        ].
        recoveredBlock31Block51Step = 81 ifTrue: [
            recoveredBlock31Block51Stack2 := (recoveredBlock31Block51Stack2) = (recoveredBlock31Block51Stack3).
            recoveredBlock31Block51PC := 82.
        ].
        recoveredBlock31Block51Step = 82 ifTrue: [
            (recoveredBlock31Block51Stack2) ifTrue: [recoveredBlock31Block51PC := 86] ifFalse: [recoveredBlock31Block51PC := 91].
        ].
        recoveredBlock31Block51Step = 86 ifTrue: [
            recoveredBlock31Block51PC := 87.
        ].
        recoveredBlock31Block51Step = 87 ifTrue: [
            recoveredBlock31Block51Stack1 := recoveredLocal4.
            recoveredBlock31Block51PC := 90.
        ].
        recoveredBlock31Block51Step = 90 ifTrue: [
            ^recoveredBlock31Block51Stack1
        ].
        recoveredBlock31Block51Step = 91 ifTrue: [
            recoveredBlock31Block51Result := recoveredBlock31Block51Stack1.
            recoveredBlock31Block51Done := true.
        ].
    ].
    recoveredBlock31Block51Result
].
    recoveredBlock31Value7 := [:recoveredBlock31Block92Arg1 | 
    | recoveredBlock31Block92Stack0 recoveredBlock31Block92Stack1 recoveredBlock31Block92Stack2 recoveredBlock31Block92Stack3 recoveredBlock31Block92PC recoveredBlock31Block92Step recoveredBlock31Block92Done recoveredBlock31Block92Result |
    recoveredBlock31Block92Stack0 := self.
    recoveredBlock31Block92PC := 98.
    recoveredBlock31Block92Done := false.
    [recoveredBlock31Block92Done not] whileTrue: [
        recoveredBlock31Block92Step := recoveredBlock31Block92PC.
        recoveredBlock31Block92Step = 98 ifTrue: [
            recoveredBlock31Block92Stack1 := recoveredBlock31Block92Arg1.
            recoveredBlock31Block92PC := 99.
        ].
        recoveredBlock31Block92Step = 99 ifTrue: [
            recoveredBlock31Block92Stack2 := 1.
            recoveredBlock31Block92PC := 101.
        ].
        recoveredBlock31Block92Step = 101 ifTrue: [
            recoveredBlock31Block92Stack0 := (recoveredBlock31Block92Stack0) listFontsWithInfo: (recoveredBlock31Block92Stack1) max: (recoveredBlock31Block92Stack2).
            recoveredBlock31Block92PC := 103.
        ].
        recoveredBlock31Block92Step = 103 ifTrue: [
            recoveredLocal1 := recoveredBlock31Block92Stack0.
            recoveredBlock31Block92PC := 106.
        ].
        recoveredBlock31Block92Step = 106 ifTrue: [
            recoveredBlock31Block92Stack0 := recoveredLocal3.
            recoveredBlock31Block92PC := 109.
        ].
        recoveredBlock31Block92Step = 109 ifTrue: [
            recoveredBlock31Block92Stack1 := recoveredLocal1.
            recoveredBlock31Block92PC := 112.
        ].
        recoveredBlock31Block92Step = 112 ifTrue: [
            recoveredBlock31Block92Stack2 := 1.
            recoveredBlock31Block92PC := 114.
        ].
        recoveredBlock31Block92Step = 114 ifTrue: [
            recoveredBlock31Block92Stack1 := (recoveredBlock31Block92Stack1) at: (recoveredBlock31Block92Stack2).
            recoveredBlock31Block92PC := 116.
        ].
        recoveredBlock31Block92Step = 116 ifTrue: [
            (recoveredBlock31Block92Stack0) addAll: (recoveredBlock31Block92Stack1).
            recoveredBlock31Block92PC := 118.
        ].
        recoveredBlock31Block92Step = 118 ifTrue: [
            recoveredBlock31Block92Stack0 := recoveredLocal2.
            recoveredBlock31Block92PC := 121.
        ].
        recoveredBlock31Block92Step = 121 ifTrue: [
            recoveredBlock31Block92Stack1 := recoveredLocal1.
            recoveredBlock31Block92PC := 124.
        ].
        recoveredBlock31Block92Step = 124 ifTrue: [
            recoveredBlock31Block92Stack2 := 2.
            recoveredBlock31Block92PC := 126.
        ].
        recoveredBlock31Block92Step = 126 ifTrue: [
            recoveredBlock31Block92Stack1 := (recoveredBlock31Block92Stack1) at: (recoveredBlock31Block92Stack2).
            recoveredBlock31Block92PC := 128.
        ].
        recoveredBlock31Block92Step = 128 ifTrue: [
            (recoveredBlock31Block92Stack0) addAll: (recoveredBlock31Block92Stack1).
            recoveredBlock31Block92PC := 130.
        ].
        recoveredBlock31Block92Step = 130 ifTrue: [
            recoveredBlock31Block92Stack0 := nil.
            recoveredBlock31Block92PC := 131.
        ].
        recoveredBlock31Block92Step = 131 ifTrue: [
            recoveredBlock31Block92Stack1 := recoveredLocal3.
            recoveredBlock31Block92PC := 134.
        ].
        recoveredBlock31Block92Step = 134 ifTrue: [
            recoveredBlock31Block92Stack1 := (recoveredBlock31Block92Stack1) size.
            recoveredBlock31Block92PC := 136.
        ].
        recoveredBlock31Block92Step = 136 ifTrue: [
            recoveredBlock31Block92Stack2 := recoveredArg2.
            recoveredBlock31Block92PC := 139.
        ].
        recoveredBlock31Block92Step = 139 ifTrue: [
            recoveredBlock31Block92Stack1 := (recoveredBlock31Block92Stack1) = (recoveredBlock31Block92Stack2).
            recoveredBlock31Block92PC := 140.
        ].
        recoveredBlock31Block92Step = 140 ifTrue: [
            (recoveredBlock31Block92Stack1) ifTrue: [recoveredBlock31Block92PC := 144] ifFalse: [recoveredBlock31Block92PC := 149].
        ].
        recoveredBlock31Block92Step = 144 ifTrue: [
            recoveredBlock31Block92PC := 145.
        ].
        recoveredBlock31Block92Step = 145 ifTrue: [
            recoveredBlock31Block92Stack0 := recoveredLocal4.
            recoveredBlock31Block92PC := 148.
        ].
        recoveredBlock31Block92Step = 148 ifTrue: [
            ^recoveredBlock31Block92Stack0
        ].
        recoveredBlock31Block92Step = 149 ifTrue: [
            recoveredBlock31Block92Result := recoveredBlock31Block92Stack0.
            recoveredBlock31Block92Done := true.
        ].
    ].
    recoveredBlock31Block92Result
].
    recoveredBlock31Value8 := (recoveredBlock31Value0) listFontsWithInfo: (recoveredBlock31Value1) max: (recoveredBlock31Value5) listBlock: (recoveredBlock31Value6) ifAlias: (recoveredBlock31Value7).
    recoveredBlock31Value8
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    ^recoveredValue10
! !

