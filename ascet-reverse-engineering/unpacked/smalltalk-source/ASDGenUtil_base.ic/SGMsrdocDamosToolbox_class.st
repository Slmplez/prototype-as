"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x2000003c; bytecode file offset 0xe20c"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
enableFileOutRecursive
    | recoveredValue0 |
    recoveredValue0 := (self) enableFileOut.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000048; bytecode file offset 0xe20c"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
enableFileInRecursive
    | recoveredValue0 |
    recoveredValue0 := (self) enableFileIn.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200001e4; bytecode file offset 0xe3c8"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) init.
    ^recoveredValue1
! !

"ASDGenUtil_base.ic method 0x2000143c; bytecode file offset 0xf600"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
enableFileIn
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28001010Arg1 | 
    | block28001010Local1 block28001010Stack0 block28001010Stack1 block28001010Stack2 block28001010Stack3 block28001010PC block28001010Step block28001010Done block28001010Result |
    block28001010Stack0 := self.
    block28001010PC := 4.
    block28001010Done := false.
    [block28001010Done not] whileTrue: [
        block28001010Step := block28001010PC.
        block28001010Step = 4 ifTrue: [
            block28001010Stack1 := block28001010Arg1.
            block28001010PC := 5.
        ].
        block28001010Step = 5 ifTrue: [
            block28001010Stack1 := (block28001010Stack1) uiController.
            block28001010PC := 6.
        ].
        block28001010Step = 6 ifTrue: [
            block28001010Stack1 := (block28001010Stack1) selection.
            block28001010PC := 7.
        ].
        block28001010Step = 7 ifTrue: [
            block28001010Local1 := block28001010Stack1.
            block28001010PC := 8.
        ].
        block28001010Step = 8 ifTrue: [
            block28001010Stack1 := false.
            block28001010PC := 9.
        ].
        block28001010Step = 9 ifTrue: [
            block28001010Stack2 := block28001010Local1.
            block28001010PC := 10.
        ].
        block28001010Step = 10 ifTrue: [
            (block28001010Stack2 == nil) ifTrue: [block28001010PC := 17] ifFalse: [block28001010PC := 14].
        ].
        block28001010Step = 14 ifTrue: [
            block28001010PC := 15.
        ].
        block28001010Step = 15 ifTrue: [
            block28001010Stack1 := block28001010Local1.
            block28001010PC := 16.
        ].
        block28001010Step = 16 ifTrue: [
            block28001010Stack1 := (block28001010Stack1) modifiable.
            block28001010PC := 17.
        ].
        block28001010Step = 17 ifTrue: [
            block28001010Result := block28001010Stack1.
            block28001010Done := true.
        ].
    ].
    block28001010Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20001454; bytecode file offset 0xf600"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
enableFileOut
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28001034Arg1 | 
    | block28001034Local1 block28001034Stack0 block28001034Stack1 block28001034Stack2 block28001034Stack3 block28001034PC block28001034Step block28001034Done block28001034Result |
    block28001034Stack0 := self.
    block28001034PC := 4.
    block28001034Done := false.
    [block28001034Done not] whileTrue: [
        block28001034Step := block28001034PC.
        block28001034Step = 4 ifTrue: [
            block28001034Stack1 := block28001034Arg1.
            block28001034PC := 5.
        ].
        block28001034Step = 5 ifTrue: [
            block28001034Stack1 := (block28001034Stack1) uiController.
            block28001034PC := 6.
        ].
        block28001034Step = 6 ifTrue: [
            block28001034Stack1 := (block28001034Stack1) selection.
            block28001034PC := 7.
        ].
        block28001034Step = 7 ifTrue: [
            block28001034Local1 := block28001034Stack1.
            block28001034PC := 8.
        ].
        block28001034Step = 8 ifTrue: [
            block28001034Stack1 := false.
            block28001034PC := 9.
        ].
        block28001034Step = 9 ifTrue: [
            block28001034Stack2 := block28001034Local1.
            block28001034PC := 10.
        ].
        block28001034Step = 10 ifTrue: [
            (block28001034Stack2 == nil) ifTrue: [block28001034PC := 17] ifFalse: [block28001034PC := 14].
        ].
        block28001034Step = 14 ifTrue: [
            block28001034PC := 15.
        ].
        block28001034Step = 15 ifTrue: [
            block28001034Stack1 := block28001034Local1.
            block28001034PC := 16.
        ].
        block28001034Step = 16 ifTrue: [
            block28001034Stack1 := (block28001034Stack1) isRead.
            block28001034PC := 17.
        ].
        block28001034Step = 17 ifTrue: [
            block28001034Result := block28001034Stack1.
            block28001034Done := true.
        ].
    ].
    block28001034Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200071b0; bytecode file offset 0x153f0"
!SGMsrdocDamosToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := EtasToolboxDescriptor.
    recoveredValue1 := (recoveredValue0) createLabel: ('ASCET Data Exchange  Package') packageName: ('BIP-GeneralUtilities') application: ('None') fileName: (nil).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredLocal4.
    recoveredValue3 := (self) enableFileOutRecursive.
    recoveredValue4 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := true.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 44] ifFalse: [recoveredBlock31PC := 89].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack1 := MainController.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            recoveredBlock31Stack2 := [
    | recoveredBlock31Block47Stack0 recoveredBlock31Block47Stack1 recoveredBlock31Block47Stack2 recoveredBlock31Block47Stack3 recoveredBlock31Block47Stack4 recoveredBlock31Block47PC recoveredBlock31Block47Step recoveredBlock31Block47Done recoveredBlock31Block47Result |
    recoveredBlock31Block47Stack0 := self.
    recoveredBlock31Block47PC := 54.
    recoveredBlock31Block47Done := false.
    [recoveredBlock31Block47Done not] whileTrue: [
        recoveredBlock31Block47Step := recoveredBlock31Block47PC.
        recoveredBlock31Block47Step = 54 ifTrue: [
            recoveredBlock31Block47Stack1 := nil.
            recoveredBlock31Block47PC := 55.
        ].
        recoveredBlock31Block47Step = 55 ifTrue: [
            recoveredBlock31Block47Stack2 := self.
            recoveredBlock31Block47PC := 56.
        ].
        recoveredBlock31Block47Step = 56 ifTrue: [
            recoveredBlock31Block47Stack2 := (recoveredBlock31Block47Stack2) create.
            recoveredBlock31Block47PC := 58.
        ].
        recoveredBlock31Block47Step = 58 ifTrue: [
            recoveredBlock31Block47Stack3 := recoveredBlock31Block47Stack2.
            recoveredBlock31Block47PC := 59.
        ].
        recoveredBlock31Block47Step = 59 ifTrue: [
            recoveredLocal2 := recoveredBlock31Block47Stack3.
            recoveredBlock31Block47PC := 62.
        ].
        recoveredBlock31Block47Step = 62 ifTrue: [
            (recoveredBlock31Block47Stack2 == nil) ifTrue: [recoveredBlock31Block47PC := 86] ifFalse: [recoveredBlock31Block47PC := 66].
        ].
        recoveredBlock31Block47Step = 66 ifTrue: [
            recoveredBlock31Block47PC := 67.
        ].
        recoveredBlock31Block47Step = 67 ifTrue: [
            recoveredBlock31Block47Stack1 := recoveredLocal2.
            recoveredBlock31Block47PC := 70.
        ].
        recoveredBlock31Block47Step = 70 ifTrue: [
            recoveredBlock31Block47Stack2 := recoveredBlock31Arg1.
            recoveredBlock31Block47PC := 73.
        ].
        recoveredBlock31Block47Step = 73 ifTrue: [
            recoveredBlock31Block47Stack2 := (recoveredBlock31Block47Stack2) uiController.
            recoveredBlock31Block47PC := 75.
        ].
        recoveredBlock31Block47Step = 75 ifTrue: [
            recoveredBlock31Block47Stack2 := (recoveredBlock31Block47Stack2) selection.
            recoveredBlock31Block47PC := 77.
        ].
        recoveredBlock31Block47Step = 77 ifTrue: [
            recoveredBlock31Block47Stack3 := recoveredBlock31Arg1.
            recoveredBlock31Block47PC := 80.
        ].
        recoveredBlock31Block47Step = 80 ifTrue: [
            recoveredBlock31Block47Stack3 := (recoveredBlock31Block47Stack3) uiController.
            recoveredBlock31Block47PC := 82.
        ].
        recoveredBlock31Block47Step = 82 ifTrue: [
            recoveredBlock31Block47Stack3 := (recoveredBlock31Block47Stack3) selectedElements.
            recoveredBlock31Block47PC := 84.
        ].
        recoveredBlock31Block47Step = 84 ifTrue: [
            recoveredBlock31Block47Stack1 := (recoveredBlock31Block47Stack1) fileOutWithReferencesForData: (recoveredBlock31Block47Stack2) elements: (recoveredBlock31Block47Stack3).
            recoveredBlock31Block47PC := 86.
        ].
        recoveredBlock31Block47Step = 86 ifTrue: [
            recoveredBlock31Block47Result := recoveredBlock31Block47Stack1.
            recoveredBlock31Block47Done := true.
        ].
    ].
    recoveredBlock31Block47Result
].
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) suppressIdleTimerWhile: (recoveredBlock31Stack2).
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
    (recoveredValue2) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('Export Data ~Recursive') enable: (recoveredValue3) action: (recoveredValue4) description: ('Export Data with References').
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (self) enableFileOut.
    recoveredValue7 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := nil.
            recoveredBlock107PC := 115.
        ].
        recoveredBlock107Step = 115 ifTrue: [
            recoveredBlock107Stack2 := true.
            recoveredBlock107PC := 116.
        ].
        recoveredBlock107Step = 116 ifTrue: [
            (recoveredBlock107Stack2) ifTrue: [recoveredBlock107PC := 120] ifFalse: [recoveredBlock107PC := 165].
        ].
        recoveredBlock107Step = 120 ifTrue: [
            recoveredBlock107PC := 121.
        ].
        recoveredBlock107Step = 121 ifTrue: [
            recoveredBlock107Stack1 := MainController.
            recoveredBlock107PC := 123.
        ].
        recoveredBlock107Step = 123 ifTrue: [
            recoveredBlock107Stack2 := [
    | recoveredBlock107Block123Stack0 recoveredBlock107Block123Stack1 recoveredBlock107Block123Stack2 recoveredBlock107Block123Stack3 recoveredBlock107Block123Stack4 recoveredBlock107Block123PC recoveredBlock107Block123Step recoveredBlock107Block123Done recoveredBlock107Block123Result |
    recoveredBlock107Block123Stack0 := self.
    recoveredBlock107Block123PC := 130.
    recoveredBlock107Block123Done := false.
    [recoveredBlock107Block123Done not] whileTrue: [
        recoveredBlock107Block123Step := recoveredBlock107Block123PC.
        recoveredBlock107Block123Step = 130 ifTrue: [
            recoveredBlock107Block123Stack1 := nil.
            recoveredBlock107Block123PC := 131.
        ].
        recoveredBlock107Block123Step = 131 ifTrue: [
            recoveredBlock107Block123Stack2 := self.
            recoveredBlock107Block123PC := 132.
        ].
        recoveredBlock107Block123Step = 132 ifTrue: [
            recoveredBlock107Block123Stack2 := (recoveredBlock107Block123Stack2) create.
            recoveredBlock107Block123PC := 134.
        ].
        recoveredBlock107Block123Step = 134 ifTrue: [
            recoveredBlock107Block123Stack3 := recoveredBlock107Block123Stack2.
            recoveredBlock107Block123PC := 135.
        ].
        recoveredBlock107Block123Step = 135 ifTrue: [
            recoveredLocal2 := recoveredBlock107Block123Stack3.
            recoveredBlock107Block123PC := 138.
        ].
        recoveredBlock107Block123Step = 138 ifTrue: [
            (recoveredBlock107Block123Stack2 == nil) ifTrue: [recoveredBlock107Block123PC := 162] ifFalse: [recoveredBlock107Block123PC := 142].
        ].
        recoveredBlock107Block123Step = 142 ifTrue: [
            recoveredBlock107Block123PC := 143.
        ].
        recoveredBlock107Block123Step = 143 ifTrue: [
            recoveredBlock107Block123Stack1 := recoveredLocal2.
            recoveredBlock107Block123PC := 146.
        ].
        recoveredBlock107Block123Step = 146 ifTrue: [
            recoveredBlock107Block123Stack2 := recoveredBlock107Arg1.
            recoveredBlock107Block123PC := 149.
        ].
        recoveredBlock107Block123Step = 149 ifTrue: [
            recoveredBlock107Block123Stack2 := (recoveredBlock107Block123Stack2) uiController.
            recoveredBlock107Block123PC := 151.
        ].
        recoveredBlock107Block123Step = 151 ifTrue: [
            recoveredBlock107Block123Stack2 := (recoveredBlock107Block123Stack2) selection.
            recoveredBlock107Block123PC := 153.
        ].
        recoveredBlock107Block123Step = 153 ifTrue: [
            recoveredBlock107Block123Stack3 := recoveredBlock107Arg1.
            recoveredBlock107Block123PC := 156.
        ].
        recoveredBlock107Block123Step = 156 ifTrue: [
            recoveredBlock107Block123Stack3 := (recoveredBlock107Block123Stack3) uiController.
            recoveredBlock107Block123PC := 158.
        ].
        recoveredBlock107Block123Step = 158 ifTrue: [
            recoveredBlock107Block123Stack3 := (recoveredBlock107Block123Stack3) selectedElements.
            recoveredBlock107Block123PC := 160.
        ].
        recoveredBlock107Block123Step = 160 ifTrue: [
            recoveredBlock107Block123Stack1 := (recoveredBlock107Block123Stack1) fileOutWithoutReferencesForData: (recoveredBlock107Block123Stack2) elements: (recoveredBlock107Block123Stack3).
            recoveredBlock107Block123PC := 162.
        ].
        recoveredBlock107Block123Step = 162 ifTrue: [
            recoveredBlock107Block123Result := recoveredBlock107Block123Stack1.
            recoveredBlock107Block123Done := true.
        ].
    ].
    recoveredBlock107Block123Result
].
            recoveredBlock107PC := 163.
        ].
        recoveredBlock107Step = 163 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) suppressIdleTimerWhile: (recoveredBlock107Stack2).
            recoveredBlock107PC := 165.
        ].
        recoveredBlock107Step = 165 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack1.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
    (recoveredValue5) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('~Export Data') enable: (recoveredValue6) action: (recoveredValue7) description: ('FExport Data').
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (self) enableFileInRecursive.
    recoveredValue10 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Stack0 recoveredBlock183Stack1 recoveredBlock183Stack2 recoveredBlock183Stack3 recoveredBlock183PC recoveredBlock183Step recoveredBlock183Done recoveredBlock183Result |
    recoveredBlock183Stack0 := self.
    recoveredBlock183PC := 190.
    recoveredBlock183Done := false.
    [recoveredBlock183Done not] whileTrue: [
        recoveredBlock183Step := recoveredBlock183PC.
        recoveredBlock183Step = 190 ifTrue: [
            recoveredBlock183Stack1 := nil.
            recoveredBlock183PC := 191.
        ].
        recoveredBlock183Step = 191 ifTrue: [
            recoveredBlock183Stack2 := true.
            recoveredBlock183PC := 192.
        ].
        recoveredBlock183Step = 192 ifTrue: [
            (recoveredBlock183Stack2) ifTrue: [recoveredBlock183PC := 196] ifFalse: [recoveredBlock183PC := 245].
        ].
        recoveredBlock183Step = 196 ifTrue: [
            recoveredBlock183PC := 197.
        ].
        recoveredBlock183Step = 197 ifTrue: [
            recoveredBlock183Stack1 := MainController.
            recoveredBlock183PC := 199.
        ].
        recoveredBlock183Step = 199 ifTrue: [
            recoveredBlock183Stack2 := [
    | recoveredBlock183Block199Stack0 recoveredBlock183Block199Stack1 recoveredBlock183Block199Stack2 recoveredBlock183Block199Stack3 recoveredBlock183Block199Stack4 recoveredBlock183Block199PC recoveredBlock183Block199Step recoveredBlock183Block199Done recoveredBlock183Block199Result |
    recoveredBlock183Block199Stack0 := self.
    recoveredBlock183Block199PC := 206.
    recoveredBlock183Block199Done := false.
    [recoveredBlock183Block199Done not] whileTrue: [
        recoveredBlock183Block199Step := recoveredBlock183Block199PC.
        recoveredBlock183Block199Step = 206 ifTrue: [
            recoveredBlock183Block199Stack1 := nil.
            recoveredBlock183Block199PC := 207.
        ].
        recoveredBlock183Block199Step = 207 ifTrue: [
            recoveredBlock183Block199Stack2 := self.
            recoveredBlock183Block199PC := 208.
        ].
        recoveredBlock183Block199Step = 208 ifTrue: [
            recoveredBlock183Block199Stack2 := (recoveredBlock183Block199Stack2) create.
            recoveredBlock183Block199PC := 210.
        ].
        recoveredBlock183Block199Step = 210 ifTrue: [
            recoveredBlock183Block199Stack3 := recoveredBlock183Block199Stack2.
            recoveredBlock183Block199PC := 211.
        ].
        recoveredBlock183Block199Step = 211 ifTrue: [
            recoveredLocal2 := recoveredBlock183Block199Stack3.
            recoveredBlock183Block199PC := 214.
        ].
        recoveredBlock183Block199Step = 214 ifTrue: [
            (recoveredBlock183Block199Stack2 == nil) ifTrue: [recoveredBlock183Block199PC := 242] ifFalse: [recoveredBlock183Block199PC := 218].
        ].
        recoveredBlock183Block199Step = 218 ifTrue: [
            recoveredBlock183Block199PC := 219.
        ].
        recoveredBlock183Block199Step = 219 ifTrue: [
            recoveredBlock183Block199Stack1 := nil.
            recoveredBlock183Block199PC := 220.
        ].
        recoveredBlock183Block199Step = 220 ifTrue: [
            recoveredBlock183Block199Stack2 := recoveredLocal2.
            recoveredBlock183Block199PC := 223.
        ].
        recoveredBlock183Block199Step = 223 ifTrue: [
            recoveredBlock183Block199Stack3 := recoveredBlock183Arg1.
            recoveredBlock183Block199PC := 226.
        ].
        recoveredBlock183Block199Step = 226 ifTrue: [
            recoveredBlock183Block199Stack3 := (recoveredBlock183Block199Stack3) uiController.
            recoveredBlock183Block199PC := 228.
        ].
        recoveredBlock183Block199Step = 228 ifTrue: [
            recoveredBlock183Block199Stack3 := (recoveredBlock183Block199Stack3) selection.
            recoveredBlock183Block199PC := 230.
        ].
        recoveredBlock183Block199Step = 230 ifTrue: [
            recoveredBlock183Block199Stack2 := (recoveredBlock183Block199Stack2) fileInWithReferencesForData: (recoveredBlock183Block199Stack3).
            recoveredBlock183Block199PC := 232.
        ].
        recoveredBlock183Block199Step = 232 ifTrue: [
            (recoveredBlock183Block199Stack2 == nil) ifTrue: [recoveredBlock183Block199PC := 242] ifFalse: [recoveredBlock183Block199PC := 236].
        ].
        recoveredBlock183Block199Step = 236 ifTrue: [
            recoveredBlock183Block199PC := 237.
        ].
        recoveredBlock183Block199Step = 237 ifTrue: [
            recoveredBlock183Block199Stack1 := recoveredBlock183Arg1.
            recoveredBlock183Block199PC := 240.
        ].
        recoveredBlock183Block199Step = 240 ifTrue: [
            recoveredBlock183Block199Stack1 := (recoveredBlock183Block199Stack1) updateElements.
            recoveredBlock183Block199PC := 242.
        ].
        recoveredBlock183Block199Step = 242 ifTrue: [
            recoveredBlock183Block199Result := recoveredBlock183Block199Stack1.
            recoveredBlock183Block199Done := true.
        ].
    ].
    recoveredBlock183Block199Result
].
            recoveredBlock183PC := 243.
        ].
        recoveredBlock183Step = 243 ifTrue: [
            recoveredBlock183Stack1 := (recoveredBlock183Stack1) suppressIdleTimerWhile: (recoveredBlock183Stack2).
            recoveredBlock183PC := 245.
        ].
        recoveredBlock183Step = 245 ifTrue: [
            recoveredBlock183Result := recoveredBlock183Stack1.
            recoveredBlock183Done := true.
        ].
    ].
    recoveredBlock183Result
].
    (recoveredValue8) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('I~mport Data Recursive') enable: (recoveredValue9) action: (recoveredValue10) description: ('Import Data with References').
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := (self) enableFileIn.
    recoveredValue13 := [:recoveredBlock263Arg1 | 
    | recoveredBlock263Stack0 recoveredBlock263Stack1 recoveredBlock263Stack2 recoveredBlock263Stack3 recoveredBlock263PC recoveredBlock263Step recoveredBlock263Done recoveredBlock263Result |
    recoveredBlock263Stack0 := self.
    recoveredBlock263PC := 270.
    recoveredBlock263Done := false.
    [recoveredBlock263Done not] whileTrue: [
        recoveredBlock263Step := recoveredBlock263PC.
        recoveredBlock263Step = 270 ifTrue: [
            recoveredBlock263Stack1 := nil.
            recoveredBlock263PC := 271.
        ].
        recoveredBlock263Step = 271 ifTrue: [
            recoveredBlock263Stack2 := true.
            recoveredBlock263PC := 272.
        ].
        recoveredBlock263Step = 272 ifTrue: [
            (recoveredBlock263Stack2) ifTrue: [recoveredBlock263PC := 276] ifFalse: [recoveredBlock263PC := 325].
        ].
        recoveredBlock263Step = 276 ifTrue: [
            recoveredBlock263PC := 277.
        ].
        recoveredBlock263Step = 277 ifTrue: [
            recoveredBlock263Stack1 := MainController.
            recoveredBlock263PC := 279.
        ].
        recoveredBlock263Step = 279 ifTrue: [
            recoveredBlock263Stack2 := [
    | recoveredBlock263Block279Stack0 recoveredBlock263Block279Stack1 recoveredBlock263Block279Stack2 recoveredBlock263Block279Stack3 recoveredBlock263Block279Stack4 recoveredBlock263Block279PC recoveredBlock263Block279Step recoveredBlock263Block279Done recoveredBlock263Block279Result |
    recoveredBlock263Block279Stack0 := self.
    recoveredBlock263Block279PC := 286.
    recoveredBlock263Block279Done := false.
    [recoveredBlock263Block279Done not] whileTrue: [
        recoveredBlock263Block279Step := recoveredBlock263Block279PC.
        recoveredBlock263Block279Step = 286 ifTrue: [
            recoveredBlock263Block279Stack1 := nil.
            recoveredBlock263Block279PC := 287.
        ].
        recoveredBlock263Block279Step = 287 ifTrue: [
            recoveredBlock263Block279Stack2 := self.
            recoveredBlock263Block279PC := 288.
        ].
        recoveredBlock263Block279Step = 288 ifTrue: [
            recoveredBlock263Block279Stack2 := (recoveredBlock263Block279Stack2) create.
            recoveredBlock263Block279PC := 290.
        ].
        recoveredBlock263Block279Step = 290 ifTrue: [
            recoveredBlock263Block279Stack3 := recoveredBlock263Block279Stack2.
            recoveredBlock263Block279PC := 291.
        ].
        recoveredBlock263Block279Step = 291 ifTrue: [
            recoveredLocal2 := recoveredBlock263Block279Stack3.
            recoveredBlock263Block279PC := 294.
        ].
        recoveredBlock263Block279Step = 294 ifTrue: [
            (recoveredBlock263Block279Stack2 == nil) ifTrue: [recoveredBlock263Block279PC := 322] ifFalse: [recoveredBlock263Block279PC := 298].
        ].
        recoveredBlock263Block279Step = 298 ifTrue: [
            recoveredBlock263Block279PC := 299.
        ].
        recoveredBlock263Block279Step = 299 ifTrue: [
            recoveredBlock263Block279Stack1 := nil.
            recoveredBlock263Block279PC := 300.
        ].
        recoveredBlock263Block279Step = 300 ifTrue: [
            recoveredBlock263Block279Stack2 := recoveredLocal2.
            recoveredBlock263Block279PC := 303.
        ].
        recoveredBlock263Block279Step = 303 ifTrue: [
            recoveredBlock263Block279Stack3 := recoveredBlock263Arg1.
            recoveredBlock263Block279PC := 306.
        ].
        recoveredBlock263Block279Step = 306 ifTrue: [
            recoveredBlock263Block279Stack3 := (recoveredBlock263Block279Stack3) uiController.
            recoveredBlock263Block279PC := 308.
        ].
        recoveredBlock263Block279Step = 308 ifTrue: [
            recoveredBlock263Block279Stack3 := (recoveredBlock263Block279Stack3) selection.
            recoveredBlock263Block279PC := 310.
        ].
        recoveredBlock263Block279Step = 310 ifTrue: [
            recoveredBlock263Block279Stack2 := (recoveredBlock263Block279Stack2) fileInWithoutReferencesForData: (recoveredBlock263Block279Stack3).
            recoveredBlock263Block279PC := 312.
        ].
        recoveredBlock263Block279Step = 312 ifTrue: [
            (recoveredBlock263Block279Stack2 == nil) ifTrue: [recoveredBlock263Block279PC := 322] ifFalse: [recoveredBlock263Block279PC := 316].
        ].
        recoveredBlock263Block279Step = 316 ifTrue: [
            recoveredBlock263Block279PC := 317.
        ].
        recoveredBlock263Block279Step = 317 ifTrue: [
            recoveredBlock263Block279Stack1 := recoveredBlock263Arg1.
            recoveredBlock263Block279PC := 320.
        ].
        recoveredBlock263Block279Step = 320 ifTrue: [
            recoveredBlock263Block279Stack1 := (recoveredBlock263Block279Stack1) updateElements.
            recoveredBlock263Block279PC := 322.
        ].
        recoveredBlock263Block279Step = 322 ifTrue: [
            recoveredBlock263Block279Result := recoveredBlock263Block279Stack1.
            recoveredBlock263Block279Done := true.
        ].
    ].
    recoveredBlock263Block279Result
].
            recoveredBlock263PC := 323.
        ].
        recoveredBlock263Step = 323 ifTrue: [
            recoveredBlock263Stack1 := (recoveredBlock263Stack1) suppressIdleTimerWhile: (recoveredBlock263Stack2).
            recoveredBlock263PC := 325.
        ].
        recoveredBlock263Step = 325 ifTrue: [
            recoveredBlock263Result := recoveredBlock263Stack1.
            recoveredBlock263Done := true.
        ].
    ].
    recoveredBlock263Result
].
    (recoveredValue11) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('~Import Data') enable: (recoveredValue12) action: (recoveredValue13) description: ('Import Data').
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := [:recoveredBlock340Arg1 | 
    | recoveredBlock340Stack0 recoveredBlock340Stack1 recoveredBlock340Stack2 recoveredBlock340Stack3 recoveredBlock340Stack4 recoveredBlock340PC recoveredBlock340Step recoveredBlock340Done recoveredBlock340Result |
    recoveredBlock340Stack0 := self.
    recoveredBlock340PC := 346.
    recoveredBlock340Done := false.
    [recoveredBlock340Done not] whileTrue: [
        recoveredBlock340Step := recoveredBlock340PC.
        recoveredBlock340Step = 346 ifTrue: [
            recoveredBlock340Stack1 := nil.
            recoveredBlock340PC := 347.
        ].
        recoveredBlock340Step = 347 ifTrue: [
            recoveredBlock340Stack2 := true.
            recoveredBlock340PC := 348.
        ].
        recoveredBlock340Step = 348 ifTrue: [
            (recoveredBlock340Stack2) ifTrue: [recoveredBlock340PC := 352] ifFalse: [recoveredBlock340PC := 370].
        ].
        recoveredBlock340Step = 352 ifTrue: [
            recoveredBlock340PC := 353.
        ].
        recoveredBlock340Step = 353 ifTrue: [
            recoveredBlock340Stack1 := nil.
            recoveredBlock340PC := 354.
        ].
        recoveredBlock340Step = 354 ifTrue: [
            recoveredBlock340Stack2 := self.
            recoveredBlock340PC := 355.
        ].
        recoveredBlock340Step = 355 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) create.
            recoveredBlock340PC := 357.
        ].
        recoveredBlock340Step = 357 ifTrue: [
            recoveredBlock340Stack3 := recoveredBlock340Stack2.
            recoveredBlock340PC := 358.
        ].
        recoveredBlock340Step = 358 ifTrue: [
            recoveredLocal2 := recoveredBlock340Stack3.
            recoveredBlock340PC := 361.
        ].
        recoveredBlock340Step = 361 ifTrue: [
            (recoveredBlock340Stack2 == nil) ifTrue: [recoveredBlock340PC := 370] ifFalse: [recoveredBlock340PC := 364].
        ].
        recoveredBlock340Step = 364 ifTrue: [
            recoveredBlock340PC := 365.
        ].
        recoveredBlock340Step = 365 ifTrue: [
            recoveredBlock340Stack1 := recoveredLocal2.
            recoveredBlock340PC := 368.
        ].
        recoveredBlock340Step = 368 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) showDataFile.
            recoveredBlock340PC := 370.
        ].
        recoveredBlock340Step = 370 ifTrue: [
            recoveredBlock340Result := recoveredBlock340Stack1.
            recoveredBlock340Done := true.
        ].
    ].
    recoveredBlock340Result
].
    (recoveredValue14) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('Sho~w Data File') action: (recoveredValue15) description: ('Show Data File').
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := [:recoveredBlock385Arg1 | 
    | recoveredBlock385Stack0 recoveredBlock385Stack1 recoveredBlock385Stack2 recoveredBlock385Stack3 recoveredBlock385Stack4 recoveredBlock385PC recoveredBlock385Step recoveredBlock385Done recoveredBlock385Result |
    recoveredBlock385Stack0 := self.
    recoveredBlock385PC := 392.
    recoveredBlock385Done := false.
    [recoveredBlock385Done not] whileTrue: [
        recoveredBlock385Step := recoveredBlock385PC.
        recoveredBlock385Step = 392 ifTrue: [
            recoveredBlock385Stack1 := nil.
            recoveredBlock385PC := 393.
        ].
        recoveredBlock385Step = 393 ifTrue: [
            recoveredBlock385Stack2 := true.
            recoveredBlock385PC := 394.
        ].
        recoveredBlock385Step = 394 ifTrue: [
            (recoveredBlock385Stack2) ifTrue: [recoveredBlock385PC := 398] ifFalse: [recoveredBlock385PC := 416].
        ].
        recoveredBlock385Step = 398 ifTrue: [
            recoveredBlock385PC := 399.
        ].
        recoveredBlock385Step = 399 ifTrue: [
            recoveredBlock385Stack1 := nil.
            recoveredBlock385PC := 400.
        ].
        recoveredBlock385Step = 400 ifTrue: [
            recoveredBlock385Stack2 := self.
            recoveredBlock385PC := 401.
        ].
        recoveredBlock385Step = 401 ifTrue: [
            recoveredBlock385Stack2 := (recoveredBlock385Stack2) create.
            recoveredBlock385PC := 403.
        ].
        recoveredBlock385Step = 403 ifTrue: [
            recoveredBlock385Stack3 := recoveredBlock385Stack2.
            recoveredBlock385PC := 404.
        ].
        recoveredBlock385Step = 404 ifTrue: [
            recoveredLocal2 := recoveredBlock385Stack3.
            recoveredBlock385PC := 407.
        ].
        recoveredBlock385Step = 407 ifTrue: [
            (recoveredBlock385Stack2 == nil) ifTrue: [recoveredBlock385PC := 416] ifFalse: [recoveredBlock385PC := 410].
        ].
        recoveredBlock385Step = 410 ifTrue: [
            recoveredBlock385PC := 411.
        ].
        recoveredBlock385Step = 411 ifTrue: [
            recoveredBlock385Stack1 := recoveredLocal2.
            recoveredBlock385PC := 414.
        ].
        recoveredBlock385Step = 414 ifTrue: [
            recoveredBlock385Stack1 := (recoveredBlock385Stack1) showFileInLogFile.
            recoveredBlock385PC := 416.
        ].
        recoveredBlock385Step = 416 ifTrue: [
            recoveredBlock385Result := recoveredBlock385Stack1.
            recoveredBlock385Done := true.
        ].
    ].
    recoveredBlock385Result
].
    (recoveredValue16) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('Show Import Data ~Log File') action: (recoveredValue17) description: ('Show Import Log File').
    recoveredValue18 := recoveredLocal4.
    recoveredValue19 := [:recoveredBlock431Arg1 | 
    | recoveredBlock431Stack0 recoveredBlock431Stack1 recoveredBlock431Stack2 recoveredBlock431Stack3 recoveredBlock431Stack4 recoveredBlock431PC recoveredBlock431Step recoveredBlock431Done recoveredBlock431Result |
    recoveredBlock431Stack0 := self.
    recoveredBlock431PC := 438.
    recoveredBlock431Done := false.
    [recoveredBlock431Done not] whileTrue: [
        recoveredBlock431Step := recoveredBlock431PC.
        recoveredBlock431Step = 438 ifTrue: [
            recoveredBlock431Stack1 := nil.
            recoveredBlock431PC := 439.
        ].
        recoveredBlock431Step = 439 ifTrue: [
            recoveredBlock431Stack2 := true.
            recoveredBlock431PC := 440.
        ].
        recoveredBlock431Step = 440 ifTrue: [
            (recoveredBlock431Stack2) ifTrue: [recoveredBlock431PC := 444] ifFalse: [recoveredBlock431PC := 462].
        ].
        recoveredBlock431Step = 444 ifTrue: [
            recoveredBlock431PC := 445.
        ].
        recoveredBlock431Step = 445 ifTrue: [
            recoveredBlock431Stack1 := nil.
            recoveredBlock431PC := 446.
        ].
        recoveredBlock431Step = 446 ifTrue: [
            recoveredBlock431Stack2 := self.
            recoveredBlock431PC := 447.
        ].
        recoveredBlock431Step = 447 ifTrue: [
            recoveredBlock431Stack2 := (recoveredBlock431Stack2) create.
            recoveredBlock431PC := 449.
        ].
        recoveredBlock431Step = 449 ifTrue: [
            recoveredBlock431Stack3 := recoveredBlock431Stack2.
            recoveredBlock431PC := 450.
        ].
        recoveredBlock431Step = 450 ifTrue: [
            recoveredLocal2 := recoveredBlock431Stack3.
            recoveredBlock431PC := 453.
        ].
        recoveredBlock431Step = 453 ifTrue: [
            (recoveredBlock431Stack2 == nil) ifTrue: [recoveredBlock431PC := 462] ifFalse: [recoveredBlock431PC := 456].
        ].
        recoveredBlock431Step = 456 ifTrue: [
            recoveredBlock431PC := 457.
        ].
        recoveredBlock431Step = 457 ifTrue: [
            recoveredBlock431Stack1 := recoveredLocal2.
            recoveredBlock431PC := 460.
        ].
        recoveredBlock431Step = 460 ifTrue: [
            recoveredBlock431Stack1 := (recoveredBlock431Stack1) showFileOutLogFile.
            recoveredBlock431PC := 462.
        ].
        recoveredBlock431Step = 462 ifTrue: [
            recoveredBlock431Result := recoveredBlock431Stack1.
            recoveredBlock431Done := true.
        ].
    ].
    recoveredBlock431Result
].
    (recoveredValue18) addMenuCall: ('SGDataDialog') menu: ('~Data') item: ('Show Export Data Lo~g File') action: (recoveredValue19) description: ('Show Export Log File').
    recoveredValue20 := recoveredLocal4.
    ^recoveredValue20
! !

