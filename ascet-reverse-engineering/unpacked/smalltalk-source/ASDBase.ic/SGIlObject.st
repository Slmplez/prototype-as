"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000760; bytecode file offset 0x8ffcfc"
!SGIlObject methodsFor: 'recovered'!
expandSource
    ^self
! !

"ASDBase.ic method 0x200096d4; bytecode file offset 0x908be4"
!SGIlObject methodsFor: 'recovered'!
generalOptimizationStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) optimizationFactory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027eb4; bytecode file offset 0x934580"
!SGIlObject methodsFor: 'recovered'!
arithOpExpansionStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expansionFactory.
    recoveredValue1 := (recoveredValue0) arithOpExpansionVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c844; bytecode file offset 0x934580"
!SGIlObject methodsFor: 'recovered'!
arithOpBasicTransformationStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) transformationFactory.
    recoveredValue1 := (recoveredValue0) basicArithmeticVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030824; bytecode file offset 0x934580"
!SGIlObject methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) inactiveNodeVisitorSingleton.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200326a4; bytecode file offset 0x934580"
!SGIlObject methodsFor: 'recovered'!
structureExpansionVisitor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expansionFactory.
    recoveredValue1 := (recoveredValue0) structureExpansionVisitor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ce48; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
transformationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d348; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
currentIleExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d3a8; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
reserveTempStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003db68; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dbf8; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003deb8; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
expansionFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpansionFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003efc8; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
optimizationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlOptimizationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f0f8; bytecode file offset 0x93bf94"
!SGIlObject methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004de18; bytecode file offset 0x94a6d0"
!SGIlObject methodsFor: 'recovered'!
source
    (self) etasCodeGenHalt.
    ^nil
! !

"ASDBase.ic method 0x2005c690; bytecode file offset 0x959680"
!SGIlObject methodsFor: 'recovered'!
generalExpansionStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlExpansionFactory.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) expansionVisitor.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cbe0; bytecode file offset 0x959680"
!SGIlObject methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200738c0; bytecode file offset 0x970b34"
!SGIlObject methodsFor: 'recovered'!
comments
    ^nil
! !

"ASDBase.ic method 0x2007429c; bytecode file offset 0x970bc8"
!SGIlObject methodsFor: 'recovered'!
ileRuntimeCostsOfConstant
    ^7
! !

"ASDBase.ic method 0x2007460c; bytecode file offset 0x970f98"
!SGIlObject methodsFor: 'recovered'!
ileRuntimeCostsOfExpr
    ^10
! !

"ASDBase.ic method 0x200796b4; bytecode file offset 0x97c330"
!SGIlObject methodsFor: 'recovered'!
isMdlCaseStmnt
    ^false
! !

"ASDBase.ic method 0x2007b56c; bytecode file offset 0x97c330"
!SGIlObject methodsFor: 'recovered'!
isMdlDefaultStmnt
    ^false
! !

"ASDBase.ic method 0x2007cd84; bytecode file offset 0x97c330"
!SGIlObject methodsFor: 'recovered'!
isIleOptimizedStmnt
    ^false
! !

"ASDBase.ic method 0x2007d7d4; bytecode file offset 0x97c330"
!SGIlObject methodsFor: 'recovered'!
isIleEmptyBlock
    ^false
! !

"ASDBase.ic method 0x200a9c64; bytecode file offset 0x9a6780"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) source.
    (self) ileSemErrNo: (recoveredValue0) source: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ac538; bytecode file offset 0x9a8ea4"
!SGIlObject methodsFor: 'recovered'!
createStapledSourceStart: recoveredArg1 end: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgStapledSource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) start: (recoveredValue1) end: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8db8; bytecode file offset 0x9c5684"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) source.
    recoveredValue3 := (self) ileWarningNo: (recoveredValue0) with: (recoveredValue1) source: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dc93c; bytecode file offset 0x9d9278"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) source.
    (self) ileSemErrNo: (recoveredValue0) with: (recoveredValue1) source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ed568; bytecode file offset 0x9e9ee4"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) source.
    (self) ileSemErrNo: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20102680; bytecode file offset 0x9fef4c"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) source.
    (self) ileWarningNo: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201110fc; bytecode file offset 0xa0d9d8"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (#()) category: ('Ile') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201348bc; bytecode file offset 0xa31180"
!SGIlObject methodsFor: 'recovered'!
ileInfoNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) expandSource.
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) infoNo: (recoveredValue1) args: (nil) category: ('Ile') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20135914; bytecode file offset 0xa321d8"
!SGIlObject methodsFor: 'recovered'!
ileInfoNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) expandSource.
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue2) category: ('Ile') source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201363dc; bytecode file offset 0xa32cdc"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue4) category: ('Ile') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20136414; bytecode file offset 0xa32cdc"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Ile') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2014362c; bytecode file offset 0xa3fef4"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) expandSource.
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (nil) category: ('Ile') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20146428; bytecode file offset 0xa42d14"
!SGIlObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue3) category: ('Ia') source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201583a4; bytecode file offset 0xa54dbc"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20158430; bytecode file offset 0xa54dbc"
!SGIlObject methodsFor: 'recovered'!
ileSemErrNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20179870; bytecode file offset 0xa7623c"
!SGIlObject methodsFor: 'recovered'!
ileErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20188f98; bytecode file offset 0xa85860"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg5.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue6) category: ('Ile') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20198518; bytecode file offset 0xa94f24"
!SGIlObject methodsFor: 'recovered'!
ileErrorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) source.
    (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue6) category: ('Ile') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a90a0; bytecode file offset 0xaa5970"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) expandSource.
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Ile') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201b7594; bytecode file offset 0xab3f00"
!SGIlObject methodsFor: 'recovered'!
ileWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue7) category: ('Ile') source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20373900; bytecode file offset 0xc701d8"
!SGIlObject methodsFor: 'recovered'!
createUnsignedImplTypeFromInterval: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBInt8Unsigned.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 65535.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := RBInt16Unsigned.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 4294967295.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := RBInt32Unsigned.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d4aa0; bytecode file offset 0xdd13ac"
!SGIlObject methodsFor: 'recovered'!
createImplTypeFromInterval: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileFloat64.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := -128.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 127.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBInt8Signed.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := RBInt8Unsigned.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := -32768.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 32767.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := RBInt16Signed.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 65535.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := RBInt16Unsigned.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := -2147483648.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 2147483647.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := RBInt32Signed.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := 4294967295.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludedIn: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := RBInt32Unsigned.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

