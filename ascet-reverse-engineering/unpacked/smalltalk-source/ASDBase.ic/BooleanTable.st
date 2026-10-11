"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200083c0; bytecode file offset 0x908be4"
!BooleanTable methodsFor: 'recovered'!
isNotifyPermitted
    | recoveredValue0 |
    recoveredValue0 := (self) notify.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200188d8; bytecode file offset 0x92209c"
!BooleanTable methodsFor: 'recovered'!
inputNamePrefix
    ^'X'
! !

"ASDBase.ic method 0x2001c5bc; bytecode file offset 0x92209c"
!BooleanTable methodsFor: 'recovered'!
outputNamePrefix
    ^'Y'
! !

"ASDBase.ic method 0x20028cc4; bytecode file offset 0x934580"
!BooleanTable methodsFor: 'recovered'!
minCombinations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) minCombinations.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aa94; bytecode file offset 0x934580"
!BooleanTable methodsFor: 'recovered'!
outputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oNames.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002eea4; bytecode file offset 0x934580"
!BooleanTable methodsFor: 'recovered'!
minInputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) minInputs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034164; bytecode file offset 0x934580"
!BooleanTable methodsFor: 'recovered'!
inputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iNames.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200378e4; bytecode file offset 0x934580"
!BooleanTable methodsFor: 'recovered'!
minOutputs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) minOutputs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b504; bytecode file offset 0x938608"
!BooleanTable methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a6c; bytecode file offset 0x945328"
!BooleanTable methodsFor: 'recovered'!
suppressNotify
    notify := false.
    ^self
! !

"ASDBase.ic method 0x20049a7c; bytecode file offset 0x947128"
!BooleanTable methodsFor: 'recovered'!
createNextUniqueInputName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createNextInputName.
    recoveredValue1 := (self) uniqueInputNameFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049b9c; bytecode file offset 0x947128"
!BooleanTable methodsFor: 'recovered'!
createNextUniqueOutputName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createNextOutputName.
    recoveredValue1 := (self) uniqueOutputNameFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a998; bytecode file offset 0x947254"
!BooleanTable methodsFor: 'recovered'!
allowNotify
    notify := true.
    ^self
! !

"ASDBase.ic method 0x20057eb8; bytecode file offset 0x956284"
!BooleanTable methodsFor: 'recovered'!
outputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059318; bytecode file offset 0x956284"
!BooleanTable methodsFor: 'recovered'!
inputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) iNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a118; bytecode file offset 0x956a30"
!BooleanTable methodsFor: 'recovered'!
removeCombination: recoveredArg1 atIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) removeAtIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ee18; bytecode file offset 0x95b7f0"
!BooleanTable methodsFor: 'recovered'!
addCombination
    (self) addCombinationValue: (nil).
    ^self
! !

"ASDBase.ic method 0x2005ef74; bytecode file offset 0x95b840"
!BooleanTable methodsFor: 'recovered'!
createNextInputName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) inputs.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := (self) createInputNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ef84; bytecode file offset 0x95b840"
!BooleanTable methodsFor: 'recovered'!
createNextOutputName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) outputs.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := (self) createOutputNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006605c; bytecode file offset 0x963428"
!BooleanTable methodsFor: 'recovered'!
iNames
    | recoveredValue0 |
    recoveredValue0 := iNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006757c; bytecode file offset 0x9646f8"
!BooleanTable methodsFor: 'recovered'!
oNames
    | recoveredValue0 |
    recoveredValue0 := oNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072964; bytecode file offset 0x96f220"
!BooleanTable methodsFor: 'recovered'!
resetChar
    ^$0
! !

"ASDBase.ic method 0x20074714; bytecode file offset 0x970fc8"
!BooleanTable methodsFor: 'recovered'!
setChar
    ^$1
! !

"ASDBase.ic method 0x20080af4; bytecode file offset 0x97d3a8"
!BooleanTable methodsFor: 'recovered'!
undefinedChar
    ^$*
! !

"ASDBase.ic method 0x20082acc; bytecode file offset 0x97f488"
!BooleanTable methodsFor: 'recovered'!
inputCharAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inputAt: (recoveredValue0).
    recoveredValue2 := (self) charForState: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082b4c; bytecode file offset 0x97f488"
!BooleanTable methodsFor: 'recovered'!
outputCharAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outputAt: (recoveredValue0).
    recoveredValue2 := (self) charForState: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083d70; bytecode file offset 0x9807dc"
!BooleanTable methodsFor: 'recovered'!
uniqueInputNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inputNames.
    recoveredValue2 := (recoveredValue0) uniqueStringFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083ec0; bytecode file offset 0x9807dc"
!BooleanTable methodsFor: 'recovered'!
uniqueOutputNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outputNames.
    recoveredValue2 := (recoveredValue0) uniqueStringFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086048; bytecode file offset 0x982a70"
!BooleanTable methodsFor: 'recovered'!
createOutputNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outputNamePrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086188; bytecode file offset 0x982a70"
!BooleanTable methodsFor: 'recovered'!
createInputNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) inputNamePrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086f2c; bytecode file offset 0x9837f0"
!BooleanTable methodsFor: 'recovered'!
addCombination: recoveredArg1 new: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2008cec4; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
removeLastOutput
    | recoveredValue0 |
    recoveredValue0 := (self) outputs.
    (self) removeOutputAtIndex: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d074; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
removeAllCombinations
    | recoveredValue0 |
    recoveredValue0 := (self) combinations.
    (self) removeCombinations: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d144; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
addOutput
    | recoveredValue0 |
    recoveredValue0 := (self) createNextUniqueOutputName.
    (self) addOutput: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d164; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
removeLastInput
    | recoveredValue0 |
    recoveredValue0 := (self) inputs.
    (self) removeInputAtIndex: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d1e4; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
addInput
    | recoveredValue0 |
    recoveredValue0 := (self) createNextUniqueInputName.
    (self) addInput: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d3f4; bytecode file offset 0x989db0"
!BooleanTable methodsFor: 'recovered'!
removeLastCombination
    | recoveredValue0 |
    recoveredValue0 := (self) combinations.
    (self) removeCombinationAtIndex: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d820; bytecode file offset 0x98a0ec"
!BooleanTable methodsFor: 'recovered'!
possibleInputCombinations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inputs.
    recoveredValue1 := (2) raisedTo: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008d830; bytecode file offset 0x98a0ec"
!BooleanTable methodsFor: 'recovered'!
possibleOutputCombinations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) outputs.
    recoveredValue1 := (2) raisedTo: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093840; bytecode file offset 0x9904ac"
!BooleanTable methodsFor: 'recovered'!
addOutputCombination: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) addCombination: (recoveredValue0) new: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200938e0; bytecode file offset 0x9904ac"
!BooleanTable methodsFor: 'recovered'!
removeInputCombinationAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) removeCombination: (recoveredValue0) atIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200939c0; bytecode file offset 0x9904ac"
!BooleanTable methodsFor: 'recovered'!
removeOutputCombinationAtIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) removeCombination: (recoveredValue0) atIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093ba0; bytecode file offset 0x9904ac"
!BooleanTable methodsFor: 'recovered'!
addInputCombination: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) addCombination: (recoveredValue0) new: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094ba4; bytecode file offset 0x99148c"
!BooleanTable methodsFor: 'recovered'!
addOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addOutput: (recoveredValue0) state: (false).
    ^self
! !

"ASDBase.ic method 0x20094c70; bytecode file offset 0x991570"
!BooleanTable methodsFor: 'recovered'!
addCombinationBeforeIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addCombinationBeforeIndex: (recoveredValue0) value: (nil).
    ^self
! !

"ASDBase.ic method 0x20094cac; bytecode file offset 0x991570"
!BooleanTable methodsFor: 'recovered'!
addInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addInput: (recoveredValue0) state: (nil).
    ^self
! !

"ASDBase.ic method 0x200a1b6c; bytecode file offset 0x99e42c"
!BooleanTable methodsFor: 'recovered'!
combinations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := oCombinations.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) min: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a529c; bytecode file offset 0x9a1dc8"
!BooleanTable methodsFor: 'recovered'!
addInputBeforeIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createNextUniqueInputName.
    recoveredValue1 := recoveredArg1.
    (self) addInput: (recoveredValue0) beforeIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a52fc; bytecode file offset 0x9a1dc8"
!BooleanTable methodsFor: 'recovered'!
addOutputBeforeIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createNextUniqueOutputName.
    recoveredValue1 := recoveredArg1.
    (self) addOutput: (recoveredValue0) beforeIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aa25c; bytecode file offset 0x9a6b38"
!BooleanTable methodsFor: 'recovered'!
isValidCombinationIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) combinations.
    recoveredValue2 := (recoveredValue0) between: (1) and: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa274; bytecode file offset 0x9a6b38"
!BooleanTable methodsFor: 'recovered'!
isValidInputIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inputs.
    recoveredValue2 := (recoveredValue0) between: (1) and: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa280; bytecode file offset 0x9a6b38"
!BooleanTable methodsFor: 'recovered'!
isValidOutputIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outputs.
    recoveredValue2 := (recoveredValue0) between: (1) and: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba750; bytecode file offset 0x9b708c"
!BooleanTable methodsFor: 'recovered'!
notifyNow: recoveredArg1
    | recoveredValue0 |
    (self) allowNotify.
    recoveredValue0 := recoveredArg1.
    (self) notifyDependents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bd6f0; bytecode file offset 0x9b9fcc"
!BooleanTable methodsFor: 'recovered'!
outputAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) oCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) y.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200bd708; bytecode file offset 0x9b9fcc"
!BooleanTable methodsFor: 'recovered'!
inputAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) y.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200bd9c4; bytecode file offset 0x9bb178"
!BooleanTable methodsFor: 'recovered'!
iNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf558; bytecode file offset 0x9bc0b4"
!BooleanTable methodsFor: 'recovered'!
oNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c00ac; bytecode file offset 0x9bd228"
!BooleanTable methodsFor: 'recovered'!
iCombinations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iCombinations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1020; bytecode file offset 0x9bdf14"
!BooleanTable methodsFor: 'recovered'!
oCombinations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oCombinations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8094; bytecode file offset 0x9c49a0"
!BooleanTable methodsFor: 'recovered'!
swapOutputCombinationAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) swapCombination: (recoveredValue0) index: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c80a4; bytecode file offset 0x9c49a0"
!BooleanTable methodsFor: 'recovered'!
addOutputCombination: recoveredArg1 beforeIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) addCombination: (recoveredValue0) new: (recoveredValue1) beforeIndex: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c80c4; bytecode file offset 0x9c49a0"
!BooleanTable methodsFor: 'recovered'!
addInputCombination: recoveredArg1 beforeIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) addCombination: (recoveredValue0) new: (recoveredValue1) beforeIndex: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c80d4; bytecode file offset 0x9c49a0"
!BooleanTable methodsFor: 'recovered'!
swapInputCombinationAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) iCombinations.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) swapCombination: (recoveredValue0) index: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8744; bytecode file offset 0x9c502c"
!BooleanTable methodsFor: 'recovered'!
addOutput: recoveredArg1 beforeIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) addOutput: (recoveredValue0) state: (nil) beforeIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c8768; bytecode file offset 0x9c502c"
!BooleanTable methodsFor: 'recovered'!
addInput: recoveredArg1 beforeIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) addInput: (recoveredValue0) state: (nil) beforeIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200cc30c; bytecode file offset 0x9c8f90"
!BooleanTable methodsFor: 'recovered'!
outputChars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) setChar.
    recoveredValue2 := (self) resetChar.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dc53c; bytecode file offset 0x9d8e58"
!BooleanTable methodsFor: 'recovered'!
detectInputCombination: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iCombinations.
    recoveredValue2 := recoveredArg2.
    (self) detect: (recoveredValue0) in: (recoveredValue1) ifNone: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc58c; bytecode file offset 0x9d8e58"
!BooleanTable methodsFor: 'recovered'!
detectOutputCombination: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) oCombinations.
    recoveredValue2 := recoveredArg2.
    (self) detect: (recoveredValue0) in: (recoveredValue1) ifNone: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ea8f4; bytecode file offset 0x9e71e0"
!BooleanTable methodsFor: 'recovered'!
notifyDependents: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNotifyPermitted.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) changed: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ee3c4; bytecode file offset 0x9eacac"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForOutputs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := (recoveredValue0) createUpdateOutputsFor: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ee3d8; bytecode file offset 0x9eacac"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForInputs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := (recoveredValue0) createUpdateInputsFor: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ee3ec; bytecode file offset 0x9eacac"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForCombinations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := (recoveredValue0) createUpdateCombinationsFor: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010050c; bytecode file offset 0x9fcdcc"
!BooleanTable methodsFor: 'recovered'!
notifyAfter: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) suppressNotify.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value.
    recoveredValue1 := recoveredArg2.
    (self) notifyNow: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20104c84; bytecode file offset 0xa01584"
!BooleanTable methodsFor: 'recovered'!
inputChars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) setChar.
    recoveredValue2 := (self) resetChar.
    recoveredValue3 := (self) undefinedChar.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20105e0c; bytecode file offset 0xa026d0"
!BooleanTable methodsFor: 'recovered'!
notify
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := notify.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) allowNotify.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := notify.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20112ff0; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedInputValueAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateInputCellAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20113004; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedCombinationAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateCombinationAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20113018; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedOutputValuesAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateOutputCellsAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011302c; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedOutputValueAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateOutputCellAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20113040; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedOutputNameAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateOutputNameAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20113054; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedInputValuesAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateInputCellsAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20113068; bytecode file offset 0xa0f928"
!BooleanTable methodsFor: 'recovered'!
notifyDependentsForChangedInputNameAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := BooleanTableUpdateInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createUpdateInputNameAt: (recoveredValue1) for: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) notifyDependents: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201239a8; bytecode file offset 0xa20264"
!BooleanTable methodsFor: 'recovered'!
addCombination: recoveredArg1 new: recoveredArg2 beforeIndex: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidCombinationIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) beforeIndex: (recoveredStack2).
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

"ASDBase.ic method 0x20130d70; bytecode file offset 0xa2d64c"
!BooleanTable methodsFor: 'recovered'!
isValidOutputPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isValidOutputIndex: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidCombinationIndex: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130d88; bytecode file offset 0xa2d64c"
!BooleanTable methodsFor: 'recovered'!
isValidInputPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isValidInputIndex: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidCombinationIndex: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ac78; bytecode file offset 0xa37538"
!BooleanTable methodsFor: 'recovered'!
iCombinations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := iCombinations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) iCombinations: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := iCombinations.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ae74; bytecode file offset 0xa37748"
!BooleanTable methodsFor: 'recovered'!
oCombinations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oCombinations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) oCombinations: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := oCombinations.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20147af4; bytecode file offset 0xa443b4"
!BooleanTable methodsFor: 'recovered'!
inputCharAt: recoveredArg1 put: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isValidInputPoint: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) stateForChar: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) inputAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20147e44; bytecode file offset 0xa44728"
!BooleanTable methodsFor: 'recovered'!
addInput: recoveredArg1 state: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) iNames.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) iCombinations.
    recoveredValue3 := recoveredArg2.
    (self) addRow: (recoveredValue2) state: (recoveredValue3).
    (self) notifyDependentsForInputs.
    ^self
! !

"ASDBase.ic method 0x20147e60; bytecode file offset 0xa44728"
!BooleanTable methodsFor: 'recovered'!
addOutput: recoveredArg1 state: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oNames.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) oCombinations.
    recoveredValue3 := recoveredArg2.
    (self) addRow: (recoveredValue2) state: (recoveredValue3).
    (self) notifyDependentsForOutputs.
    ^self
! !

"ASDBase.ic method 0x2015662c; bytecode file offset 0xa52ee8"
!BooleanTable methodsFor: 'recovered'!
indexForOutputName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) = (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) findFirst: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20164f40; bytecode file offset 0xa61808"
!BooleanTable methodsFor: 'recovered'!
addCombinationValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createInputCombinationForValue: (recoveredValue0).
    (self) addInputCombination: (recoveredValue1).
    recoveredValue2 := (self) createOutputCombinationForValue: (0).
    (self) addOutputCombination: (recoveredValue2).
    (self) notifyDependentsForCombinations.
    ^self
! !

"ASDBase.ic method 0x20165e58; bytecode file offset 0xa62724"
!BooleanTable methodsFor: 'recovered'!
createOutputCombinationForValue: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOutputCombination.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOutputCombination.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) init: (recoveredStack2) withValue: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20165e68; bytecode file offset 0xa62724"
!BooleanTable methodsFor: 'recovered'!
createInputCombinationForValue: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInputCombination.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) createInputCombination.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) init: (recoveredStack2) withValue: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20178868; bytecode file offset 0xa75144"
!BooleanTable methodsFor: 'recovered'!
setInputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidInputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) iNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedInputNameAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20178880; bytecode file offset 0xa75144"
!BooleanTable methodsFor: 'recovered'!
setOutputName: recoveredArg1 atIndex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedOutputNameAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017d970; bytecode file offset 0xa7a22c"
!BooleanTable methodsFor: 'recovered'!
swapIn: recoveredArg1 index: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x201859b8; bytecode file offset 0xa8227c"
!BooleanTable methodsFor: 'recovered'!
removeCombinationAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidCombinationIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeInputCombinationAtIndex: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) removeOutputCombinationAtIndex: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) notifyDependentsForCombinations.
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

"ASDBase.ic method 0x2018762c; bytecode file offset 0xa83ef4"
!BooleanTable methodsFor: 'recovered'!
addCombinationBeforeIndex: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) createInputCombinationForValue: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    (self) addInputCombination: (recoveredValue1) beforeIndex: (recoveredValue2).
    recoveredValue3 := (self) createOutputCombinationForValue: (0).
    recoveredValue4 := recoveredArg1.
    (self) addOutputCombination: (recoveredValue3) beforeIndex: (recoveredValue4).
    (self) notifyDependentsForCombinations.
    ^self
! !

"ASDBase.ic method 0x20187c40; bytecode file offset 0xa84500"
!BooleanTable methodsFor: 'recovered'!
swapCombinationAtIndex: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) swapInputCombinationAtIndex: (recoveredValue0) with: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (self) swapOutputCombinationAtIndex: (recoveredValue2) with: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) notifyDependentsForChangedCombinationAt: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    (self) notifyDependentsForChangedCombinationAt: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201880c4; bytecode file offset 0xa849a0"
!BooleanTable methodsFor: 'recovered'!
removeRow: recoveredArg1 atIndex: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) removeAtIndex: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201880d4; bytecode file offset 0xa849a0"
!BooleanTable methodsFor: 'recovered'!
addRow: recoveredArg1 state: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) add: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2019d0b0; bytecode file offset 0xa9998c"
!BooleanTable methodsFor: 'recovered'!
completeInputRows
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) completeMissingInputCombinations.
    recoveredBlock4Value0
].
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := BooleanTableUpdateInfo.
    recoveredValue2 := (recoveredValue1) createUpdateCombinationsFor: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    (self) notifyAfter: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2019d0c8; bytecode file offset 0xa9998c"
!BooleanTable methodsFor: 'recovered'!
completeOutputRows
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) completeMissingOutputCombinations.
    recoveredBlock4Value0
].
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := BooleanTableUpdateInfo.
    recoveredValue2 := (recoveredValue1) createUpdateCombinationsFor: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    (self) notifyAfter: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201a1970; bytecode file offset 0xa9e254"
!BooleanTable methodsFor: 'recovered'!
outputNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) oNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d29f0Arg1 | 
    | block280d29f0Stack0 block280d29f0Stack1 block280d29f0Stack2 block280d29f0PC block280d29f0Step block280d29f0Done block280d29f0Result |
    block280d29f0Stack0 := self.
    block280d29f0PC := 4.
    block280d29f0Done := false.
    [block280d29f0Done not] whileTrue: [
        block280d29f0Step := block280d29f0PC.
        block280d29f0Step = 4 ifTrue: [
            block280d29f0Stack1 := block280d29f0Arg1.
            block280d29f0PC := 5.
        ].
        block280d29f0Step = 5 ifTrue: [
            (block280d29f0Stack1 ~~ nil) ifTrue: [block280d29f0PC := 14] ifFalse: [block280d29f0PC := 8].
        ].
        block280d29f0Step = 8 ifTrue: [
            block280d29f0Stack1 := ASDDisplayStrings.
            block280d29f0PC := 10.
        ].
        block280d29f0Step = 10 ifTrue: [
            block280d29f0Stack1 := (block280d29f0Stack1) undefinedString.
            block280d29f0PC := 11.
        ].
        block280d29f0Step = 11 ifTrue: [
            block280d29f0PC := 15.
        ].
        block280d29f0Step = 14 ifTrue: [
            block280d29f0Stack1 := block280d29f0Arg1.
            block280d29f0PC := 15.
        ].
        block280d29f0Step = 15 ifTrue: [
            block280d29f0Result := block280d29f0Stack1.
            block280d29f0Done := true.
        ].
    ].
    block280d29f0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a198c; bytecode file offset 0xa9e254"
!BooleanTable methodsFor: 'recovered'!
inputNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d2a14Arg1 | 
    | block280d2a14Stack0 block280d2a14Stack1 block280d2a14Stack2 block280d2a14PC block280d2a14Step block280d2a14Done block280d2a14Result |
    block280d2a14Stack0 := self.
    block280d2a14PC := 4.
    block280d2a14Done := false.
    [block280d2a14Done not] whileTrue: [
        block280d2a14Step := block280d2a14PC.
        block280d2a14Step = 4 ifTrue: [
            block280d2a14Stack1 := block280d2a14Arg1.
            block280d2a14PC := 5.
        ].
        block280d2a14Step = 5 ifTrue: [
            (block280d2a14Stack1 ~~ nil) ifTrue: [block280d2a14PC := 14] ifFalse: [block280d2a14PC := 8].
        ].
        block280d2a14Step = 8 ifTrue: [
            block280d2a14Stack1 := ASDDisplayStrings.
            block280d2a14PC := 10.
        ].
        block280d2a14Step = 10 ifTrue: [
            block280d2a14Stack1 := (block280d2a14Stack1) undefinedString.
            block280d2a14PC := 11.
        ].
        block280d2a14Step = 11 ifTrue: [
            block280d2a14PC := 15.
        ].
        block280d2a14Step = 14 ifTrue: [
            block280d2a14Stack1 := block280d2a14Arg1.
            block280d2a14PC := 15.
        ].
        block280d2a14Step = 15 ifTrue: [
            block280d2a14Result := block280d2a14Stack1.
            block280d2a14Done := true.
        ].
    ].
    block280d2a14Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a9284; bytecode file offset 0xaa5b40"
!BooleanTable methodsFor: 'recovered'!
swapCombination: recoveredArg1 index: recoveredArg2 with: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidCombinationIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidCombinationIndex: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) swapIn: (recoveredStack1) index: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b3620; bytecode file offset 0xaafedc"
!BooleanTable methodsFor: 'recovered'!
stateForChar: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) setChar.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) resetChar.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cc85c; bytecode file offset 0xac911c"
!BooleanTable methodsFor: 'recovered'!
charForState: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedChar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) setChar.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetChar.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cfd2c; bytecode file offset 0xacc5e8"
!BooleanTable methodsFor: 'recovered'!
detect: recoveredArg1 in: recoveredArg2 ifNone: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (self) combination: (recoveredBlock7Value0) includes: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cfe8c; bytecode file offset 0xacc748"
!BooleanTable methodsFor: 'recovered'!
addRow: recoveredArg1 state: recoveredArg2 beforeIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) add: (recoveredBlock7Value1) beforeIndex: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d3984; bytecode file offset 0xad0244"
!BooleanTable methodsFor: 'recovered'!
outputCharAt: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateForChar: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputPoint: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) outputAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dcdb8; bytecode file offset 0xad9674"
!BooleanTable methodsFor: 'recovered'!
swapRow: recoveredArg1 index: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (self) swapIn: (recoveredBlock7Value0) index: (recoveredBlock7Value1) with: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201e9674; bytecode file offset 0xae5f68"
!BooleanTable methodsFor: 'recovered'!
outputAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) oCombinations.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedOutputValueAt: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e9698; bytecode file offset 0xae5f68"
!BooleanTable methodsFor: 'recovered'!
inputAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) iCombinations.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedInputValueAt: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea9b0; bytecode file offset 0xae729c"
!BooleanTable methodsFor: 'recovered'!
addOutput: recoveredArg1 state: recoveredArg2 beforeIndex: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) beforeIndex: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) oCombinations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addRow: (recoveredStack1) state: (recoveredStack2) beforeIndex: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) notifyDependentsForOutputs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea9d0; bytecode file offset 0xae729c"
!BooleanTable methodsFor: 'recovered'!
addInput: recoveredArg1 state: recoveredArg2 beforeIndex: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidInputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) iNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) beforeIndex: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) iCombinations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addRow: (recoveredStack1) state: (recoveredStack2) beforeIndex: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) notifyDependentsForInputs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229e6c; bytecode file offset 0xb26748"
!BooleanTable methodsFor: 'recovered'!
swapOutputAtIndex: recoveredArg1 with: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) oCombinations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) swapRow: (recoveredStack1) index: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedOutputValuesAt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedOutputValuesAt: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229e84; bytecode file offset 0xb26748"
!BooleanTable methodsFor: 'recovered'!
swapInputAtIndex: recoveredArg1 with: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isValidInputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidInputIndex: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) iCombinations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) swapRow: (recoveredStack1) index: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedInputValuesAt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) notifyDependentsForChangedInputValuesAt: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20250ea4; bytecode file offset 0xb4d780"
!BooleanTable methodsFor: 'recovered'!
createInputCombination
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 34]] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20250ebc; bytecode file offset 0xb4d780"
!BooleanTable methodsFor: 'recovered'!
createOutputCombination
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 34]] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20256440; bytecode file offset 0xb52d44"
!BooleanTable methodsFor: 'recovered'!
removeInputAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidInputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) minInputs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) iNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) iCombinations.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) removeRow: (recoveredStack1) atIndex: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) notifyDependentsForInputs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025646c; bytecode file offset 0xb52d44"
!BooleanTable methodsFor: 'recovered'!
removeOutputAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) minOutputs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) oNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) oCombinations.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) removeRow: (recoveredStack1) atIndex: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) notifyDependentsForOutputs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20289f10; bytecode file offset 0xb867f4"
!BooleanTable methodsFor: 'recovered'!
createINames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) createInputNameFor: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) iNames: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20289f2c; bytecode file offset 0xb867f4"
!BooleanTable methodsFor: 'recovered'!
createONames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) createOutputNameFor: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) oNames: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031db68; bytecode file offset 0xc1a428"
!BooleanTable methodsFor: 'recovered'!
combination: recoveredArg1 includes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 :recoveredBlock21Arg2 | 
    | recoveredBlock21Local1 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg2.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg2.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 53] ifFalse: [recoveredBlock21PC := 40].
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) = (recoveredBlock21Stack3).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 53] ifFalse: [recoveredBlock21PC := 46].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 53] ifFalse: [recoveredBlock21PC := 50].
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack1 := false.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            ^recoveredBlock21Stack1
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20344c48; bytecode file offset 0xc41524"
!BooleanTable methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := iNames.
    recoveredValue2 := (recoveredValue1) size.
    (recoveredValue0) attr: ('inputs') nnInt: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := oNames.
    recoveredValue5 := (recoveredValue4) size.
    (recoveredValue3) attr: ('outputs') nnInt: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := oCombinations.
    recoveredValue8 := (recoveredValue7) size.
    (recoveredValue6) attr: ('combinations') nnInt: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) openComplex: ('InputColumns').
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := iCombinations.
    recoveredValue12 := iNames.
    (self) internalWriteXML: (recoveredValue10) rows: (recoveredValue11) names: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (recoveredValue13) closeComplex.
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) openComplex: ('OutputColumns').
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := oCombinations.
    recoveredValue17 := oNames.
    (self) internalWriteXML: (recoveredValue15) rows: (recoveredValue16) names: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    (recoveredValue18) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2036350c; bytecode file offset 0xc5fdd4"
!BooleanTable methodsFor: 'recovered'!
init: recoveredArg1 withString: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 :recoveredBlock21Arg2 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) setChar.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) = (recoveredBlock21Stack2).
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 43].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg2.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack3 := true.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) resetChar.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) = (recoveredBlock21Stack3).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 52] ifFalse: [recoveredBlock21PC := 60].
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg2.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack3 := false.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2) put: (recoveredBlock21Stack3).
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036dd2c; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
removeOutputs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) removeLastOutput.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateOutputsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036dd48; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
addOutputs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) addOutput.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateOutputsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036dd64; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
addInputs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) addInput.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateInputsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036dd80; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
removeCombinations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) removeLastCombination.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateCombinationsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036dd9c; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
removeInputs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) removeLastInput.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateInputsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ddb8; bytecode file offset 0xc6a680"
!BooleanTable methodsFor: 'recovered'!
addCombinations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2) addCombination.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29]] ifFalse: [recoveredBlock4PC := 22].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 29].
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateCombinationsFor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203819d0; bytecode file offset 0xc7e2a8"
!BooleanTable methodsFor: 'recovered'!
init: recoveredArg1 withValue: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) printStringRadix: (recoveredStack2) showRadix: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:block280f2c58Arg1 | 
    $0
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) init: (recoveredStack1) withString: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039fcd8; bytecode file offset 0xc9c5a0"
!BooleanTable methodsFor: 'recovered'!
addCombinations: recoveredArg1 startValue: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg2.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            (recoveredBlock4Stack2) addCombinationValue: (recoveredBlock4Stack3).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) + (1).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack1 isInteger) ifTrue: [(recoveredBlock4Stack1 > 0) ifTrue: [recoveredBlock4Stack1 := recoveredBlock4Stack1 - 1. recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 37]] ifFalse: [recoveredBlock4PC := 30].
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (-1).
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack3 := 0.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) >= (recoveredBlock4Stack3).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 37].
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := BooleanTableUpdateInfo.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUpdateCombinationsFor: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) notifyAfter: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cde0c; bytecode file offset 0xcca6f0"
!BooleanTable methodsFor: 'recovered'!
formulaForOutputNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexForOutputName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidOutputIndex: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) oCombinations.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal2.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            (recoveredBlock34Stack2 == nil) ifTrue: [recoveredBlock34PC := 73] ifFalse: [recoveredBlock34PC := 50].
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal2.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 60] ifFalse: [recoveredBlock34PC := 73].
        ].
        recoveredBlock34Step = 60 ifTrue: [
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 62.
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) iCombinations.
            recoveredBlock34PC := 65.
        ].
        recoveredBlock34Step = 65 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg2.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3).
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal1.
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) appendCombinationCode: (recoveredBlock34Stack2) to: (recoveredBlock34Stack3).
            recoveredBlock34PC := 73.
        ].
        recoveredBlock34Step = 73 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435494; bytecode file offset 0xd31d70"
!BooleanTable methodsFor: 'recovered'!
completeMissingOutputCombinations
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) possibleOutputCombinations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOutputCombinationForValue: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal3.
    recoveredBlock33Value1 := recoveredLocal2.
    recoveredBlock33Value2 := (recoveredBlock33Value0) add: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) detectOutputCombination: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 18] ifFalse: [recoveredPC := 79]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := (self) createInputCombinationForValue: (0).
    (self) addInputCombination: (recoveredBlock83Value0).
    recoveredBlock83Value1 := recoveredBlock83Arg1.
    recoveredBlock83Value2 := (self) addOutputCombination: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435530; bytecode file offset 0xd31e0c"
!BooleanTable methodsFor: 'recovered'!
completeMissingInputCombinations
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) possibleInputCombinations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) createInputCombinationForValue: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal3.
    recoveredBlock33Value1 := recoveredLocal2.
    recoveredBlock33Value2 := (recoveredBlock33Value0) add: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) detectInputCombination: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 18] ifFalse: [recoveredPC := 79]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    (self) addInputCombination: (recoveredBlock83Value0).
    recoveredBlock83Value1 := (self) createOutputCombinationForValue: (0).
    recoveredBlock83Value2 := (self) addOutputCombination: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9594; bytecode file offset 0xda5e70"
!BooleanTable methodsFor: 'recovered'!
checkMatrixLogic
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iCombinations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeFirst.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg2.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal2.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) + (recoveredBlock36Stack2).
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal3.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) combination: (recoveredBlock36Stack3) includes: (recoveredBlock36Stack4).
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 62] ifFalse: [recoveredBlock36PC := 94].
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) oCombinations.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal2.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) at: (recoveredBlock36Stack3).
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack3 := self.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) oCombinations.
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal1.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) at: (recoveredBlock36Stack4).
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) ~= (recoveredBlock36Stack3).
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 82] ifFalse: [recoveredBlock36PC := 94].
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36PC := 83.
        ].
        recoveredBlock36Step = 83 ifTrue: [
            recoveredBlock36Stack1 := Association.
            recoveredBlock36PC := 85.
        ].
        recoveredBlock36Step = 85 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal2.
            recoveredBlock36PC := 88.
        ].
        recoveredBlock36Step = 88 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal1.
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) key: (recoveredBlock36Stack2) value: (recoveredBlock36Stack3).
            recoveredBlock36PC := 93.
        ].
        recoveredBlock36Step = 93 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 94 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) doWithIndex: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 16] ifFalse: [recoveredPC := 137]] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d9438; bytecode file offset 0xdd5d2c"
!BooleanTable methodsFor: 'recovered'!
appendCombinationCode: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 57] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 44].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) inputNames.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg2.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := '!!'.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) inputNames.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Arg2.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) at: (recoveredBlock13Stack4).
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := ' || '.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 :recoveredBlock108Arg2 | 
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg2.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack2 := 1.
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) > (recoveredBlock108Stack2).
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            (recoveredBlock108Stack1) ifTrue: [recoveredBlock108PC := 122] ifFalse: [recoveredBlock108PC := 129].
        ].
        recoveredBlock108Step = 122 ifTrue: [
            recoveredBlock108Stack1 := recoveredArg2.
            recoveredBlock108PC := 125.
        ].
        recoveredBlock108Step = 125 ifTrue: [
            recoveredBlock108Stack2 := ' && '.
            recoveredBlock108PC := 127.
        ].
        recoveredBlock108Step = 127 ifTrue: [
            (recoveredBlock108Stack1) nextPutAll: (recoveredBlock108Stack2).
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            recoveredBlock108Stack1 := recoveredArg2.
            recoveredBlock108PC := 132.
        ].
        recoveredBlock108Step = 132 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 133.
        ].
        recoveredBlock108Step = 133 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) nextPutAll: (recoveredBlock108Stack2).
            recoveredBlock108PC := 135.
        ].
        recoveredBlock108Step = 135 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204eeebc; bytecode file offset 0xdeb7b0"
!BooleanTable methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 rows: recoveredArg2 names: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := 'TableColumn'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack3) openComplex: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 'ColumnHeading'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack3) openComplex: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'index'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack3) attr: (recoveredStack4) nnInt: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'elementName'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack3) attr: (recoveredStack4) nmToken: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack3) closeComplex.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [:recoveredBlock65Arg1 :recoveredBlock65Arg2 | 
    | recoveredBlock65Local1 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 73.
        ].
        recoveredBlock65Step = 73 ifTrue: [
            recoveredBlock65Stack2 := recoveredLocal1.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) at: (recoveredBlock65Stack2).
            recoveredBlock65PC := 78.
        ].
        recoveredBlock65Step = 78 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack1.
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 82.
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65Stack2 := 'TableCell'.
            recoveredBlock65PC := 84.
        ].
        recoveredBlock65Step = 84 ifTrue: [
            (recoveredBlock65Stack1) openComplex: (recoveredBlock65Stack2).
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack2 := 'index'.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg2.
            recoveredBlock65PC := 92.
        ].
        recoveredBlock65Step = 92 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) + (-1).
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            (recoveredBlock65Stack1) attr: (recoveredBlock65Stack2) nnInt: (recoveredBlock65Stack3).
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Stack1 := 'todo'.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) notNil.
            recoveredBlock65PC := 98.
        ].
        recoveredBlock65Step = 98 ifTrue: [
            recoveredBlock65PC := 99.
        ].
        recoveredBlock65Step = 99 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local1.
            recoveredBlock65PC := 100.
        ].
        recoveredBlock65Step = 100 ifTrue: [
            (recoveredBlock65Stack1 == nil) ifTrue: [recoveredBlock65PC := 116] ifFalse: [recoveredBlock65PC := 104].
        ].
        recoveredBlock65Step = 104 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 107.
        ].
        recoveredBlock65Step = 107 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 108.
        ].
        recoveredBlock65Step = 108 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) printString.
            recoveredBlock65PC := 110.
        ].
        recoveredBlock65Step = 110 ifTrue: [
            (recoveredBlock65Stack1) pcData: (recoveredBlock65Stack2).
            recoveredBlock65PC := 112.
        ].
        recoveredBlock65Step = 112 ifTrue: [
            recoveredBlock65PC := 123.
        ].
        recoveredBlock65Step = 116 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 119.
        ].
        recoveredBlock65Step = 119 ifTrue: [
            recoveredBlock65Stack2 := '*'.
            recoveredBlock65PC := 121.
        ].
        recoveredBlock65Step = 121 ifTrue: [
            (recoveredBlock65Stack1) pcData: (recoveredBlock65Stack2).
            recoveredBlock65PC := 123.
        ].
        recoveredBlock65Step = 123 ifTrue: [
            recoveredBlock65Stack1 := recoveredArg1.
            recoveredBlock65PC := 126.
        ].
        recoveredBlock65Step = 126 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) closeComplex.
            recoveredBlock65PC := 128.
        ].
        recoveredBlock65Step = 128 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack3) doWithIndex: (recoveredStack4).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack3) closeComplex.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 14] ifFalse: [recoveredPC := 166]] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056f66c; bytecode file offset 0xe6bf5c"
!BooleanTable methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'i '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 12] ifFalse: [recoveredLocal2 := nil. recoveredPC := 31]] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '| '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputs.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'o '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 46] ifFalse: [recoveredLocal2 := nil. recoveredPC := 65]] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := '--'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 78] ifFalse: [recoveredLocal2 := nil. recoveredPC := 97]] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := '+-'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputs.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := '--'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 112] ifFalse: [recoveredLocal2 := nil. recoveredPC := 131]] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) combinations.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputs.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := (recoveredStack5) @ (recoveredStack6).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := (recoveredStack4) inputCharAt: (recoveredStack5).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack3) nextPut: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 152] ifFalse: [recoveredLocal1 := nil. recoveredPC := 181]] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := '| '.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputs.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := (recoveredStack5) @ (recoveredStack6).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := (recoveredStack4) outputCharAt: (recoveredStack5).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack3) nextPut: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 196] ifFalse: [recoveredLocal1 := nil. recoveredPC := 225]] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 144] ifFalse: [recoveredLocal2 := nil. recoveredPC := 243]] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

