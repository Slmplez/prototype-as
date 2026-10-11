"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060044; bytecode file offset 0x95c8f8"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSchedulingCooperative
    scheduling := 1.
    ^self
! !

"ASDBase.ic method 0x200600d4; bytecode file offset 0x95c988"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSchedulingPreemptive
    scheduling := 2.
    ^self
! !

"ASDBase.ic method 0x20060110; bytecode file offset 0x95c9c4"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSchedulingNonPreemptive
    scheduling := 3.
    ^self
! !

"ASDBase.ic method 0x20060138; bytecode file offset 0x95c9ec"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSchedulingFull
    scheduling := 4.
    ^self
! !

"ASDBase.ic method 0x20060160; bytecode file offset 0x95ca14"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSchedulingNone
    scheduling := 5.
    ^self
! !

"ASDBase.ic method 0x20068f1c; bytecode file offset 0x965b90"
!SGCgTaskAttributes methodsFor: 'recovered'!
isrCategory
    | recoveredValue0 |
    recoveredValue0 := isrCategory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab04; bytecode file offset 0x967a18"
!SGCgTaskAttributes methodsFor: 'recovered'!
priority
    | recoveredValue0 |
    recoveredValue0 := priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b1d8; bytecode file offset 0x96873c"
!SGCgTaskAttributes methodsFor: 'recovered'!
deadline
    | recoveredValue0 |
    recoveredValue0 := deadline.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072018; bytecode file offset 0x96ee04"
!SGCgTaskAttributes methodsFor: 'recovered'!
bitAutostartOn
    ^1
! !

"ASDBase.ic method 0x20072640; bytecode file offset 0x96f1c4"
!SGCgTaskAttributes methodsFor: 'recovered'!
bitHooksOn
    ^2
! !

"ASDBase.ic method 0x20072ad0; bytecode file offset 0x96f3cc"
!SGCgTaskAttributes methodsFor: 'recovered'!
bitSpecified
    ^3
! !

"ASDBase.ic method 0x20072d60; bytecode file offset 0x96f6d4"
!SGCgTaskAttributes methodsFor: 'recovered'!
bitStartAlarm
    ^4
! !

"ASDBase.ic method 0x200779dc; bytecode file offset 0x9757c8"
!SGCgTaskAttributes methodsFor: 'recovered'!
isMdlTaskAttributes
    ^true
! !

"ASDBase.ic method 0x2008a4b0; bytecode file offset 0x98729c"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrHooksOn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitHooksOn.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a640; bytecode file offset 0x98729c"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrStartAlarm
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutostartOn.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a660; bytecode file offset 0x98729c"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrAutostartOn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutostartOn.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a820; bytecode file offset 0x98729c"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSpecified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSpecified.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b170; bytecode file offset 0x987a24"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSchedulingCooperative
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scheduling.
    recoveredValue1 := (recoveredValue0) == (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b184; bytecode file offset 0x987a38"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSchedulingPreemptive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scheduling.
    recoveredValue1 := (recoveredValue0) == (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b1c8; bytecode file offset 0x987a7c"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSchedulingNonPreemptive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scheduling.
    recoveredValue1 := (recoveredValue0) == (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b1dc; bytecode file offset 0x987a90"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSchedulingFull
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scheduling.
    recoveredValue1 := (recoveredValue0) == (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b220; bytecode file offset 0x987ad4"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrSchedulingNone
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scheduling.
    recoveredValue1 := (recoveredValue0) == (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b0b28; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrAutostartOn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutostartOn.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b48; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrHooksOn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitHooksOn.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1078; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrHooksOff
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitHooksOn.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b10f8; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrAdditional
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSpecified.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b12e8; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrAutostartOff
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutostartOn.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b13f8; bytecode file offset 0x9add94"
!SGCgTaskAttributes methodsFor: 'recovered'!
cgAttrSpecified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSpecified.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c1db4; bytecode file offset 0x9beac8"
!SGCgTaskAttributes methodsFor: 'recovered'!
priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b90; bytecode file offset 0x9bf474"
!SGCgTaskAttributes methodsFor: 'recovered'!
deadline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deadline := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20170878; bytecode file offset 0xa6d1ec"
!SGCgTaskAttributes methodsFor: 'recovered'!
isCgAttrPreemptable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrSchedulingCooperative.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrSchedulingPreemptive.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrSchedulingFull.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ffd20; bytecode file offset 0xafc5f0"
!SGCgTaskAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    (self) cgAttrHooksOn.
    (self) cgAttrSpecified.
    (self) cgAttrAutostartOff.
    (self) cgAttrSchedulingCooperative.
    (self) priority: (0).
    isrCategory := 2.
    ^self
! !

"ASDBase.ic method 0x204de45c; bytecode file offset 0xddad80"
!SGCgTaskAttributes methodsFor: 'recovered'!
printOn: recoveredArg1 level: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super printOn: (recoveredStack1) level: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'specified: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrSpecified.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'isrCategory: '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) isrCategory.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'priority: '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) priority.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'deadline: '.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) deadline.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'auto start: '.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrAutostartOn.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'hooks on: '.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrHooksOn.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'preemptable: '.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrPreemptable.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'scheduling: '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingCooperative.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 'cooperative'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingPreemptive.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'preemptive'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingNonPreemptive.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'nonPreemptive'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

