"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2051d074; bytecode file offset 0xe1998c"
!SGEditDataChannelEnumerationDialog methodsFor: 'recovered'!
dataApplyActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataOffset.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataAmplitude.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataFrequence.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataPhase.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataStimulus.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) output.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) species.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := channels.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101Stack4 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 109.
        ].
        recoveredBlock101Step = 109 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 110.
        ].
        recoveredBlock101Step = 110 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) value.
            recoveredBlock101PC := 112.
        ].
        recoveredBlock101Step = 112 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) output.
            recoveredBlock101PC := 114.
        ].
        recoveredBlock101Step = 114 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) species.
            recoveredBlock101PC := 116.
        ].
        recoveredBlock101Step = 116 ifTrue: [
            recoveredBlock101Stack3 := recoveredLocal1.
            recoveredBlock101PC := 119.
        ].
        recoveredBlock101Step = 119 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) = (recoveredBlock101Stack3).
            recoveredBlock101PC := 120.
        ].
        recoveredBlock101Step = 120 ifTrue: [
            (recoveredBlock101Stack2) ifTrue: [recoveredBlock101PC := 124] ifFalse: [recoveredBlock101PC := 173].
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101PC := 125.
        ].
        recoveredBlock101Step = 125 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 126.
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 128.
        ].
        recoveredBlock101Step = 128 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal7.
            recoveredBlock101PC := 131.
        ].
        recoveredBlock101Step = 131 ifTrue: [
            (recoveredBlock101Stack1) mode: (recoveredBlock101Stack2).
            recoveredBlock101PC := 133.
        ].
        recoveredBlock101Step = 133 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 134.
        ].
        recoveredBlock101Step = 134 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 136.
        ].
        recoveredBlock101Step = 136 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal6.
            recoveredBlock101PC := 139.
        ].
        recoveredBlock101Step = 139 ifTrue: [
            (recoveredBlock101Stack1) offset: (recoveredBlock101Stack2).
            recoveredBlock101PC := 141.
        ].
        recoveredBlock101Step = 141 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 142.
        ].
        recoveredBlock101Step = 142 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 144.
        ].
        recoveredBlock101Step = 144 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal5.
            recoveredBlock101PC := 147.
        ].
        recoveredBlock101Step = 147 ifTrue: [
            (recoveredBlock101Stack1) amplitude: (recoveredBlock101Stack2).
            recoveredBlock101PC := 149.
        ].
        recoveredBlock101Step = 149 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 150.
        ].
        recoveredBlock101Step = 150 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 152.
        ].
        recoveredBlock101Step = 152 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal4.
            recoveredBlock101PC := 155.
        ].
        recoveredBlock101Step = 155 ifTrue: [
            (recoveredBlock101Stack1) frequence: (recoveredBlock101Stack2).
            recoveredBlock101PC := 157.
        ].
        recoveredBlock101Step = 157 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 158.
        ].
        recoveredBlock101Step = 158 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 160.
        ].
        recoveredBlock101Step = 160 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal3.
            recoveredBlock101PC := 163.
        ].
        recoveredBlock101Step = 163 ifTrue: [
            (recoveredBlock101Stack1) phase: (recoveredBlock101Stack2).
            recoveredBlock101PC := 165.
        ].
        recoveredBlock101Step = 165 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 166.
        ].
        recoveredBlock101Step = 166 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 168.
        ].
        recoveredBlock101Step = 168 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal2.
            recoveredBlock101PC := 171.
        ].
        recoveredBlock101Step = 171 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) matrixID: (recoveredBlock101Stack2).
            recoveredBlock101PC := 173.
        ].
        recoveredBlock101Step = 173 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'EHI65932'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := channels.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) updateSimulationData: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059f94c; bytecode file offset 0xe9c290"
!SGEditDataChannelEnumerationDialog methodsFor: 'recovered'!
updateWidgetsForMode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := channels.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) value.
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := recoveredLocal5.
    recoveredValue4 := (recoveredValue3) offset.
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredLocal5.
    recoveredValue6 := (recoveredValue5) amplitude.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := (recoveredValue7) frequence.
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal5.
    recoveredValue10 := (recoveredValue9) phase.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := [
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) widgetDataOffset.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal5.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) output.
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) getOrderedValues.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            (recoveredBlock41Stack0) items: (recoveredBlock41Stack1).
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) widgetDataOffset.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal4.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) asString.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            (recoveredBlock41Stack0) setString: (recoveredBlock41Stack1).
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) widgetDataAmplitude.
            recoveredBlock41PC := 72.
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal3.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) printString.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            (recoveredBlock41Stack0) value: (recoveredBlock41Stack1).
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 80.
        ].
        recoveredBlock41Step = 80 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) widgetDataFrequence.
            recoveredBlock41PC := 82.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) printString.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            (recoveredBlock41Stack0) value: (recoveredBlock41Stack1).
            recoveredBlock41PC := 89.
        ].
        recoveredBlock41Step = 89 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) widgetDataPhase.
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 95.
        ].
        recoveredBlock41Step = 95 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) printString.
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            (recoveredBlock41Stack0) value: (recoveredBlock41Stack1).
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 102.
        ].
        recoveredBlock41Step = 102 ifTrue: [
            recoveredBlock41Stack1 := 'constant'.
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 105.
        ].
        recoveredBlock41Step = 105 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 108] ifFalse: [recoveredBlock41PC := 128].
        ].
        recoveredBlock41Step = 108 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 111.
        ].
        recoveredBlock41Step = 111 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 112.
        ].
        recoveredBlock41Step = 112 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 114.
        ].
        recoveredBlock41Step = 114 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 117.
        ].
        recoveredBlock41Step = 117 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 121.
        ].
        recoveredBlock41Step = 121 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 122.
        ].
        recoveredBlock41Step = 122 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeConstant.
            recoveredBlock41PC := 124.
        ].
        recoveredBlock41Step = 124 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 128 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 131.
        ].
        recoveredBlock41Step = 131 ifTrue: [
            recoveredBlock41Stack1 := 'table'.
            recoveredBlock41PC := 133.
        ].
        recoveredBlock41Step = 133 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 134.
        ].
        recoveredBlock41Step = 134 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 138] ifFalse: [recoveredBlock41PC := 152].
        ].
        recoveredBlock41Step = 138 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 141.
        ].
        recoveredBlock41Step = 141 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 143.
        ].
        recoveredBlock41Step = 143 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 145.
        ].
        recoveredBlock41Step = 145 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 146.
        ].
        recoveredBlock41Step = 146 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeTable.
            recoveredBlock41PC := 148.
        ].
        recoveredBlock41Step = 148 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 152 ifTrue: [
            recoveredBlock41Stack0 := 'Muzaffar'.
            recoveredBlock41PC := 154.
        ].
        recoveredBlock41Step = 154 ifTrue: [
            recoveredBlock41Stack1 := 'EHI_15158'.
            recoveredBlock41PC := 156.
        ].
        recoveredBlock41Step = 156 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) == (recoveredBlock41Stack1).
            recoveredBlock41PC := 157.
        ].
        recoveredBlock41Step = 157 ifTrue: [
            recoveredBlock41PC := 158.
        ].
        recoveredBlock41Step = 158 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 161.
        ].
        recoveredBlock41Step = 161 ifTrue: [
            recoveredBlock41Stack1 := 'signal'.
            recoveredBlock41PC := 163.
        ].
        recoveredBlock41Step = 163 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 164.
        ].
        recoveredBlock41Step = 164 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 168] ifFalse: [recoveredBlock41PC := 180].
        ].
        recoveredBlock41Step = 168 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 171.
        ].
        recoveredBlock41Step = 171 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 172.
        ].
        recoveredBlock41Step = 172 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 174.
        ].
        recoveredBlock41Step = 174 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 175.
        ].
        recoveredBlock41Step = 175 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeSignal.
            recoveredBlock41PC := 177.
        ].
        recoveredBlock41Step = 177 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 180 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 183.
        ].
        recoveredBlock41Step = 183 ifTrue: [
            recoveredBlock41Stack1 := 'random'.
            recoveredBlock41PC := 185.
        ].
        recoveredBlock41Step = 185 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 186.
        ].
        recoveredBlock41Step = 186 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 190] ifFalse: [recoveredBlock41PC := 210].
        ].
        recoveredBlock41Step = 190 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 193.
        ].
        recoveredBlock41Step = 193 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 194.
        ].
        recoveredBlock41Step = 194 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 196.
        ].
        recoveredBlock41Step = 196 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 199.
        ].
        recoveredBlock41Step = 199 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 201.
        ].
        recoveredBlock41Step = 201 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 203.
        ].
        recoveredBlock41Step = 203 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 204.
        ].
        recoveredBlock41Step = 204 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeRandom.
            recoveredBlock41PC := 206.
        ].
        recoveredBlock41Step = 206 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 210 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 213.
        ].
        recoveredBlock41Step = 213 ifTrue: [
            recoveredBlock41Stack1 := 'gaussian'.
            recoveredBlock41PC := 215.
        ].
        recoveredBlock41Step = 215 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 216.
        ].
        recoveredBlock41Step = 216 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 220] ifFalse: [recoveredBlock41PC := 240].
        ].
        recoveredBlock41Step = 220 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 223.
        ].
        recoveredBlock41Step = 223 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 224.
        ].
        recoveredBlock41Step = 224 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 226.
        ].
        recoveredBlock41Step = 226 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 229.
        ].
        recoveredBlock41Step = 229 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 231.
        ].
        recoveredBlock41Step = 231 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 233.
        ].
        recoveredBlock41Step = 233 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 234.
        ].
        recoveredBlock41Step = 234 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeRandomGauss.
            recoveredBlock41PC := 236.
        ].
        recoveredBlock41Step = 236 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 240 ifTrue: [
            recoveredBlock41Stack0 := recoveredArg1.
            recoveredBlock41PC := 243.
        ].
        recoveredBlock41Step = 243 ifTrue: [
            recoveredBlock41Stack1 := 'step'.
            recoveredBlock41PC := 245.
        ].
        recoveredBlock41Step = 245 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) = (recoveredBlock41Stack1).
            recoveredBlock41PC := 246.
        ].
        recoveredBlock41Step = 246 ifTrue: [
            (recoveredBlock41Stack0) ifTrue: [recoveredBlock41PC := 250] ifFalse: [recoveredBlock41PC := 270].
        ].
        recoveredBlock41Step = 250 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 253.
        ].
        recoveredBlock41Step = 253 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 254.
        ].
        recoveredBlock41Step = 254 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 256.
        ].
        recoveredBlock41Step = 256 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 259.
        ].
        recoveredBlock41Step = 259 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 261.
        ].
        recoveredBlock41Step = 261 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 263.
        ].
        recoveredBlock41Step = 263 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 264.
        ].
        recoveredBlock41Step = 264 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeStep.
            recoveredBlock41PC := 266.
        ].
        recoveredBlock41Step = 266 ifTrue: [
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 270 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 273.
        ].
        recoveredBlock41Step = 273 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 274.
        ].
        recoveredBlock41Step = 274 ifTrue: [
            (recoveredBlock41Stack0) table: (recoveredBlock41Stack1).
            recoveredBlock41PC := 276.
        ].
        recoveredBlock41Step = 276 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal5.
            recoveredBlock41PC := 279.
        ].
        recoveredBlock41Step = 279 ifTrue: [
            recoveredBlock41Stack1 := ''.
            recoveredBlock41PC := 281.
        ].
        recoveredBlock41Step = 281 ifTrue: [
            (recoveredBlock41Stack0) matrixID: (recoveredBlock41Stack1).
            recoveredBlock41PC := 283.
        ].
        recoveredBlock41Step = 283 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 284.
        ].
        recoveredBlock41Step = 284 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) updateWidgetsForModeOthers.
            recoveredBlock41PC := 286.
        ].
        recoveredBlock41Step = 286 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack0.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
    (self) execShortOperation: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x206b74a4; bytecode file offset 0xfb3f74"
!SGEditDataChannelEnumerationDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 recoveredBlock25Value15 recoveredBlock25Value16 recoveredBlock25Value17 recoveredBlock25Value18 recoveredBlock25Value19 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    recoveredBlock25Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock25Value1) mwmInputMode: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Value0.
    recoveredBlock25Value4 := MWMDECORALL.
    recoveredBlock25Value5 := MWMDECORRESIZEH.
    recoveredBlock25Value6 := (recoveredBlock25Value4) | (recoveredBlock25Value5).
    recoveredBlock25Value7 := MWMDECORMINIMIZE.
    recoveredBlock25Value8 := (recoveredBlock25Value6) | (recoveredBlock25Value7).
    recoveredBlock25Value9 := MWMDECORMAXIMIZE.
    recoveredBlock25Value10 := (recoveredBlock25Value8) | (recoveredBlock25Value9).
    (recoveredBlock25Value3) mwmDecorations: (recoveredBlock25Value10).
    recoveredBlock25Value11 := recoveredBlock25Value0.
    (recoveredBlock25Value11) title: ('DataGenerator for:').
    recoveredBlock25Value12 := recoveredBlock25Value0.
    recoveredBlock25Value13 := recoveredLocal25.
    recoveredBlock25Value14 := (181) * (recoveredBlock25Value13).
    recoveredBlock25Value15 := (recoveredBlock25Value14) rounded.
    (recoveredBlock25Value12) height: (recoveredBlock25Value15).
    recoveredBlock25Value16 := recoveredLocal26.
    recoveredBlock25Value17 := (319) * (recoveredBlock25Value16).
    recoveredBlock25Value18 := (recoveredBlock25Value17) rounded.
    recoveredBlock25Value19 := (recoveredBlock25Value0) width: (recoveredBlock25Value18).
    recoveredBlock25Value19
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 'dataMode'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 recoveredBlock149Value8 recoveredBlock149Value9 recoveredBlock149Value10 recoveredBlock149Value11 recoveredBlock149Value12 recoveredBlock149Value13 recoveredBlock149Value14 recoveredBlock149Value15 recoveredBlock149Value16 recoveredBlock149Value17 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := recoveredBlock149Value0.
    recoveredBlock149Value2 := recoveredLocal26.
    recoveredBlock149Value3 := (85) * (recoveredBlock149Value2).
    recoveredBlock149Value4 := (recoveredBlock149Value3) rounded.
    (recoveredBlock149Value1) x: (recoveredBlock149Value4).
    recoveredBlock149Value5 := recoveredBlock149Value0.
    (recoveredBlock149Value5) visibleItemCount: (10).
    recoveredBlock149Value6 := recoveredBlock149Value0.
    recoveredBlock149Value7 := recoveredLocal25.
    recoveredBlock149Value8 := (10) * (recoveredBlock149Value7).
    recoveredBlock149Value9 := (recoveredBlock149Value8) rounded.
    (recoveredBlock149Value6) y: (recoveredBlock149Value9).
    recoveredBlock149Value10 := recoveredBlock149Value0.
    recoveredBlock149Value11 := recoveredLocal25.
    recoveredBlock149Value12 := (25) * (recoveredBlock149Value11).
    recoveredBlock149Value13 := (recoveredBlock149Value12) rounded.
    (recoveredBlock149Value10) height: (recoveredBlock149Value13).
    recoveredBlock149Value14 := recoveredLocal26.
    recoveredBlock149Value15 := (120) * (recoveredBlock149Value14).
    recoveredBlock149Value16 := (recoveredBlock149Value15) rounded.
    recoveredBlock149Value17 := (recoveredBlock149Value0) width: (recoveredBlock149Value16).
    recoveredBlock149Value17
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'dataMode'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'labelUnit'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := [:recoveredBlock231Arg1 | 
    | recoveredBlock231Value0 recoveredBlock231Value1 recoveredBlock231Value2 recoveredBlock231Value3 recoveredBlock231Value4 recoveredBlock231Value5 recoveredBlock231Value6 recoveredBlock231Value7 recoveredBlock231Value8 recoveredBlock231Value9 recoveredBlock231Value10 recoveredBlock231Value11 recoveredBlock231Value12 recoveredBlock231Value13 recoveredBlock231Value14 recoveredBlock231Value15 recoveredBlock231Value16 recoveredBlock231Value17 recoveredBlock231Value18 recoveredBlock231Value19 |
    recoveredBlock231Value0 := recoveredBlock231Arg1.
    recoveredBlock231Value1 := recoveredBlock231Value0.
    recoveredBlock231Value2 := recoveredLocal26.
    recoveredBlock231Value3 := (190) * (recoveredBlock231Value2).
    recoveredBlock231Value4 := (recoveredBlock231Value3) rounded.
    (recoveredBlock231Value1) x: (recoveredBlock231Value4).
    recoveredBlock231Value5 := recoveredBlock231Value0.
    recoveredBlock231Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock231Value5) alignment: (recoveredBlock231Value6).
    recoveredBlock231Value7 := recoveredBlock231Value0.
    (recoveredBlock231Value7) labelString: ('[Hz]').
    recoveredBlock231Value8 := recoveredBlock231Value0.
    recoveredBlock231Value9 := recoveredLocal25.
    recoveredBlock231Value10 := (45) * (recoveredBlock231Value9).
    recoveredBlock231Value11 := (recoveredBlock231Value10) rounded.
    (recoveredBlock231Value8) y: (recoveredBlock231Value11).
    recoveredBlock231Value12 := recoveredBlock231Value0.
    recoveredBlock231Value13 := recoveredLocal25.
    recoveredBlock231Value14 := (25) * (recoveredBlock231Value13).
    recoveredBlock231Value15 := (recoveredBlock231Value14) rounded.
    (recoveredBlock231Value12) height: (recoveredBlock231Value15).
    recoveredBlock231Value16 := recoveredLocal26.
    recoveredBlock231Value17 := (30) * (recoveredBlock231Value16).
    recoveredBlock231Value18 := (recoveredBlock231Value17) rounded.
    recoveredBlock231Value19 := (recoveredBlock231Value0) width: (recoveredBlock231Value18).
    recoveredBlock231Value19
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 'labelUnit'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'labelFrequence'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := [:recoveredBlock317Arg1 | 
    | recoveredBlock317Value0 recoveredBlock317Value1 recoveredBlock317Value2 recoveredBlock317Value3 recoveredBlock317Value4 recoveredBlock317Value5 recoveredBlock317Value6 recoveredBlock317Value7 recoveredBlock317Value8 recoveredBlock317Value9 recoveredBlock317Value10 recoveredBlock317Value11 recoveredBlock317Value12 recoveredBlock317Value13 |
    recoveredBlock317Value0 := recoveredBlock317Arg1.
    recoveredBlock317Value1 := recoveredBlock317Value0.
    recoveredBlock317Value2 := XmALIGNMENTEND.
    (recoveredBlock317Value1) alignment: (recoveredBlock317Value2).
    recoveredBlock317Value3 := recoveredBlock317Value0.
    (recoveredBlock317Value3) labelString: ('Frequency').
    recoveredBlock317Value4 := recoveredBlock317Value0.
    recoveredBlock317Value5 := recoveredLocal25.
    recoveredBlock317Value6 := (20) * (recoveredBlock317Value5).
    recoveredBlock317Value7 := (recoveredBlock317Value6) rounded.
    (recoveredBlock317Value4) height: (recoveredBlock317Value7).
    recoveredBlock317Value8 := recoveredBlock317Value0.
    recoveredBlock317Value9 := recoveredLocal26.
    recoveredBlock317Value10 := (76) * (recoveredBlock317Value9).
    recoveredBlock317Value11 := (recoveredBlock317Value10) rounded.
    (recoveredBlock317Value8) width: (recoveredBlock317Value11).
    recoveredBlock317Value12 := recoveredBlock317Value0.
    recoveredBlock317Value13 := (self) defaultLabelBlue.
    (recoveredBlock317Value12) foregroundColor: (recoveredBlock317Value13).
    recoveredBlock317Value0
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'labelFrequence'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'dataFrequence'.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := [:recoveredBlock387Arg1 | 
    | recoveredBlock387Value0 recoveredBlock387Value1 recoveredBlock387Value2 recoveredBlock387Value3 recoveredBlock387Value4 recoveredBlock387Value5 recoveredBlock387Value6 recoveredBlock387Value7 recoveredBlock387Value8 recoveredBlock387Value9 recoveredBlock387Value10 recoveredBlock387Value11 recoveredBlock387Value12 recoveredBlock387Value13 recoveredBlock387Value14 recoveredBlock387Value15 recoveredBlock387Value16 recoveredBlock387Value17 |
    recoveredBlock387Value0 := recoveredBlock387Arg1.
    recoveredBlock387Value1 := recoveredBlock387Value0.
    recoveredBlock387Value2 := recoveredLocal25.
    recoveredBlock387Value3 := (45) * (recoveredBlock387Value2).
    recoveredBlock387Value4 := (recoveredBlock387Value3) rounded.
    (recoveredBlock387Value1) y: (recoveredBlock387Value4).
    recoveredBlock387Value5 := recoveredBlock387Value0.
    recoveredBlock387Value6 := recoveredLocal26.
    recoveredBlock387Value7 := (85) * (recoveredBlock387Value6).
    recoveredBlock387Value8 := (recoveredBlock387Value7) rounded.
    (recoveredBlock387Value5) x: (recoveredBlock387Value8).
    recoveredBlock387Value9 := recoveredBlock387Value0.
    (recoveredBlock387Value9) characterMethod: ('checkUnsignedFloatAndFraction:').
    recoveredBlock387Value10 := recoveredBlock387Value0.
    recoveredBlock387Value11 := recoveredLocal25.
    recoveredBlock387Value12 := (25) * (recoveredBlock387Value11).
    recoveredBlock387Value13 := (recoveredBlock387Value12) rounded.
    (recoveredBlock387Value10) height: (recoveredBlock387Value13).
    recoveredBlock387Value14 := recoveredLocal26.
    recoveredBlock387Value15 := (104) * (recoveredBlock387Value14).
    recoveredBlock387Value16 := (recoveredBlock387Value15) rounded.
    recoveredBlock387Value17 := (recoveredBlock387Value0) width: (recoveredBlock387Value16).
    recoveredBlock387Value17
].
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := 'dataFrequence'.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := 'dataOk'.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := [:recoveredBlock469Arg1 | 
    | recoveredBlock469Value0 recoveredBlock469Value1 recoveredBlock469Value2 recoveredBlock469Value3 recoveredBlock469Value4 recoveredBlock469Value5 recoveredBlock469Value6 recoveredBlock469Value7 recoveredBlock469Value8 recoveredBlock469Value9 recoveredBlock469Value10 recoveredBlock469Value11 recoveredBlock469Value12 recoveredBlock469Value13 recoveredBlock469Value14 recoveredBlock469Value15 recoveredBlock469Value16 recoveredBlock469Value17 |
    recoveredBlock469Value0 := recoveredBlock469Arg1.
    recoveredBlock469Value1 := recoveredBlock469Value0.
    recoveredBlock469Value2 := recoveredLocal26.
    recoveredBlock469Value3 := (235) * (recoveredBlock469Value2).
    recoveredBlock469Value4 := (recoveredBlock469Value3) rounded.
    (recoveredBlock469Value1) x: (recoveredBlock469Value4).
    recoveredBlock469Value5 := recoveredBlock469Value0.
    (recoveredBlock469Value5) labelString: ('OK').
    recoveredBlock469Value6 := recoveredBlock469Value0.
    recoveredBlock469Value7 := recoveredLocal25.
    recoveredBlock469Value8 := (10) * (recoveredBlock469Value7).
    recoveredBlock469Value9 := (recoveredBlock469Value8) rounded.
    (recoveredBlock469Value6) y: (recoveredBlock469Value9).
    recoveredBlock469Value10 := recoveredBlock469Value0.
    recoveredBlock469Value11 := recoveredLocal25.
    recoveredBlock469Value12 := (25) * (recoveredBlock469Value11).
    recoveredBlock469Value13 := (recoveredBlock469Value12) rounded.
    (recoveredBlock469Value10) height: (recoveredBlock469Value13).
    recoveredBlock469Value14 := recoveredLocal26.
    recoveredBlock469Value15 := (75) * (recoveredBlock469Value14).
    recoveredBlock469Value16 := (recoveredBlock469Value15) rounded.
    recoveredBlock469Value17 := (recoveredBlock469Value0) width: (recoveredBlock469Value16).
    recoveredBlock469Value17
].
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := 'dataOk'.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := 'dataApply'.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := [:recoveredBlock551Arg1 | 
    | recoveredBlock551Value0 recoveredBlock551Value1 recoveredBlock551Value2 recoveredBlock551Value3 recoveredBlock551Value4 recoveredBlock551Value5 recoveredBlock551Value6 recoveredBlock551Value7 recoveredBlock551Value8 recoveredBlock551Value9 recoveredBlock551Value10 recoveredBlock551Value11 recoveredBlock551Value12 recoveredBlock551Value13 recoveredBlock551Value14 recoveredBlock551Value15 recoveredBlock551Value16 recoveredBlock551Value17 |
    recoveredBlock551Value0 := recoveredBlock551Arg1.
    recoveredBlock551Value1 := recoveredBlock551Value0.
    recoveredBlock551Value2 := recoveredLocal26.
    recoveredBlock551Value3 := (235) * (recoveredBlock551Value2).
    recoveredBlock551Value4 := (recoveredBlock551Value3) rounded.
    (recoveredBlock551Value1) x: (recoveredBlock551Value4).
    recoveredBlock551Value5 := recoveredBlock551Value0.
    (recoveredBlock551Value5) labelString: ('Apply').
    recoveredBlock551Value6 := recoveredBlock551Value0.
    recoveredBlock551Value7 := recoveredLocal25.
    recoveredBlock551Value8 := (45) * (recoveredBlock551Value7).
    recoveredBlock551Value9 := (recoveredBlock551Value8) rounded.
    (recoveredBlock551Value6) y: (recoveredBlock551Value9).
    recoveredBlock551Value10 := recoveredBlock551Value0.
    recoveredBlock551Value11 := recoveredLocal25.
    recoveredBlock551Value12 := (25) * (recoveredBlock551Value11).
    recoveredBlock551Value13 := (recoveredBlock551Value12) rounded.
    (recoveredBlock551Value10) height: (recoveredBlock551Value13).
    recoveredBlock551Value14 := recoveredLocal26.
    recoveredBlock551Value15 := (75) * (recoveredBlock551Value14).
    recoveredBlock551Value16 := (recoveredBlock551Value15) rounded.
    recoveredBlock551Value17 := (recoveredBlock551Value0) width: (recoveredBlock551Value16).
    recoveredBlock551Value17
].
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := 'dataApply'.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := 'dataCancel'.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack3 := [:recoveredBlock634Arg1 | 
    | recoveredBlock634Value0 recoveredBlock634Value1 recoveredBlock634Value2 recoveredBlock634Value3 recoveredBlock634Value4 recoveredBlock634Value5 recoveredBlock634Value6 recoveredBlock634Value7 recoveredBlock634Value8 recoveredBlock634Value9 recoveredBlock634Value10 recoveredBlock634Value11 recoveredBlock634Value12 recoveredBlock634Value13 recoveredBlock634Value14 recoveredBlock634Value15 recoveredBlock634Value16 recoveredBlock634Value17 |
    recoveredBlock634Value0 := recoveredBlock634Arg1.
    recoveredBlock634Value1 := recoveredBlock634Value0.
    recoveredBlock634Value2 := recoveredLocal26.
    recoveredBlock634Value3 := (235) * (recoveredBlock634Value2).
    recoveredBlock634Value4 := (recoveredBlock634Value3) rounded.
    (recoveredBlock634Value1) x: (recoveredBlock634Value4).
    recoveredBlock634Value5 := recoveredBlock634Value0.
    (recoveredBlock634Value5) labelString: ('Cancel').
    recoveredBlock634Value6 := recoveredBlock634Value0.
    recoveredBlock634Value7 := recoveredLocal25.
    recoveredBlock634Value8 := (80) * (recoveredBlock634Value7).
    recoveredBlock634Value9 := (recoveredBlock634Value8) rounded.
    (recoveredBlock634Value6) y: (recoveredBlock634Value9).
    recoveredBlock634Value10 := recoveredBlock634Value0.
    recoveredBlock634Value11 := recoveredLocal25.
    recoveredBlock634Value12 := (25) * (recoveredBlock634Value11).
    recoveredBlock634Value13 := (recoveredBlock634Value12) rounded.
    (recoveredBlock634Value10) height: (recoveredBlock634Value13).
    recoveredBlock634Value14 := recoveredLocal26.
    recoveredBlock634Value15 := (75) * (recoveredBlock634Value14).
    recoveredBlock634Value16 := (recoveredBlock634Value15) rounded.
    recoveredBlock634Value17 := (recoveredBlock634Value0) width: (recoveredBlock634Value16).
    recoveredBlock634Value17
].
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack2 := 'dataCancel'.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := [:recoveredBlock720Arg1 | 
    | recoveredBlock720Value0 recoveredBlock720Value1 recoveredBlock720Value2 recoveredBlock720Value3 recoveredBlock720Value4 recoveredBlock720Value5 recoveredBlock720Value6 recoveredBlock720Value7 recoveredBlock720Value8 recoveredBlock720Value9 recoveredBlock720Value10 recoveredBlock720Value11 recoveredBlock720Value12 recoveredBlock720Value13 recoveredBlock720Value14 recoveredBlock720Value15 recoveredBlock720Value16 recoveredBlock720Value17 recoveredBlock720Value18 |
    recoveredBlock720Value0 := recoveredBlock720Arg1.
    recoveredBlock720Value1 := recoveredBlock720Value0.
    recoveredBlock720Value2 := recoveredLocal26.
    recoveredBlock720Value3 := (220) * (recoveredBlock720Value2).
    recoveredBlock720Value4 := (recoveredBlock720Value3) rounded.
    (recoveredBlock720Value1) x: (recoveredBlock720Value4).
    recoveredBlock720Value5 := recoveredBlock720Value0.
    recoveredBlock720Value6 := XmVERTICAL.
    (recoveredBlock720Value5) orientation: (recoveredBlock720Value6).
    recoveredBlock720Value7 := recoveredBlock720Value0.
    recoveredBlock720Value8 := recoveredLocal25.
    recoveredBlock720Value9 := (5) * (recoveredBlock720Value8).
    recoveredBlock720Value10 := (recoveredBlock720Value9) rounded.
    (recoveredBlock720Value7) y: (recoveredBlock720Value10).
    recoveredBlock720Value11 := recoveredBlock720Value0.
    recoveredBlock720Value12 := recoveredLocal25.
    recoveredBlock720Value13 := (125) * (recoveredBlock720Value12).
    recoveredBlock720Value14 := (recoveredBlock720Value13) rounded.
    (recoveredBlock720Value11) height: (recoveredBlock720Value14).
    recoveredBlock720Value15 := recoveredLocal26.
    recoveredBlock720Value16 := (10) * (recoveredBlock720Value15).
    recoveredBlock720Value17 := (recoveredBlock720Value16) rounded.
    recoveredBlock720Value18 := (recoveredBlock720Value0) width: (recoveredBlock720Value17).
    recoveredBlock720Value18
].
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := 'dataAmplitude'.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack3 := [:recoveredBlock810Arg1 | 
    | recoveredBlock810Value0 recoveredBlock810Value1 recoveredBlock810Value2 recoveredBlock810Value3 recoveredBlock810Value4 recoveredBlock810Value5 recoveredBlock810Value6 recoveredBlock810Value7 recoveredBlock810Value8 recoveredBlock810Value9 recoveredBlock810Value10 recoveredBlock810Value11 recoveredBlock810Value12 recoveredBlock810Value13 recoveredBlock810Value14 recoveredBlock810Value15 recoveredBlock810Value16 recoveredBlock810Value17 |
    recoveredBlock810Value0 := recoveredBlock810Arg1.
    recoveredBlock810Value1 := recoveredBlock810Value0.
    recoveredBlock810Value2 := recoveredLocal25.
    recoveredBlock810Value3 := (150) * (recoveredBlock810Value2).
    recoveredBlock810Value4 := (recoveredBlock810Value3) rounded.
    (recoveredBlock810Value1) y: (recoveredBlock810Value4).
    recoveredBlock810Value5 := recoveredBlock810Value0.
    recoveredBlock810Value6 := recoveredLocal26.
    recoveredBlock810Value7 := (85) * (recoveredBlock810Value6).
    recoveredBlock810Value8 := (recoveredBlock810Value7) rounded.
    (recoveredBlock810Value5) x: (recoveredBlock810Value8).
    recoveredBlock810Value9 := recoveredBlock810Value0.
    (recoveredBlock810Value9) characterMethod: ('checkFloatAndFraction:').
    recoveredBlock810Value10 := recoveredBlock810Value0.
    recoveredBlock810Value11 := recoveredLocal25.
    recoveredBlock810Value12 := (25) * (recoveredBlock810Value11).
    recoveredBlock810Value13 := (recoveredBlock810Value12) rounded.
    (recoveredBlock810Value10) height: (recoveredBlock810Value13).
    recoveredBlock810Value14 := recoveredLocal26.
    recoveredBlock810Value15 := (104) * (recoveredBlock810Value14).
    recoveredBlock810Value16 := (recoveredBlock810Value15) rounded.
    recoveredBlock810Value17 := (recoveredBlock810Value0) width: (recoveredBlock810Value16).
    recoveredBlock810Value17
].
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack2 := 'dataAmplitude'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack2 := 'labelAmplitude'.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack3 := [:recoveredBlock896Arg1 | 
    | recoveredBlock896Value0 recoveredBlock896Value1 recoveredBlock896Value2 recoveredBlock896Value3 recoveredBlock896Value4 recoveredBlock896Value5 recoveredBlock896Value6 recoveredBlock896Value7 recoveredBlock896Value8 recoveredBlock896Value9 recoveredBlock896Value10 recoveredBlock896Value11 recoveredBlock896Value12 recoveredBlock896Value13 |
    recoveredBlock896Value0 := recoveredBlock896Arg1.
    recoveredBlock896Value1 := recoveredBlock896Value0.
    recoveredBlock896Value2 := XmALIGNMENTEND.
    (recoveredBlock896Value1) alignment: (recoveredBlock896Value2).
    recoveredBlock896Value3 := recoveredBlock896Value0.
    (recoveredBlock896Value3) labelString: ('Amplitude').
    recoveredBlock896Value4 := recoveredBlock896Value0.
    recoveredBlock896Value5 := recoveredLocal25.
    recoveredBlock896Value6 := (20) * (recoveredBlock896Value5).
    recoveredBlock896Value7 := (recoveredBlock896Value6) rounded.
    (recoveredBlock896Value4) height: (recoveredBlock896Value7).
    recoveredBlock896Value8 := recoveredBlock896Value0.
    recoveredBlock896Value9 := recoveredLocal26.
    recoveredBlock896Value10 := (76) * (recoveredBlock896Value9).
    recoveredBlock896Value11 := (recoveredBlock896Value10) rounded.
    (recoveredBlock896Value8) width: (recoveredBlock896Value11).
    recoveredBlock896Value12 := recoveredBlock896Value0.
    recoveredBlock896Value13 := (self) defaultLabelBlue.
    (recoveredBlock896Value12) foregroundColor: (recoveredBlock896Value13).
    recoveredBlock896Value0
].
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack2 := 'labelAmplitude'.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack2 := 'dataOffset'.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack3 := [:recoveredBlock970Arg1 | 
    | recoveredBlock970Value0 recoveredBlock970Value1 recoveredBlock970Value2 recoveredBlock970Value3 recoveredBlock970Value4 recoveredBlock970Value5 recoveredBlock970Value6 recoveredBlock970Value7 recoveredBlock970Value8 recoveredBlock970Value9 recoveredBlock970Value10 recoveredBlock970Value11 recoveredBlock970Value12 recoveredBlock970Value13 recoveredBlock970Value14 recoveredBlock970Value15 recoveredBlock970Value16 recoveredBlock970Value17 |
    recoveredBlock970Value0 := recoveredBlock970Arg1.
    recoveredBlock970Value1 := recoveredBlock970Value0.
    recoveredBlock970Value2 := recoveredLocal25.
    recoveredBlock970Value3 := (115) * (recoveredBlock970Value2).
    recoveredBlock970Value4 := (recoveredBlock970Value3) rounded.
    (recoveredBlock970Value1) y: (recoveredBlock970Value4).
    recoveredBlock970Value5 := recoveredBlock970Value0.
    recoveredBlock970Value6 := recoveredLocal26.
    recoveredBlock970Value7 := (85) * (recoveredBlock970Value6).
    recoveredBlock970Value8 := (recoveredBlock970Value7) rounded.
    (recoveredBlock970Value5) x: (recoveredBlock970Value8).
    recoveredBlock970Value9 := recoveredBlock970Value0.
    (recoveredBlock970Value9) visibleItemCount: (10).
    recoveredBlock970Value10 := recoveredBlock970Value0.
    recoveredBlock970Value11 := recoveredLocal25.
    recoveredBlock970Value12 := (25) * (recoveredBlock970Value11).
    recoveredBlock970Value13 := (recoveredBlock970Value12) rounded.
    (recoveredBlock970Value10) height: (recoveredBlock970Value13).
    recoveredBlock970Value14 := recoveredLocal26.
    recoveredBlock970Value15 := (120) * (recoveredBlock970Value14).
    recoveredBlock970Value16 := (recoveredBlock970Value15) rounded.
    recoveredBlock970Value17 := (recoveredBlock970Value0) width: (recoveredBlock970Value16).
    recoveredBlock970Value17
].
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack2 := 'dataOffset'.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack2 := 'labelOffset'.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack3 := [:recoveredBlock1056Arg1 | 
    | recoveredBlock1056Value0 recoveredBlock1056Value1 recoveredBlock1056Value2 recoveredBlock1056Value3 recoveredBlock1056Value4 recoveredBlock1056Value5 recoveredBlock1056Value6 recoveredBlock1056Value7 recoveredBlock1056Value8 recoveredBlock1056Value9 recoveredBlock1056Value10 recoveredBlock1056Value11 recoveredBlock1056Value12 recoveredBlock1056Value13 |
    recoveredBlock1056Value0 := recoveredBlock1056Arg1.
    recoveredBlock1056Value1 := recoveredBlock1056Value0.
    recoveredBlock1056Value2 := XmALIGNMENTEND.
    (recoveredBlock1056Value1) alignment: (recoveredBlock1056Value2).
    recoveredBlock1056Value3 := recoveredBlock1056Value0.
    (recoveredBlock1056Value3) labelString: ('Offset').
    recoveredBlock1056Value4 := recoveredBlock1056Value0.
    recoveredBlock1056Value5 := recoveredLocal25.
    recoveredBlock1056Value6 := (15) * (recoveredBlock1056Value5).
    recoveredBlock1056Value7 := (recoveredBlock1056Value6) rounded.
    (recoveredBlock1056Value4) height: (recoveredBlock1056Value7).
    recoveredBlock1056Value8 := recoveredBlock1056Value0.
    recoveredBlock1056Value9 := recoveredLocal26.
    recoveredBlock1056Value10 := (52) * (recoveredBlock1056Value9).
    recoveredBlock1056Value11 := (recoveredBlock1056Value10) rounded.
    (recoveredBlock1056Value8) width: (recoveredBlock1056Value11).
    recoveredBlock1056Value12 := recoveredBlock1056Value0.
    recoveredBlock1056Value13 := (self) defaultLabelBlue.
    (recoveredBlock1056Value12) foregroundColor: (recoveredBlock1056Value13).
    recoveredBlock1056Value0
].
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack2 := 'labelOffset'.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack2 := 'labelPhase'.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack3 := [:recoveredBlock1128Arg1 | 
    | recoveredBlock1128Value0 recoveredBlock1128Value1 recoveredBlock1128Value2 recoveredBlock1128Value3 recoveredBlock1128Value4 recoveredBlock1128Value5 recoveredBlock1128Value6 recoveredBlock1128Value7 recoveredBlock1128Value8 recoveredBlock1128Value9 recoveredBlock1128Value10 recoveredBlock1128Value11 recoveredBlock1128Value12 recoveredBlock1128Value13 |
    recoveredBlock1128Value0 := recoveredBlock1128Arg1.
    recoveredBlock1128Value1 := recoveredBlock1128Value0.
    recoveredBlock1128Value2 := XmALIGNMENTEND.
    (recoveredBlock1128Value1) alignment: (recoveredBlock1128Value2).
    recoveredBlock1128Value3 := recoveredBlock1128Value0.
    (recoveredBlock1128Value3) labelString: ('Phase').
    recoveredBlock1128Value4 := recoveredBlock1128Value0.
    recoveredBlock1128Value5 := recoveredLocal25.
    recoveredBlock1128Value6 := (15) * (recoveredBlock1128Value5).
    recoveredBlock1128Value7 := (recoveredBlock1128Value6) rounded.
    (recoveredBlock1128Value4) height: (recoveredBlock1128Value7).
    recoveredBlock1128Value8 := recoveredBlock1128Value0.
    recoveredBlock1128Value9 := recoveredLocal26.
    recoveredBlock1128Value10 := (76) * (recoveredBlock1128Value9).
    recoveredBlock1128Value11 := (recoveredBlock1128Value10) rounded.
    (recoveredBlock1128Value8) width: (recoveredBlock1128Value11).
    recoveredBlock1128Value12 := recoveredBlock1128Value0.
    recoveredBlock1128Value13 := (self) defaultLabelBlue.
    (recoveredBlock1128Value12) foregroundColor: (recoveredBlock1128Value13).
    recoveredBlock1128Value0
].
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack2 := 'labelPhase'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack2 := 'dataPhase'.
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack3 := [:recoveredBlock1202Arg1 | 
    | recoveredBlock1202Value0 recoveredBlock1202Value1 recoveredBlock1202Value2 recoveredBlock1202Value3 recoveredBlock1202Value4 recoveredBlock1202Value5 recoveredBlock1202Value6 recoveredBlock1202Value7 recoveredBlock1202Value8 recoveredBlock1202Value9 recoveredBlock1202Value10 recoveredBlock1202Value11 recoveredBlock1202Value12 recoveredBlock1202Value13 recoveredBlock1202Value14 recoveredBlock1202Value15 recoveredBlock1202Value16 recoveredBlock1202Value17 |
    recoveredBlock1202Value0 := recoveredBlock1202Arg1.
    recoveredBlock1202Value1 := recoveredBlock1202Value0.
    recoveredBlock1202Value2 := recoveredLocal25.
    recoveredBlock1202Value3 := (80) * (recoveredBlock1202Value2).
    recoveredBlock1202Value4 := (recoveredBlock1202Value3) rounded.
    (recoveredBlock1202Value1) y: (recoveredBlock1202Value4).
    recoveredBlock1202Value5 := recoveredBlock1202Value0.
    recoveredBlock1202Value6 := recoveredLocal26.
    recoveredBlock1202Value7 := (85) * (recoveredBlock1202Value6).
    recoveredBlock1202Value8 := (recoveredBlock1202Value7) rounded.
    (recoveredBlock1202Value5) x: (recoveredBlock1202Value8).
    recoveredBlock1202Value9 := recoveredBlock1202Value0.
    (recoveredBlock1202Value9) characterMethod: ('checkFloatAndFraction:').
    recoveredBlock1202Value10 := recoveredBlock1202Value0.
    recoveredBlock1202Value11 := recoveredLocal25.
    recoveredBlock1202Value12 := (25) * (recoveredBlock1202Value11).
    recoveredBlock1202Value13 := (recoveredBlock1202Value12) rounded.
    (recoveredBlock1202Value10) height: (recoveredBlock1202Value13).
    recoveredBlock1202Value14 := recoveredLocal26.
    recoveredBlock1202Value15 := (104) * (recoveredBlock1202Value14).
    recoveredBlock1202Value16 := (recoveredBlock1202Value15) rounded.
    recoveredBlock1202Value17 := (recoveredBlock1202Value0) width: (recoveredBlock1202Value16).
    recoveredBlock1202Value17
].
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1267.
        ].
        recoveredStep = 1267 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack2 := 'dataPhase'.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack2 := 'labelPhaseUnit'.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredStack3 := [:recoveredBlock1288Arg1 | 
    | recoveredBlock1288Value0 recoveredBlock1288Value1 recoveredBlock1288Value2 recoveredBlock1288Value3 recoveredBlock1288Value4 recoveredBlock1288Value5 recoveredBlock1288Value6 recoveredBlock1288Value7 recoveredBlock1288Value8 recoveredBlock1288Value9 recoveredBlock1288Value10 recoveredBlock1288Value11 recoveredBlock1288Value12 recoveredBlock1288Value13 recoveredBlock1288Value14 recoveredBlock1288Value15 recoveredBlock1288Value16 recoveredBlock1288Value17 recoveredBlock1288Value18 recoveredBlock1288Value19 |
    recoveredBlock1288Value0 := recoveredBlock1288Arg1.
    recoveredBlock1288Value1 := recoveredBlock1288Value0.
    recoveredBlock1288Value2 := recoveredLocal26.
    recoveredBlock1288Value3 := (190) * (recoveredBlock1288Value2).
    recoveredBlock1288Value4 := (recoveredBlock1288Value3) rounded.
    (recoveredBlock1288Value1) x: (recoveredBlock1288Value4).
    recoveredBlock1288Value5 := recoveredBlock1288Value0.
    recoveredBlock1288Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock1288Value5) alignment: (recoveredBlock1288Value6).
    recoveredBlock1288Value7 := recoveredBlock1288Value0.
    (recoveredBlock1288Value7) labelString: ('[s]').
    recoveredBlock1288Value8 := recoveredBlock1288Value0.
    recoveredBlock1288Value9 := recoveredLocal25.
    recoveredBlock1288Value10 := (80) * (recoveredBlock1288Value9).
    recoveredBlock1288Value11 := (recoveredBlock1288Value10) rounded.
    (recoveredBlock1288Value8) y: (recoveredBlock1288Value11).
    recoveredBlock1288Value12 := recoveredBlock1288Value0.
    recoveredBlock1288Value13 := recoveredLocal25.
    recoveredBlock1288Value14 := (25) * (recoveredBlock1288Value13).
    recoveredBlock1288Value15 := (recoveredBlock1288Value14) rounded.
    (recoveredBlock1288Value12) height: (recoveredBlock1288Value15).
    recoveredBlock1288Value16 := recoveredLocal26.
    recoveredBlock1288Value17 := (30) * (recoveredBlock1288Value16).
    recoveredBlock1288Value18 := (recoveredBlock1288Value17) rounded.
    recoveredBlock1288Value19 := (recoveredBlock1288Value0) width: (recoveredBlock1288Value18).
    recoveredBlock1288Value19
].
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack2 := 'labelPhaseUnit'.
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack2 := 'buttonTable'.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack3 := [:recoveredBlock1380Arg1 | 
    | recoveredBlock1380Value0 recoveredBlock1380Value1 recoveredBlock1380Value2 recoveredBlock1380Value3 recoveredBlock1380Value4 recoveredBlock1380Value5 recoveredBlock1380Value6 recoveredBlock1380Value7 recoveredBlock1380Value8 recoveredBlock1380Value9 recoveredBlock1380Value10 recoveredBlock1380Value11 recoveredBlock1380Value12 recoveredBlock1380Value13 recoveredBlock1380Value14 recoveredBlock1380Value15 recoveredBlock1380Value16 recoveredBlock1380Value17 |
    recoveredBlock1380Value0 := recoveredBlock1380Arg1.
    recoveredBlock1380Value1 := recoveredBlock1380Value0.
    recoveredBlock1380Value2 := recoveredLocal26.
    recoveredBlock1380Value3 := (85) * (recoveredBlock1380Value2).
    recoveredBlock1380Value4 := (recoveredBlock1380Value3) rounded.
    (recoveredBlock1380Value1) x: (recoveredBlock1380Value4).
    recoveredBlock1380Value5 := recoveredBlock1380Value0.
    (recoveredBlock1380Value5) labelString: ('Edit Table').
    recoveredBlock1380Value6 := recoveredBlock1380Value0.
    recoveredBlock1380Value7 := recoveredLocal25.
    recoveredBlock1380Value8 := (80) * (recoveredBlock1380Value7).
    recoveredBlock1380Value9 := (recoveredBlock1380Value8) rounded.
    (recoveredBlock1380Value6) y: (recoveredBlock1380Value9).
    recoveredBlock1380Value10 := recoveredBlock1380Value0.
    recoveredBlock1380Value11 := recoveredLocal25.
    recoveredBlock1380Value12 := (25) * (recoveredBlock1380Value11).
    recoveredBlock1380Value13 := (recoveredBlock1380Value12) rounded.
    (recoveredBlock1380Value10) height: (recoveredBlock1380Value13).
    recoveredBlock1380Value14 := recoveredLocal26.
    recoveredBlock1380Value15 := (120) * (recoveredBlock1380Value14).
    recoveredBlock1380Value16 := (recoveredBlock1380Value15) rounded.
    recoveredBlock1380Value17 := (recoveredBlock1380Value0) width: (recoveredBlock1380Value16).
    recoveredBlock1380Value17
].
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            recoveredStack2 := 'buttonTable'.
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1457.
        ].
        recoveredStep = 1457 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack2 := 'dataStimulus'.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack3 := [:recoveredBlock1466Arg1 | 
    | recoveredBlock1466Value0 recoveredBlock1466Value1 recoveredBlock1466Value2 recoveredBlock1466Value3 recoveredBlock1466Value4 recoveredBlock1466Value5 recoveredBlock1466Value6 recoveredBlock1466Value7 recoveredBlock1466Value8 recoveredBlock1466Value9 recoveredBlock1466Value10 recoveredBlock1466Value11 recoveredBlock1466Value12 recoveredBlock1466Value13 recoveredBlock1466Value14 recoveredBlock1466Value15 recoveredBlock1466Value16 recoveredBlock1466Value17 |
    recoveredBlock1466Value0 := recoveredBlock1466Arg1.
    recoveredBlock1466Value1 := recoveredBlock1466Value0.
    (recoveredBlock1466Value1) visibleItemCount: (10).
    recoveredBlock1466Value2 := recoveredBlock1466Value0.
    recoveredBlock1466Value3 := recoveredLocal26.
    recoveredBlock1466Value4 := (85) * (recoveredBlock1466Value3).
    recoveredBlock1466Value5 := (recoveredBlock1466Value4) rounded.
    (recoveredBlock1466Value2) x: (recoveredBlock1466Value5).
    recoveredBlock1466Value6 := recoveredBlock1466Value0.
    recoveredBlock1466Value7 := recoveredLocal25.
    recoveredBlock1466Value8 := (45) * (recoveredBlock1466Value7).
    recoveredBlock1466Value9 := (recoveredBlock1466Value8) rounded.
    (recoveredBlock1466Value6) y: (recoveredBlock1466Value9).
    recoveredBlock1466Value10 := recoveredBlock1466Value0.
    recoveredBlock1466Value11 := recoveredLocal25.
    recoveredBlock1466Value12 := (25) * (recoveredBlock1466Value11).
    recoveredBlock1466Value13 := (recoveredBlock1466Value12) rounded.
    (recoveredBlock1466Value10) height: (recoveredBlock1466Value13).
    recoveredBlock1466Value14 := recoveredLocal26.
    recoveredBlock1466Value15 := (120) * (recoveredBlock1466Value14).
    recoveredBlock1466Value16 := (recoveredBlock1466Value15) rounded.
    recoveredBlock1466Value17 := (recoveredBlock1466Value0) width: (recoveredBlock1466Value16).
    recoveredBlock1466Value17
].
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack2 := 'dataStimulus'.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack2 := 'labelStimulus'.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredStack3 := [:recoveredBlock1550Arg1 | 
    | recoveredBlock1550Value0 recoveredBlock1550Value1 recoveredBlock1550Value2 recoveredBlock1550Value3 recoveredBlock1550Value4 recoveredBlock1550Value5 recoveredBlock1550Value6 recoveredBlock1550Value7 recoveredBlock1550Value8 recoveredBlock1550Value9 recoveredBlock1550Value10 recoveredBlock1550Value11 recoveredBlock1550Value12 recoveredBlock1550Value13 |
    recoveredBlock1550Value0 := recoveredBlock1550Arg1.
    recoveredBlock1550Value1 := recoveredBlock1550Value0.
    recoveredBlock1550Value2 := XmALIGNMENTEND.
    (recoveredBlock1550Value1) alignment: (recoveredBlock1550Value2).
    recoveredBlock1550Value3 := recoveredBlock1550Value0.
    (recoveredBlock1550Value3) labelString: ('Stimulus').
    recoveredBlock1550Value4 := recoveredBlock1550Value0.
    recoveredBlock1550Value5 := recoveredLocal25.
    recoveredBlock1550Value6 := (15) * (recoveredBlock1550Value5).
    recoveredBlock1550Value7 := (recoveredBlock1550Value6) rounded.
    (recoveredBlock1550Value4) height: (recoveredBlock1550Value7).
    recoveredBlock1550Value8 := recoveredBlock1550Value0.
    recoveredBlock1550Value9 := recoveredLocal26.
    recoveredBlock1550Value10 := (71) * (recoveredBlock1550Value9).
    recoveredBlock1550Value11 := (recoveredBlock1550Value10) rounded.
    (recoveredBlock1550Value8) width: (recoveredBlock1550Value11).
    recoveredBlock1550Value12 := recoveredBlock1550Value0.
    recoveredBlock1550Value13 := (self) defaultLabelBlue.
    (recoveredBlock1550Value12) foregroundColor: (recoveredBlock1550Value13).
    recoveredBlock1550Value0
].
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1603.
        ].
        recoveredStep = 1603 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            recoveredStack2 := 'labelStimulus'.
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 1624.
        ].
        recoveredStep = 1624 ifTrue: [
            recoveredStack3 := [:recoveredBlock1624Arg1 | 
    | recoveredBlock1624Value0 recoveredBlock1624Value1 recoveredBlock1624Value2 recoveredBlock1624Value3 recoveredBlock1624Value4 recoveredBlock1624Value5 recoveredBlock1624Value6 recoveredBlock1624Value7 recoveredBlock1624Value8 recoveredBlock1624Value9 recoveredBlock1624Value10 recoveredBlock1624Value11 recoveredBlock1624Value12 recoveredBlock1624Value13 |
    recoveredBlock1624Value0 := recoveredBlock1624Arg1.
    recoveredBlock1624Value1 := recoveredBlock1624Value0.
    recoveredBlock1624Value2 := XmALIGNMENTEND.
    (recoveredBlock1624Value1) alignment: (recoveredBlock1624Value2).
    recoveredBlock1624Value3 := recoveredBlock1624Value0.
    (recoveredBlock1624Value3) labelString: ('Mode').
    recoveredBlock1624Value4 := recoveredBlock1624Value0.
    recoveredBlock1624Value5 := recoveredLocal25.
    recoveredBlock1624Value6 := (15) * (recoveredBlock1624Value5).
    recoveredBlock1624Value7 := (recoveredBlock1624Value6) rounded.
    (recoveredBlock1624Value4) height: (recoveredBlock1624Value7).
    recoveredBlock1624Value8 := recoveredBlock1624Value0.
    recoveredBlock1624Value9 := recoveredLocal26.
    recoveredBlock1624Value10 := (36) * (recoveredBlock1624Value9).
    recoveredBlock1624Value11 := (recoveredBlock1624Value10) rounded.
    (recoveredBlock1624Value8) width: (recoveredBlock1624Value11).
    recoveredBlock1624Value12 := recoveredBlock1624Value0.
    recoveredBlock1624Value13 := (self) defaultLabelBlue.
    (recoveredBlock1624Value12) foregroundColor: (recoveredBlock1624Value13).
    recoveredBlock1624Value0
].
            recoveredPC := 1671.
        ].
        recoveredStep = 1671 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack2 := 'labelMode'.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack2 := 'dataTimeScale'.
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack3 := [:recoveredBlock1696Arg1 | 
    | recoveredBlock1696Value0 recoveredBlock1696Value1 recoveredBlock1696Value2 recoveredBlock1696Value3 recoveredBlock1696Value4 recoveredBlock1696Value5 recoveredBlock1696Value6 recoveredBlock1696Value7 recoveredBlock1696Value8 recoveredBlock1696Value9 recoveredBlock1696Value10 recoveredBlock1696Value11 recoveredBlock1696Value12 recoveredBlock1696Value13 recoveredBlock1696Value14 recoveredBlock1696Value15 recoveredBlock1696Value16 recoveredBlock1696Value17 |
    recoveredBlock1696Value0 := recoveredBlock1696Arg1.
    recoveredBlock1696Value1 := recoveredBlock1696Value0.
    recoveredBlock1696Value2 := recoveredLocal25.
    recoveredBlock1696Value3 := (45) * (recoveredBlock1696Value2).
    recoveredBlock1696Value4 := (recoveredBlock1696Value3) rounded.
    (recoveredBlock1696Value1) y: (recoveredBlock1696Value4).
    recoveredBlock1696Value5 := recoveredBlock1696Value0.
    recoveredBlock1696Value6 := recoveredLocal26.
    recoveredBlock1696Value7 := (85) * (recoveredBlock1696Value6).
    recoveredBlock1696Value8 := (recoveredBlock1696Value7) rounded.
    (recoveredBlock1696Value5) x: (recoveredBlock1696Value8).
    recoveredBlock1696Value9 := recoveredBlock1696Value0.
    (recoveredBlock1696Value9) characterMethod: ('checkFloatAndFraction:').
    recoveredBlock1696Value10 := recoveredBlock1696Value0.
    recoveredBlock1696Value11 := recoveredLocal25.
    recoveredBlock1696Value12 := (25) * (recoveredBlock1696Value11).
    recoveredBlock1696Value13 := (recoveredBlock1696Value12) rounded.
    (recoveredBlock1696Value10) height: (recoveredBlock1696Value13).
    recoveredBlock1696Value14 := recoveredLocal26.
    recoveredBlock1696Value15 := (120) * (recoveredBlock1696Value14).
    recoveredBlock1696Value16 := (recoveredBlock1696Value15) rounded.
    recoveredBlock1696Value17 := (recoveredBlock1696Value0) width: (recoveredBlock1696Value16).
    recoveredBlock1696Value17
].
            recoveredPC := 1755.
        ].
        recoveredStep = 1755 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1757.
        ].
        recoveredStep = 1757 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1759.
        ].
        recoveredStep = 1759 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1762.
        ].
        recoveredStep = 1762 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1765.
        ].
        recoveredStep = 1765 ifTrue: [
            recoveredStack2 := 'dataTimeScale'.
            recoveredPC := 1768.
        ].
        recoveredStep = 1768 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1773.
        ].
        recoveredStep = 1773 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            recoveredStack2 := 'labelTimeScale'.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack3 := [:recoveredBlock1780Arg1 | 
    | recoveredBlock1780Value0 recoveredBlock1780Value1 recoveredBlock1780Value2 recoveredBlock1780Value3 recoveredBlock1780Value4 recoveredBlock1780Value5 recoveredBlock1780Value6 recoveredBlock1780Value7 recoveredBlock1780Value8 recoveredBlock1780Value9 recoveredBlock1780Value10 recoveredBlock1780Value11 recoveredBlock1780Value12 recoveredBlock1780Value13 |
    recoveredBlock1780Value0 := recoveredBlock1780Arg1.
    recoveredBlock1780Value1 := recoveredBlock1780Value0.
    recoveredBlock1780Value2 := XmALIGNMENTEND.
    (recoveredBlock1780Value1) alignment: (recoveredBlock1780Value2).
    recoveredBlock1780Value3 := recoveredBlock1780Value0.
    (recoveredBlock1780Value3) labelString: ('Time Scale').
    recoveredBlock1780Value4 := recoveredBlock1780Value0.
    recoveredBlock1780Value5 := recoveredLocal25.
    recoveredBlock1780Value6 := (15) * (recoveredBlock1780Value5).
    recoveredBlock1780Value7 := (recoveredBlock1780Value6) rounded.
    (recoveredBlock1780Value4) height: (recoveredBlock1780Value7).
    recoveredBlock1780Value8 := recoveredBlock1780Value0.
    recoveredBlock1780Value9 := recoveredLocal26.
    recoveredBlock1780Value10 := (80) * (recoveredBlock1780Value9).
    recoveredBlock1780Value11 := (recoveredBlock1780Value10) rounded.
    (recoveredBlock1780Value8) width: (recoveredBlock1780Value11).
    recoveredBlock1780Value12 := recoveredBlock1780Value0.
    recoveredBlock1780Value13 := (self) defaultLabelBlue.
    (recoveredBlock1780Value12) foregroundColor: (recoveredBlock1780Value13).
    recoveredBlock1780Value0
].
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1831.
        ].
        recoveredStep = 1831 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1836.
        ].
        recoveredStep = 1836 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack2 := 'labelTimeScale'.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1845.
        ].
        recoveredStep = 1845 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1847.
        ].
        recoveredStep = 1847 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            recoveredStack2 := [:recoveredBlock1850Arg1 | 
    | recoveredBlock1850Value0 recoveredBlock1850Value1 recoveredBlock1850Value2 |
    recoveredBlock1850Value0 := recoveredBlock1850Arg1.
    recoveredBlock1850Value1 := recoveredLocal22.
    recoveredBlock1850Value2 := (recoveredBlock1850Value0) workWindow: (recoveredBlock1850Value1).
    recoveredBlock1850Value2
].
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1871.
        ].
        recoveredStep = 1871 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1874.
        ].
        recoveredStep = 1874 ifTrue: [
            recoveredStack2 := [:recoveredBlock1874Arg1 | 
    | recoveredBlock1874Value0 recoveredBlock1874Value1 recoveredBlock1874Value2 recoveredBlock1874Value3 recoveredBlock1874Value4 |
    recoveredBlock1874Value0 := recoveredBlock1874Arg1.
    recoveredBlock1874Value1 := recoveredBlock1874Value0.
    recoveredBlock1874Value2 := recoveredLocal15.
    (recoveredBlock1874Value1) cancelButton: (recoveredBlock1874Value2).
    recoveredBlock1874Value3 := recoveredLocal17.
    recoveredBlock1874Value4 := (recoveredBlock1874Value0) defaultButton: (recoveredBlock1874Value3).
    recoveredBlock1874Value4
].
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack2 := [:recoveredBlock1906Arg1 | 
    | recoveredBlock1906Value0 recoveredBlock1906Value1 recoveredBlock1906Value2 recoveredBlock1906Value3 recoveredBlock1906Value4 recoveredBlock1906Value5 recoveredBlock1906Value6 recoveredBlock1906Value7 recoveredBlock1906Value8 recoveredBlock1906Value9 recoveredBlock1906Value10 recoveredBlock1906Value11 |
    recoveredBlock1906Value0 := recoveredBlock1906Arg1.
    recoveredBlock1906Value1 := recoveredBlock1906Value0.
    recoveredBlock1906Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1906Value1) bottomAttachment: (recoveredBlock1906Value2).
    recoveredBlock1906Value3 := recoveredBlock1906Value0.
    recoveredBlock1906Value4 := recoveredLocal13.
    (recoveredBlock1906Value3) bottomWidget: (recoveredBlock1906Value4).
    recoveredBlock1906Value5 := recoveredBlock1906Value0.
    recoveredBlock1906Value6 := XmATTACHFORM.
    (recoveredBlock1906Value5) leftAttachment: (recoveredBlock1906Value6).
    recoveredBlock1906Value7 := recoveredBlock1906Value0.
    recoveredBlock1906Value8 := XmATTACHWIDGET.
    (recoveredBlock1906Value7) rightAttachment: (recoveredBlock1906Value8).
    recoveredBlock1906Value9 := recoveredBlock1906Value0.
    recoveredBlock1906Value10 := recoveredLocal13.
    (recoveredBlock1906Value9) rightWidget: (recoveredBlock1906Value10).
    recoveredBlock1906Value11 := (recoveredBlock1906Value0) rightOffset: (5).
    recoveredBlock1906Value11
].
            recoveredPC := 1962.
        ].
        recoveredStep = 1962 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1967.
        ].
        recoveredStep = 1967 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1970.
        ].
        recoveredStep = 1970 ifTrue: [
            recoveredStack2 := [:recoveredBlock1970Arg1 | 
    | recoveredBlock1970Value0 recoveredBlock1970Value1 recoveredBlock1970Value2 recoveredBlock1970Value3 recoveredBlock1970Value4 recoveredBlock1970Value5 recoveredBlock1970Value6 recoveredBlock1970Value7 recoveredBlock1970Value8 recoveredBlock1970Value9 recoveredBlock1970Value10 recoveredBlock1970Value11 |
    recoveredBlock1970Value0 := recoveredBlock1970Arg1.
    recoveredBlock1970Value1 := recoveredBlock1970Value0.
    recoveredBlock1970Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1970Value1) bottomAttachment: (recoveredBlock1970Value2).
    recoveredBlock1970Value3 := recoveredBlock1970Value0.
    recoveredBlock1970Value4 := recoveredLocal2.
    (recoveredBlock1970Value3) bottomWidget: (recoveredBlock1970Value4).
    recoveredBlock1970Value5 := recoveredBlock1970Value0.
    recoveredBlock1970Value6 := XmATTACHFORM.
    (recoveredBlock1970Value5) leftAttachment: (recoveredBlock1970Value6).
    recoveredBlock1970Value7 := recoveredBlock1970Value0.
    recoveredBlock1970Value8 := XmATTACHWIDGET.
    (recoveredBlock1970Value7) rightAttachment: (recoveredBlock1970Value8).
    recoveredBlock1970Value9 := recoveredBlock1970Value0.
    recoveredBlock1970Value10 := recoveredLocal2.
    (recoveredBlock1970Value9) rightWidget: (recoveredBlock1970Value10).
    recoveredBlock1970Value11 := (recoveredBlock1970Value0) rightOffset: (5).
    recoveredBlock1970Value11
].
            recoveredPC := 2026.
        ].
        recoveredStep = 2026 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2031.
        ].
        recoveredStep = 2031 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2034.
        ].
        recoveredStep = 2034 ifTrue: [
            recoveredStack2 := [:recoveredBlock2034Arg1 | 
    | recoveredBlock2034Value0 recoveredBlock2034Value1 recoveredBlock2034Value2 recoveredBlock2034Value3 recoveredBlock2034Value4 recoveredBlock2034Value5 recoveredBlock2034Value6 recoveredBlock2034Value7 recoveredBlock2034Value8 recoveredBlock2034Value9 recoveredBlock2034Value10 |
    recoveredBlock2034Value0 := recoveredBlock2034Arg1.
    recoveredBlock2034Value1 := recoveredBlock2034Value0.
    recoveredBlock2034Value2 := XmATTACHFORM.
    (recoveredBlock2034Value1) topAttachment: (recoveredBlock2034Value2).
    recoveredBlock2034Value3 := recoveredBlock2034Value0.
    (recoveredBlock2034Value3) topOffset: (13).
    recoveredBlock2034Value4 := recoveredBlock2034Value0.
    recoveredBlock2034Value5 := XmATTACHFORM.
    (recoveredBlock2034Value4) leftAttachment: (recoveredBlock2034Value5).
    recoveredBlock2034Value6 := recoveredBlock2034Value0.
    recoveredBlock2034Value7 := XmATTACHWIDGET.
    (recoveredBlock2034Value6) rightAttachment: (recoveredBlock2034Value7).
    recoveredBlock2034Value8 := recoveredBlock2034Value0.
    recoveredBlock2034Value9 := recoveredLocal21.
    (recoveredBlock2034Value8) rightWidget: (recoveredBlock2034Value9).
    recoveredBlock2034Value10 := (recoveredBlock2034Value0) rightOffset: (5).
    recoveredBlock2034Value10
].
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack2 := [:recoveredBlock2096Arg1 | 
    | recoveredBlock2096Value0 recoveredBlock2096Value1 recoveredBlock2096Value2 recoveredBlock2096Value3 recoveredBlock2096Value4 recoveredBlock2096Value5 recoveredBlock2096Value6 recoveredBlock2096Value7 recoveredBlock2096Value8 recoveredBlock2096Value9 recoveredBlock2096Value10 recoveredBlock2096Value11 recoveredBlock2096Value12 |
    recoveredBlock2096Value0 := recoveredBlock2096Arg1.
    recoveredBlock2096Value1 := recoveredBlock2096Value0.
    recoveredBlock2096Value2 := XmATTACHWIDGET.
    (recoveredBlock2096Value1) topAttachment: (recoveredBlock2096Value2).
    recoveredBlock2096Value3 := recoveredBlock2096Value0.
    recoveredBlock2096Value4 := recoveredLocal3.
    (recoveredBlock2096Value3) topWidget: (recoveredBlock2096Value4).
    recoveredBlock2096Value5 := recoveredBlock2096Value0.
    (recoveredBlock2096Value5) topOffset: (19).
    recoveredBlock2096Value6 := recoveredBlock2096Value0.
    recoveredBlock2096Value7 := XmATTACHFORM.
    (recoveredBlock2096Value6) leftAttachment: (recoveredBlock2096Value7).
    recoveredBlock2096Value8 := recoveredBlock2096Value0.
    recoveredBlock2096Value9 := XmATTACHWIDGET.
    (recoveredBlock2096Value8) rightAttachment: (recoveredBlock2096Value9).
    recoveredBlock2096Value10 := recoveredBlock2096Value0.
    recoveredBlock2096Value11 := recoveredLocal5.
    (recoveredBlock2096Value10) rightWidget: (recoveredBlock2096Value11).
    recoveredBlock2096Value12 := (recoveredBlock2096Value0) rightOffset: (5).
    recoveredBlock2096Value12
].
            recoveredPC := 2158.
        ].
        recoveredStep = 2158 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2163.
        ].
        recoveredStep = 2163 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2166.
        ].
        recoveredStep = 2166 ifTrue: [
            recoveredStack2 := [:recoveredBlock2166Arg1 | 
    | recoveredBlock2166Value0 recoveredBlock2166Value1 recoveredBlock2166Value2 recoveredBlock2166Value3 recoveredBlock2166Value4 recoveredBlock2166Value5 recoveredBlock2166Value6 recoveredBlock2166Value7 recoveredBlock2166Value8 recoveredBlock2166Value9 recoveredBlock2166Value10 recoveredBlock2166Value11 |
    recoveredBlock2166Value0 := recoveredBlock2166Arg1.
    recoveredBlock2166Value1 := recoveredBlock2166Value0.
    recoveredBlock2166Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2166Value1) bottomAttachment: (recoveredBlock2166Value2).
    recoveredBlock2166Value3 := recoveredBlock2166Value0.
    recoveredBlock2166Value4 := recoveredLocal8.
    (recoveredBlock2166Value3) bottomWidget: (recoveredBlock2166Value4).
    recoveredBlock2166Value5 := recoveredBlock2166Value0.
    recoveredBlock2166Value6 := XmATTACHFORM.
    (recoveredBlock2166Value5) leftAttachment: (recoveredBlock2166Value6).
    recoveredBlock2166Value7 := recoveredBlock2166Value0.
    recoveredBlock2166Value8 := XmATTACHWIDGET.
    (recoveredBlock2166Value7) rightAttachment: (recoveredBlock2166Value8).
    recoveredBlock2166Value9 := recoveredBlock2166Value0.
    recoveredBlock2166Value10 := recoveredLocal8.
    (recoveredBlock2166Value9) rightWidget: (recoveredBlock2166Value10).
    recoveredBlock2166Value11 := (recoveredBlock2166Value0) rightOffset: (5).
    recoveredBlock2166Value11
].
            recoveredPC := 2222.
        ].
        recoveredStep = 2222 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2227.
        ].
        recoveredStep = 2227 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2230.
        ].
        recoveredStep = 2230 ifTrue: [
            recoveredStack2 := [:recoveredBlock2230Arg1 | 
    | recoveredBlock2230Value0 recoveredBlock2230Value1 recoveredBlock2230Value2 recoveredBlock2230Value3 recoveredBlock2230Value4 recoveredBlock2230Value5 recoveredBlock2230Value6 recoveredBlock2230Value7 recoveredBlock2230Value8 recoveredBlock2230Value9 recoveredBlock2230Value10 recoveredBlock2230Value11 |
    recoveredBlock2230Value0 := recoveredBlock2230Arg1.
    recoveredBlock2230Value1 := recoveredBlock2230Value0.
    recoveredBlock2230Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2230Value1) bottomAttachment: (recoveredBlock2230Value2).
    recoveredBlock2230Value3 := recoveredBlock2230Value0.
    recoveredBlock2230Value4 := recoveredLocal11.
    (recoveredBlock2230Value3) bottomWidget: (recoveredBlock2230Value4).
    recoveredBlock2230Value5 := recoveredBlock2230Value0.
    recoveredBlock2230Value6 := XmATTACHFORM.
    (recoveredBlock2230Value5) leftAttachment: (recoveredBlock2230Value6).
    recoveredBlock2230Value7 := recoveredBlock2230Value0.
    recoveredBlock2230Value8 := XmATTACHWIDGET.
    (recoveredBlock2230Value7) rightAttachment: (recoveredBlock2230Value8).
    recoveredBlock2230Value9 := recoveredBlock2230Value0.
    recoveredBlock2230Value10 := recoveredLocal11.
    (recoveredBlock2230Value9) rightWidget: (recoveredBlock2230Value10).
    recoveredBlock2230Value11 := (recoveredBlock2230Value0) rightOffset: (5).
    recoveredBlock2230Value11
].
            recoveredPC := 2286.
        ].
        recoveredStep = 2286 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2291.
        ].
        recoveredStep = 2291 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2294.
        ].
        recoveredStep = 2294 ifTrue: [
            recoveredStack2 := [:recoveredBlock2294Arg1 | 
    | recoveredBlock2294Value0 recoveredBlock2294Value1 recoveredBlock2294Value2 recoveredBlock2294Value3 recoveredBlock2294Value4 recoveredBlock2294Value5 recoveredBlock2294Value6 recoveredBlock2294Value7 recoveredBlock2294Value8 recoveredBlock2294Value9 recoveredBlock2294Value10 recoveredBlock2294Value11 |
    recoveredBlock2294Value0 := recoveredBlock2294Arg1.
    recoveredBlock2294Value1 := recoveredBlock2294Value0.
    recoveredBlock2294Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock2294Value1) bottomAttachment: (recoveredBlock2294Value2).
    recoveredBlock2294Value3 := recoveredBlock2294Value0.
    recoveredBlock2294Value4 := recoveredLocal18.
    (recoveredBlock2294Value3) bottomWidget: (recoveredBlock2294Value4).
    recoveredBlock2294Value5 := recoveredBlock2294Value0.
    recoveredBlock2294Value6 := XmATTACHFORM.
    (recoveredBlock2294Value5) leftAttachment: (recoveredBlock2294Value6).
    recoveredBlock2294Value7 := recoveredBlock2294Value0.
    recoveredBlock2294Value8 := XmATTACHWIDGET.
    (recoveredBlock2294Value7) rightAttachment: (recoveredBlock2294Value8).
    recoveredBlock2294Value9 := recoveredBlock2294Value0.
    recoveredBlock2294Value10 := recoveredLocal18.
    (recoveredBlock2294Value9) rightWidget: (recoveredBlock2294Value10).
    recoveredBlock2294Value11 := (recoveredBlock2294Value0) rightOffset: (5).
    recoveredBlock2294Value11
].
            recoveredPC := 2350.
        ].
        recoveredStep = 2350 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2355.
        ].
        recoveredStep = 2355 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2358.
        ].
        recoveredStep = 2358 ifTrue: [
            recoveredStack2 := [:block281321c0Arg1 | 
    | block281321c0Value0 block281321c0Value1 block281321c0Value2 block281321c0Value3 block281321c0Value4 |
    block281321c0Value0 := block281321c0Arg1.
    block281321c0Value1 := block281321c0Value0.
    block281321c0Value2 := XmATTACHFORM.
    (block281321c0Value1) bottomAttachment: (block281321c0Value2).
    block281321c0Value3 := XmATTACHFORM.
    block281321c0Value4 := (block281321c0Value0) topAttachment: (block281321c0Value3).
    block281321c0Value4
].
            recoveredPC := 2362.
        ].
        recoveredStep = 2362 ifTrue: [
            recoveredPC := 2386.
        ].
        recoveredStep = 2386 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2391.
        ].
        recoveredStep = 2391 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2394.
        ].
        recoveredStep = 2394 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2398.
        ].
        recoveredStep = 2398 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2399.
        ].
        recoveredStep = 2399 ifTrue: [
            recoveredStack4 := 'dataModeSingle:clientData:callData:'.
            recoveredPC := 2402.
        ].
        recoveredStep = 2402 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2403.
        ].
        recoveredStep = 2403 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2407.
        ].
        recoveredStep = 2407 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 2410.
        ].
        recoveredStep = 2410 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2414.
        ].
        recoveredStep = 2414 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2415.
        ].
        recoveredStep = 2415 ifTrue: [
            recoveredStack4 := 'dataFrequenceModify:clientData:callData:'.
            recoveredPC := 2418.
        ].
        recoveredStep = 2418 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2419.
        ].
        recoveredStep = 2419 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2423.
        ].
        recoveredStep = 2423 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2426.
        ].
        recoveredStep = 2426 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2430.
        ].
        recoveredStep = 2430 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2431.
        ].
        recoveredStep = 2431 ifTrue: [
            recoveredStack4 := 'dataOkActivate:clientData:callData:'.
            recoveredPC := 2434.
        ].
        recoveredStep = 2434 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2435.
        ].
        recoveredStep = 2435 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2439.
        ].
        recoveredStep = 2439 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 2442.
        ].
        recoveredStep = 2442 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2446.
        ].
        recoveredStep = 2446 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2447.
        ].
        recoveredStep = 2447 ifTrue: [
            recoveredStack4 := 'dataApplyActivate:clientData:callData:'.
            recoveredPC := 2450.
        ].
        recoveredStep = 2450 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2451.
        ].
        recoveredStep = 2451 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2455.
        ].
        recoveredStep = 2455 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2458.
        ].
        recoveredStep = 2458 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2462.
        ].
        recoveredStep = 2462 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2463.
        ].
        recoveredStep = 2463 ifTrue: [
            recoveredStack4 := 'dataCancelActivate:clientData:callData:'.
            recoveredPC := 2466.
        ].
        recoveredStep = 2466 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2467.
        ].
        recoveredStep = 2467 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2471.
        ].
        recoveredStep = 2471 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2474.
        ].
        recoveredStep = 2474 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2478.
        ].
        recoveredStep = 2478 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2479.
        ].
        recoveredStep = 2479 ifTrue: [
            recoveredStack4 := 'dataAmplitudeModify:clientData:callData:'.
            recoveredPC := 2482.
        ].
        recoveredStep = 2482 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2483.
        ].
        recoveredStep = 2483 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2487.
        ].
        recoveredStep = 2487 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2490.
        ].
        recoveredStep = 2490 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2494.
        ].
        recoveredStep = 2494 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2495.
        ].
        recoveredStep = 2495 ifTrue: [
            recoveredStack4 := 'dataOffsetModify:clientData:callData:'.
            recoveredPC := 2498.
        ].
        recoveredStep = 2498 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2499.
        ].
        recoveredStep = 2499 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2503.
        ].
        recoveredStep = 2503 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2506.
        ].
        recoveredStep = 2506 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2510.
        ].
        recoveredStep = 2510 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2511.
        ].
        recoveredStep = 2511 ifTrue: [
            recoveredStack4 := 'dataFrequenceModify:clientData:callData:'.
            recoveredPC := 2514.
        ].
        recoveredStep = 2514 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2515.
        ].
        recoveredStep = 2515 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2519.
        ].
        recoveredStep = 2519 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2522.
        ].
        recoveredStep = 2522 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2526.
        ].
        recoveredStep = 2526 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2527.
        ].
        recoveredStep = 2527 ifTrue: [
            recoveredStack4 := 'buttonTableActivate:clientData:callData:'.
            recoveredPC := 2530.
        ].
        recoveredStep = 2530 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2531.
        ].
        recoveredStep = 2531 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2535.
        ].
        recoveredStep = 2535 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2538.
        ].
        recoveredStep = 2538 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 2542.
        ].
        recoveredStep = 2542 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2543.
        ].
        recoveredStep = 2543 ifTrue: [
            recoveredStack4 := 'dataStimulusSingle:clientData:callData:'.
            recoveredPC := 2546.
        ].
        recoveredStep = 2546 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2547.
        ].
        recoveredStep = 2547 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2551.
        ].
        recoveredStep = 2551 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2554.
        ].
        recoveredStep = 2554 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2558.
        ].
        recoveredStep = 2558 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2559.
        ].
        recoveredStep = 2559 ifTrue: [
            recoveredStack4 := 'dataTimeScaleModify:clientData:callData:'.
            recoveredPC := 2562.
        ].
        recoveredStep = 2562 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2563.
        ].
        recoveredStep = 2563 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2567.
        ].
        recoveredStep = 2567 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2570.
        ].
        recoveredStep = 2570 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2574.
        ].
        recoveredStep = 2574 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2575.
        ].
        recoveredStep = 2575 ifTrue: [
            recoveredStack4 := 'dataTimeScaleValue:clientData:callData:'.
            recoveredPC := 2578.
        ].
        recoveredStep = 2578 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2579.
        ].
        recoveredStep = 2579 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2583.
        ].
        recoveredStep = 2583 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2586.
        ].
        recoveredStep = 2586 ifTrue: [
            recoveredStack2 := recoveredLocal27.
            recoveredPC := 2589.
        ].
        recoveredStep = 2589 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 2592.
        ].
        recoveredStep = 2592 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2597.
        ].
        recoveredStep = 2597 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

