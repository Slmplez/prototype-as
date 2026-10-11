"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013ecc; bytecode file offset 0x912098"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
reactToCtrlBreakInRunTime
    | recoveredValue0 |
    recoveredValue0 := ReactToCtrlBreakInRunTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014304; bytecode file offset 0x912098"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
userReportCmdLine
    | recoveredValue0 |
    recoveredValue0 := UserReportCmdLine.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048e4c; bytecode file offset 0x945728"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
destroyClassDeveloperTable
    ClassDeveloperTable := nil.
    ^self
! !

"ASDBase.ic method 0x20053f90; bytecode file offset 0x951190"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
reactToCtrlBreakInRunTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ReactToCtrlBreakInRunTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054074; bytecode file offset 0x951190"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
userReportCmdLine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    UserReportCmdLine := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200543b0; bytecode file offset 0x951190"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
inRunTimeErrorHandling: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    InRunTimeErrorHandling := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105164; bytecode file offset 0xa01a28"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
inRunTimeErrorHandling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InRunTimeErrorHandling.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            InRunTimeErrorHandling := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := InRunTimeErrorHandling.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20114e60; bytecode file offset 0xa11720"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
classDeveloperTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ClassDeveloperTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ClassDeveloperTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20246ae4; bytecode file offset 0xb433c4"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
buildClassDeveloperTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) allClasses.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ClassDeveloperTable := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) allClasses.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280de444Arg1 | 
    | block280de444Value0 block280de444Value1 block280de444Value2 block280de444Value3 block280de444Value4 block280de444Value5 block280de444Value6 |
    block280de444Value0 := ClassDeveloperTable.
    block280de444Value1 := block280de444Arg1.
    block280de444Value2 := block280de444Arg1.
    block280de444Value3 := block280de444Arg1.
    block280de444Value4 := (block280de444Value3) controller.
    block280de444Value5 := (block280de444Value2) developerIn: (block280de444Value4).
    block280de444Value6 := (block280de444Value0) at: (block280de444Value1) put: (block280de444Value5).
    block280de444Value6
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cc0ac; bytecode file offset 0xcc89ac"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
buildClassDeveloperTableWithProgress
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) allClasses.
    recoveredValue2 := (recoveredValue1) size.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := LookupTable.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    ClassDeveloperTable := recoveredValue5.
    recoveredValue6 := Transcript.
    recoveredValue7 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    (recoveredBlock22Value0) title: ('Building a table with the class developers.').
    recoveredBlock22Value1 := System.
    recoveredBlock22Value2 := (recoveredBlock22Value1) allClasses.
    recoveredBlock22Value3 := [:recoveredBlock22Block38Arg1 | 
    | recoveredBlock22Block38Value0 recoveredBlock22Block38Value1 recoveredBlock22Block38Value2 recoveredBlock22Block38Value3 recoveredBlock22Block38Value4 recoveredBlock22Block38Value5 recoveredBlock22Block38Value6 recoveredBlock22Block38Value7 recoveredBlock22Block38Value8 recoveredBlock22Block38Value9 recoveredBlock22Block38Value10 recoveredBlock22Block38Value11 recoveredBlock22Block38Value12 recoveredBlock22Block38Value13 |
    recoveredBlock22Block38Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block38Value1 := (self) classDeveloperTable.
    recoveredBlock22Block38Value2 := (recoveredBlock22Block38Value1) size.
    recoveredBlock22Block38Value3 := recoveredLocal1.
    recoveredBlock22Block38Value4 := (recoveredBlock22Block38Value2) / (recoveredBlock22Block38Value3).
    recoveredBlock22Block38Value5 := recoveredBlock22Block38Arg1.
    recoveredBlock22Block38Value6 := (recoveredBlock22Block38Value5) printString.
    (recoveredBlock22Block38Value0) fractionComplete: (recoveredBlock22Block38Value4) messageString: (recoveredBlock22Block38Value6).
    recoveredBlock22Block38Value7 := ClassDeveloperTable.
    recoveredBlock22Block38Value8 := recoveredBlock22Block38Arg1.
    recoveredBlock22Block38Value9 := recoveredBlock22Block38Arg1.
    recoveredBlock22Block38Value10 := recoveredBlock22Block38Arg1.
    recoveredBlock22Block38Value11 := (recoveredBlock22Block38Value10) controller.
    recoveredBlock22Block38Value12 := (recoveredBlock22Block38Value9) developerIn: (recoveredBlock22Block38Value11).
    recoveredBlock22Block38Value13 := (recoveredBlock22Block38Value7) at: (recoveredBlock22Block38Value8) put: (recoveredBlock22Block38Value12).
    recoveredBlock22Block38Value13
].
    recoveredBlock22Value4 := (recoveredBlock22Value2) do: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
    (recoveredValue6) execLongOperation: (recoveredValue7) message: ('----------------------------------------------------------') allowCancel: (false) showProgress: (true).
    ^self
! !

"ASDBase.ic method 0x20528ea4; bytecode file offset 0xe257b0"
!RBAbstractRunTimeErrorHandling class methodsFor: 'recovered'!
encodeAndAppend: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := '[start of coded part]'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyReplaceAll: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := CldtConstants.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'LineDelimiter'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyReplaceAll: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:block2810cbacArg1 | 
    | block2810cbacStack0 block2810cbacStack1 block2810cbacStack2 block2810cbacStack3 block2810cbacStack4 block2810cbacPC block2810cbacStep block2810cbacDone block2810cbacResult |
    block2810cbacStack0 := self.
    block2810cbacPC := 4.
    block2810cbacDone := false.
    [block2810cbacDone not] whileTrue: [
        block2810cbacStep := block2810cbacPC.
        block2810cbacStep = 4 ifTrue: [
            block2810cbacStack1 := block2810cbacArg1.
            block2810cbacPC := 5.
        ].
        block2810cbacStep = 5 ifTrue: [
            block2810cbacStack1 := (block2810cbacStack1) asInteger.
            block2810cbacPC := 7.
        ].
        block2810cbacStep = 7 ifTrue: [
            block2810cbacStack2 := 1.
            block2810cbacPC := 9.
        ].
        block2810cbacStep = 9 ifTrue: [
            block2810cbacStack3 := 31.
            block2810cbacPC := 11.
        ].
        block2810cbacStep = 11 ifTrue: [
            block2810cbacStack1 := (block2810cbacStack1) between: (block2810cbacStack2) and: (block2810cbacStack3).
            block2810cbacPC := 12.
        ].
        block2810cbacStep = 12 ifTrue: [
            (block2810cbacStack1) ifTrue: [block2810cbacPC := 26] ifFalse: [block2810cbacPC := 16].
        ].
        block2810cbacStep = 16 ifTrue: [
            block2810cbacStack1 := block2810cbacArg1.
            block2810cbacPC := 17.
        ].
        block2810cbacStep = 17 ifTrue: [
            block2810cbacStack1 := (block2810cbacStack1) asInteger.
            block2810cbacPC := 19.
        ].
        block2810cbacStep = 19 ifTrue: [
            block2810cbacStack2 := 127.
            block2810cbacPC := 22.
        ].
        block2810cbacStep = 22 ifTrue: [
            block2810cbacStack1 := (block2810cbacStack1) > (block2810cbacStack2).
            block2810cbacPC := 23.
        ].
        block2810cbacStep = 23 ifTrue: [
            (block2810cbacStack1) ifTrue: [block2810cbacPC := 26] ifFalse: [block2810cbacPC := 34].
        ].
        block2810cbacStep = 26 ifTrue: [
            block2810cbacStack1 := $~.
            block2810cbacPC := 30.
        ].
        block2810cbacStep = 30 ifTrue: [
            block2810cbacPC := 35.
        ].
        block2810cbacStep = 34 ifTrue: [
            block2810cbacStack1 := block2810cbacArg1.
            block2810cbacPC := 35.
        ].
        block2810cbacStep = 35 ifTrue: [
            block2810cbacResult := block2810cbacStack1.
            block2810cbacDone := true.
        ].
    ].
    block2810cbacResult
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) even.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 120] ifFalse: [recoveredLocal2 := nil. recoveredPC := 172]] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := CldtConstants.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := 'LineDelimiter'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyReplaceAll: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := '[end of coded part]'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

