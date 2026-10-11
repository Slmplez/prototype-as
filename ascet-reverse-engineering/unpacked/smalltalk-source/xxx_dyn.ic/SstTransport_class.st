"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000630; bytecode file offset 0x619a4"
!SstTransport class methodsFor: 'recovered'!
invalidTransport
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000589c; bytecode file offset 0x66a34"
!SstTransport class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20005eb4; bytecode file offset 0x66f80"
!SstTransport class methodsFor: 'recovered'!
endpoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) configuration.
    recoveredValue3 := (self) endpoint: (recoveredValue0) configuration: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20009e58; bytecode file offset 0x6af28"
!SstTransport class methodsFor: 'recovered'!
endpoint: recoveredArg1 configuration: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) endpoint: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) configuration: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000a42c; bytecode file offset 0x6b500"
!SstTransport class methodsFor: 'recovered'!
unregister: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) removeReachabilitiesFor: (recoveredValue0).
    recoveredValue1 := (self) configurationRegistry.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000b21c; bytecode file offset 0x6c2ec"
!SstTransport class methodsFor: 'recovered'!
availableIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ConfigurationRegistry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ConfigurationRegistry.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ba90; bytecode file offset 0x6cb64"
!SstTransport class methodsFor: 'recovered'!
register: recoveredArg1 reachableBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) transportIdentifier.
    recoveredValue2 := recoveredArg2.
    (self) mark: (recoveredValue1) reachableBy: (recoveredValue2).
    recoveredValue3 := (self) configurationRegistry.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) transportIdentifier.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x2000bc50; bytecode file offset 0x6cd5c"
!SstTransport class methodsFor: 'recovered'!
configurationRegistry
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ConfigurationRegistry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ConfigurationRegistry := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ConfigurationRegistry.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bc8c; bytecode file offset 0x6cd5c"
!SstTransport class methodsFor: 'recovered'!
reachabilities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Reachabilities.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Reachabilities := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Reachabilities.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000f514; bytecode file offset 0x705f0"
!SstTransport class methodsFor: 'recovered'!
mark: recoveredArg1 reachableBy: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) reachabilities.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block2800aa04Value0 block2800aa04Value1 |
    block2800aa04Value0 := Set.
    block2800aa04Value1 := (block2800aa04Value0) new.
    block2800aa04Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000f6a4; bytecode file offset 0x70774"
!SstTransport class methodsFor: 'recovered'!
is: recoveredArg1 reachableBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) reachabilities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^false
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) includes: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x20011714; bytecode file offset 0x727f0"
!SstTransport class methodsFor: 'recovered'!
configurationFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstAsUrl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SstError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SstUndefinedTransportError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) transport.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationForIdentifier: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012cd8; bytecode file offset 0x73dd4"
!SstTransport class methodsFor: 'recovered'!
configurationForIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) configurationRegistry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := SstError.
    recoveredBlock8Value1 := SstUndefinedTransportError.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value0) for: (recoveredBlock8Value1) with: (recoveredBlock8Value2).
    ^recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) copy.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20014de4; bytecode file offset 0x75ebc"
!SstTransport class methodsFor: 'recovered'!
removeReachabilitiesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) reachabilities.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := (self) reachabilities.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := [].
    recoveredBlock14Value3 := (recoveredBlock14Value0) remove: (recoveredBlock14Value1) ifAbsent: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2001b2f8; bytecode file offset 0x7c3d8"
!SstTransport class methodsFor: 'recovered'!
register: recoveredArg1 mutuallyReachableBy: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) transportIdentifier.
    recoveredValue2 := recoveredArg2.
    (self) mark: (recoveredValue1) reachableBy: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := Array.
    recoveredBlock16Value2 := recoveredArg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) transportIdentifier.
    recoveredBlock16Value4 := (recoveredBlock16Value1) with: (recoveredBlock16Value3).
    recoveredBlock16Value5 := (self) mark: (recoveredBlock16Value0) reachableBy: (recoveredBlock16Value4).
    recoveredBlock16Value5
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) configurationRegistry.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) transportIdentifier.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue5) at: (recoveredValue7) put: (recoveredValue8).
    ^recoveredValue9
! !

"xxx_dyn.ic method 0x2001fb7c; bytecode file offset 0x80c98"
!SstTransport class methodsFor: 'recovered'!
addPackagingRulesFor: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2800bb08Arg1 | 
    | block2800bb08Stack0 block2800bb08Stack1 block2800bb08Stack2 block2800bb08Stack3 block2800bb08PC block2800bb08Step block2800bb08Done block2800bb08Result |
    block2800bb08Stack0 := self.
    block2800bb08PC := 4.
    block2800bb08Done := false.
    [block2800bb08Done not] whileTrue: [
        block2800bb08Step := block2800bb08PC.
        block2800bb08Step = 4 ifTrue: [
            block2800bb08Stack1 := false.
            block2800bb08PC := 5.
        ].
        block2800bb08Step = 5 ifTrue: [
            block2800bb08Stack2 := block2800bb08Arg1.
            block2800bb08PC := 6.
        ].
        block2800bb08Step = 6 ifTrue: [
            block2800bb08Stack2 := (block2800bb08Stack2) image.
            block2800bb08PC := 7.
        ].
        block2800bb08Step = 7 ifTrue: [
            block2800bb08Stack2 := (block2800bb08Stack2) isRunningImage.
            block2800bb08PC := 8.
        ].
        block2800bb08Step = 8 ifTrue: [
            (block2800bb08Stack2) ifTrue: [block2800bb08PC := 12] ifFalse: [block2800bb08PC := 17].
        ].
        block2800bb08Step = 12 ifTrue: [
            block2800bb08PC := 13.
        ].
        block2800bb08Step = 13 ifTrue: [
            block2800bb08Stack1 := block2800bb08Arg1.
            block2800bb08PC := 14.
        ].
        block2800bb08Step = 14 ifTrue: [
            block2800bb08Stack1 := (block2800bb08Stack1) reductionPolicy.
            block2800bb08PC := 15.
        ].
        block2800bb08Step = 15 ifTrue: [
            block2800bb08Stack1 := (block2800bb08Stack1) isRuntimeReductionPolicy.
            block2800bb08PC := 17.
        ].
        block2800bb08Step = 17 ifTrue: [
            block2800bb08Result := block2800bb08Stack1.
            block2800bb08Done := true.
        ].
    ].
    block2800bb08Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) configurationForIdentifier: (recoveredBlock26Stack3).
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack3.
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isSstError.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 51] ifFalse: [recoveredBlock26PC := 46].
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) addPackagingRulesFor: (recoveredBlock26Stack2).
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := [:block2800bb2cArg1 | 
    nil
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

