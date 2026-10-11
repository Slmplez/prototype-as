"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008b04; bytecode file offset 0x908be4"
!SGIlDefineExpr methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024554; bytecode file offset 0x92209c"
!SGIlDefineExpr methodsFor: 'recovered'!
objectRefPostfix
    ^'_REF_'
! !

"ASDBase.ic method 0x200623fc; bytecode file offset 0x95f8b0"
!SGIlDefineExpr methodsFor: 'recovered'!
symbolConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitSymbolConstant.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006258c; bytecode file offset 0x95f8b0"
!SGIlDefineExpr methodsFor: 'recovered'!
avoidMacroDefinition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitAvoidMacroDefinition.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200628e8; bytecode file offset 0x95f8b0"
!SGIlDefineExpr methodsFor: 'recovered'!
nDefinedSymbolConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitNDefinedSymbolConstant.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200661ac; bytecode file offset 0x963428"
!SGIlDefineExpr methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066d34; bytecode file offset 0x9646f8"
!SGIlDefineExpr methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006867c; bytecode file offset 0x965b90"
!SGIlDefineExpr methodsFor: 'recovered'!
expr
    | recoveredValue0 |
    recoveredValue0 := expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ca8; bytecode file offset 0x966bdc"
!SGIlDefineExpr methodsFor: 'recovered'!
dbKey
    | recoveredValue0 |
    recoveredValue0 := dbKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b8d8; bytecode file offset 0x96873c"
!SGIlDefineExpr methodsFor: 'recovered'!
originalName
    | recoveredValue0 |
    recoveredValue0 := originalName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200720a8; bytecode file offset 0x96ee04"
!SGIlDefineExpr methodsFor: 'recovered'!
bitAvoidMacroDefinition
    ^1
! !

"ASDBase.ic method 0x20072808; bytecode file offset 0x96f1c4"
!SGIlDefineExpr methodsFor: 'recovered'!
bitSymbolConstant
    ^2
! !

"ASDBase.ic method 0x20072ab8; bytecode file offset 0x96f3cc"
!SGIlDefineExpr methodsFor: 'recovered'!
bitNDefinedSymbolConstant
    ^3
! !

"ASDBase.ic method 0x200be65c; bytecode file offset 0x9bb178"
!SGIlDefineExpr methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beeb0; bytecode file offset 0x9bc0b4"
!SGIlDefineExpr methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbb4; bytecode file offset 0x9bd228"
!SGIlDefineExpr methodsFor: 'recovered'!
expr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c50; bytecode file offset 0x9bdf14"
!SGIlDefineExpr methodsFor: 'recovered'!
dbKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c212c; bytecode file offset 0x9beac8"
!SGIlDefineExpr methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    flags := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2470; bytecode file offset 0x9bf474"
!SGIlDefineExpr methodsFor: 'recovered'!
originalName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20129c48; bytecode file offset 0xa26500"
!SGIlDefineExpr methodsFor: 'recovered'!
flags
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := flags.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := flags.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012fa68; bytecode file offset 0xa2c3a4"
!SGIlDefineExpr methodsFor: 'recovered'!
initialize
    super initialize.
    (self) symbolConstant: (false).
    (self) nDefinedSymbolConstant: (false).
    ^self
! !

"ASDBase.ic method 0x201f47b8; bytecode file offset 0xaf10b8"
!SGIlDefineExpr methodsFor: 'recovered'!
symbolConstant: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitSymbolConstant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) setBit: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitSymbolConstant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) clearBit: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f47d4; bytecode file offset 0xaf10b8"
!SGIlDefineExpr methodsFor: 'recovered'!
avoidMacroDefinition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAvoidMacroDefinition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) setBit: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAvoidMacroDefinition.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) clearBit: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f47f0; bytecode file offset 0xaf10b8"
!SGIlDefineExpr methodsFor: 'recovered'!
nDefinedSymbolConstant: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitNDefinedSymbolConstant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) setBit: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) flags.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitNDefinedSymbolConstant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) clearBit: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) flags: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c510; bytecode file offset 0xb18de0"
!SGIlDefineExpr methodsFor: 'recovered'!
undefineANSICon: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleComplexBaseType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectRefPostfix.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cppUndefine: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) cppUndefine: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

