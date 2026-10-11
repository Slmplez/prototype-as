"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ad50; bytecode file offset 0x92209c"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
triggerType
    ^''
! !

"ASDBase.ic method 0x20065668; bytecode file offset 0x962104"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
asapPeriod
    | recoveredValue0 |
    recoveredValue0 := super period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a7dc; bytecode file offset 0x967a18"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
maxActivate
    | recoveredValue0 |
    recoveredValue0 := maxActivate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f04; bytecode file offset 0x9757c8"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
isSoftwareTrigger
    ^true
! !

"ASDBase.ic method 0x200769ac; bytecode file offset 0x9757c8"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
supportsDeadlineCheck
    ^true
! !

"ASDBase.ic method 0x20076a0c; bytecode file offset 0x9757c8"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
supportsAutostart
    ^true
! !

"ASDBase.ic method 0x200b1ddc; bytecode file offset 0x9ae708"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := ('HariKishan') == ('EHI_3001382').
    ^nil
! !

"ASDBase.ic method 0x200c1f9c; bytecode file offset 0x9beac8"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
maxActivate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxActivate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5cd8; bytecode file offset 0x9e25cc"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super duplicate.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) maxActivate.
    (recoveredValue1) maxActivate: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fa9c0; bytecode file offset 0x9f7294"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
initialize
    super initialize.
    (self) maxActivate: (1).
    ^self
! !

"ASDBase.ic method 0x20134dec; bytecode file offset 0xa316b0"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
buildMdl: recoveredArg1 task: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) mdlAttributes: (recoveredValue0) task: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) softwareTask.
    recoveredValue4 := (self) maxActivate.
    (recoveredValue2) maxActive: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20137b20; bytecode file offset 0xa34404"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
getValueDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super getValueDictionary.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) maxActivate.
    (recoveredValue2) at: ('maxActivate') put: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b4648; bytecode file offset 0xab0f34"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
updateValuesFrom: recoveredArg1
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
            super updateValuesFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'maxActivate'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
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
            recoveredStack2 := 'maxActivate'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) maxActivate: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc0ac; bytecode file offset 0xac89a8"
!SGOSSoftwareTrigger methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Software').
    recoveredValue1 := recoveredArg1.
    super writeXML: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) isAutostart.
    (recoveredValue2) attr: ('autostart') boolean: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) closeComplex.
    ^self
! !

