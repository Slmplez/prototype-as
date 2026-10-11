"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019bf8; bytecode file offset 0x92209c"
!ASDPersistenceController class methodsFor: 'recovered'!
productKey
    ^'product'
! !

"ASDBase.ic method 0x2001daf8; bytecode file offset 0x92209c"
!ASDPersistenceController class methodsFor: 'recovered'!
product
    ^'ASD2001'
! !

"ASDBase.ic method 0x2002297c; bytecode file offset 0x92209c"
!ASDPersistenceController class methodsFor: 'recovered'!
versionKey
    ^'version'
! !

"ASDBase.ic method 0x20025550; bytecode file offset 0x92209c"
!ASDPersistenceController class methodsFor: 'recovered'!
currentDBVersion
    ^#[59 223 79 141 151 110 2 64]
! !

"ASDBase.ic method 0x201ae9b4; bytecode file offset 0xaab27c"
!ASDPersistenceController class methodsFor: 'recovered'!
removeInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := theInstance.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    (recoveredBlock6Value0) internalCleanUpInstance.
    recoveredBlock6Value1 := (self) setDBInterfaceGlobal: (nil).
    recoveredBlock6Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    super removeInstance.
    ^self
! !

"ASDBase.ic method 0x2055cf34; bytecode file offset 0xe598a4"
!ASDPersistenceController class methodsFor: 'recovered'!
ascetVersionFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := '5.2.0.0'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := '5.2.2.99'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'V5.2.x'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '6.0.0.0'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := '6.0.2.99'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'V6.0.x'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := '6.1.0.0'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := '6.1.4.99'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'V6.1.x'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := '6.2.0.0'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := '6.2.1.99'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'V6.2.x'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := '6.3.0.0'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := '6.3.0.99'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'V6.3.x'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := '6.4.0.0'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := '6.4.0.99'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) asEtasVersion.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'V6.4.x'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := #[205 204 204 204 204 204 244 63].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := #[246 40 92 143 194 245 244 63].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'V4.2.0'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := #[31 133 235 81 184 30 245 63].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := #[154 153 153 153 153 153 249 63].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'V4.2.x'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := #[195 245 40 92 143 194 249 63].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := #[51 51 51 51 51 51 251 63].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'V5.0.x'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := #[92 143 194 245 40 92 251 63].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := #[205 204 204 204 204 204 252 63].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 'V6.0.x'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := #[246 40 92 143 194 245 252 63].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := #[102 102 102 102 102 102 254 63].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'V6.1.x'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := #[143 194 245 40 92 143 254 63].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := #[205 204 204 204 204 204 0 64].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 'V6.2.0'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := #[2 43 135 22 217 206 0 64].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := #[109 231 251 169 241 210 0 64].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'V6.2.1'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := #[154 153 153 153 153 153 1 64].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := #[207 247 83 227 165 155 1 64].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := 'V6.3.0'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := #[102 102 102 102 102 102 2 64].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentDBVersion.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'V6.4.0'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 'Unknown'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ba48c; bytecode file offset 0xeb6dac"
!ASDPersistenceController class methodsFor: 'recovered'!
resolveItems: recoveredArg1 forChangingFlexibleClassLayoutRecursiveFlag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ASDDBProxyWrapperWithPath.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelSortBlock.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) isFolder.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 42] ifFalse: [recoveredBlock30PC := 52].
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal4.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) isContainer.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 58] ifFalse: [recoveredBlock30PC := 68].
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack2 := ASDDBProxyWrapperWithPath.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) createForItem: (recoveredBlock30Stack3).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 |
    recoveredBlock93Value0 := recoveredLocal4.
    recoveredBlock93Value1 := recoveredBlock93Arg1.
    recoveredBlock93Value2 := (recoveredBlock93Value1) allFolderChildrenRecursive.
    recoveredBlock93Value3 := (recoveredBlock93Value0) addAll: (recoveredBlock93Value2).
    recoveredBlock93Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := recoveredLocal2.
    recoveredBlock116Value1 := recoveredBlock116Arg1.
    recoveredBlock116Value2 := (recoveredBlock116Value1) allContainerChildrenRecursive.
    recoveredBlock116Value3 := (recoveredBlock116Value0) addAll: (recoveredBlock116Value2).
    recoveredBlock116Value3
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := [:recoveredBlock138Arg1 | 
    | recoveredBlock138Local1 recoveredBlock138Stack0 recoveredBlock138Stack1 recoveredBlock138Stack2 recoveredBlock138Stack3 recoveredBlock138PC recoveredBlock138Step recoveredBlock138Done recoveredBlock138Result |
    recoveredBlock138Stack0 := self.
    recoveredBlock138PC := 144.
    recoveredBlock138Done := false.
    [recoveredBlock138Done not] whileTrue: [
        recoveredBlock138Step := recoveredBlock138PC.
        recoveredBlock138Step = 144 ifTrue: [
            recoveredBlock138Stack1 := recoveredBlock138Arg1.
            recoveredBlock138PC := 145.
        ].
        recoveredBlock138Step = 145 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) dbProxy.
            recoveredBlock138PC := 147.
        ].
        recoveredBlock138Step = 147 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) getObject.
            recoveredBlock138PC := 149.
        ].
        recoveredBlock138Step = 149 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) allReferencedNonPrimitiveItemsRecursive.
            recoveredBlock138PC := 151.
        ].
        recoveredBlock138Step = 151 ifTrue: [
            recoveredBlock138Local1 := recoveredBlock138Stack1.
            recoveredBlock138PC := 152.
        ].
        recoveredBlock138Step = 152 ifTrue: [
            recoveredBlock138Stack1 := recoveredLocal3.
            recoveredBlock138PC := 155.
        ].
        recoveredBlock138Step = 155 ifTrue: [
            recoveredBlock138Stack2 := [:block281175f8Arg1 | 
    | block281175f8Value0 block281175f8Value1 block281175f8Value2 |
    block281175f8Value0 := block281175f8Arg1.
    block281175f8Value1 := (block281175f8Value0) dbProxy.
    block281175f8Value2 := (block281175f8Value1) globalId.
    block281175f8Value2
].
            recoveredBlock138PC := 157.
        ].
        recoveredBlock138Step = 157 ifTrue: [
            recoveredBlock138PC := 166.
        ].
        recoveredBlock138Step = 166 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) collect: (recoveredBlock138Stack2).
            recoveredBlock138PC := 168.
        ].
        recoveredBlock138Step = 168 ifTrue: [
            recoveredLocal1 := recoveredBlock138Stack1.
            recoveredBlock138PC := 171.
        ].
        recoveredBlock138Step = 171 ifTrue: [
            recoveredBlock138Stack1 := recoveredBlock138Local1.
            recoveredBlock138PC := 172.
        ].
        recoveredBlock138Step = 172 ifTrue: [
            recoveredBlock138Stack2 := [:recoveredBlock138Block172Arg1 | 
    | recoveredBlock138Block172Stack0 recoveredBlock138Block172Stack1 recoveredBlock138Block172Stack2 recoveredBlock138Block172Stack3 recoveredBlock138Block172Stack4 recoveredBlock138Block172PC recoveredBlock138Block172Step recoveredBlock138Block172Done recoveredBlock138Block172Result |
    recoveredBlock138Block172Stack0 := nil.
    recoveredBlock138Block172PC := 178.
    recoveredBlock138Block172Done := false.
    [recoveredBlock138Block172Done not] whileTrue: [
        recoveredBlock138Block172Step := recoveredBlock138Block172PC.
        recoveredBlock138Block172Step = 178 ifTrue: [
            recoveredBlock138Block172Stack1 := nil.
            recoveredBlock138Block172PC := 179.
        ].
        recoveredBlock138Block172Step = 179 ifTrue: [
            recoveredBlock138Block172Stack2 := recoveredLocal1.
            recoveredBlock138Block172PC := 182.
        ].
        recoveredBlock138Block172Step = 182 ifTrue: [
            recoveredBlock138Block172Stack3 := recoveredBlock138Block172Arg1.
            recoveredBlock138Block172PC := 183.
        ].
        recoveredBlock138Block172Step = 183 ifTrue: [
            recoveredBlock138Block172Stack3 := (recoveredBlock138Block172Stack3) dbObject.
            recoveredBlock138Block172PC := 185.
        ].
        recoveredBlock138Block172Step = 185 ifTrue: [
            recoveredBlock138Block172Stack3 := (recoveredBlock138Block172Stack3) globalId.
            recoveredBlock138Block172PC := 187.
        ].
        recoveredBlock138Block172Step = 187 ifTrue: [
            recoveredBlock138Block172Stack2 := (recoveredBlock138Block172Stack2) includes: (recoveredBlock138Block172Stack3).
            recoveredBlock138Block172PC := 189.
        ].
        recoveredBlock138Block172Step = 189 ifTrue: [
            (recoveredBlock138Block172Stack2) ifTrue: [recoveredBlock138Block172PC := 203] ifFalse: [recoveredBlock138Block172PC := 192].
        ].
        recoveredBlock138Block172Step = 192 ifTrue: [
            recoveredBlock138Block172PC := 193.
        ].
        recoveredBlock138Block172Step = 193 ifTrue: [
            recoveredBlock138Block172Stack1 := recoveredLocal3.
            recoveredBlock138Block172PC := 196.
        ].
        recoveredBlock138Block172Step = 196 ifTrue: [
            recoveredBlock138Block172Stack2 := ASDDBProxyWrapperWithPath.
            recoveredBlock138Block172PC := 198.
        ].
        recoveredBlock138Block172Step = 198 ifTrue: [
            recoveredBlock138Block172Stack3 := recoveredBlock138Block172Arg1.
            recoveredBlock138Block172PC := 199.
        ].
        recoveredBlock138Block172Step = 199 ifTrue: [
            recoveredBlock138Block172Stack2 := (recoveredBlock138Block172Stack2) createForItem: (recoveredBlock138Block172Stack3).
            recoveredBlock138Block172PC := 201.
        ].
        recoveredBlock138Block172Step = 201 ifTrue: [
            recoveredBlock138Block172Stack1 := (recoveredBlock138Block172Stack1) add: (recoveredBlock138Block172Stack2).
            recoveredBlock138Block172PC := 203.
        ].
        recoveredBlock138Block172Step = 203 ifTrue: [
            recoveredBlock138Block172Result := recoveredBlock138Block172Stack1.
            recoveredBlock138Block172Done := true.
        ].
    ].
    recoveredBlock138Block172Result
].
            recoveredBlock138PC := 204.
        ].
        recoveredBlock138Step = 204 ifTrue: [
            recoveredBlock138Stack1 := (recoveredBlock138Stack1) do: (recoveredBlock138Stack2).
            recoveredBlock138PC := 206.
        ].
        recoveredBlock138Step = 206 ifTrue: [
            recoveredBlock138Result := recoveredBlock138Stack1.
            recoveredBlock138Done := true.
        ].
    ].
    recoveredBlock138Result
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Local1 recoveredBlock212Local2 recoveredBlock212Value0 recoveredBlock212Value1 recoveredBlock212Value2 recoveredBlock212Value3 recoveredBlock212Value4 recoveredBlock212Value5 recoveredBlock212Value6 recoveredBlock212Value7 recoveredBlock212Value8 |
    recoveredBlock212Value0 := recoveredBlock212Arg1.
    recoveredBlock212Value1 := (recoveredBlock212Value0) pathName.
    recoveredBlock212Local2 := recoveredBlock212Value1.
    recoveredBlock212Value2 := recoveredBlock212Arg1.
    recoveredBlock212Value3 := (recoveredBlock212Value2) allNotFolderChildrenKeysOnlyInPath.
    recoveredBlock212Local1 := recoveredBlock212Value3.
    recoveredBlock212Value4 := recoveredLocal3.
    recoveredBlock212Value5 := recoveredBlock212Local1.
    recoveredBlock212Value6 := [:recoveredBlock212Block240Arg1 | 
    | recoveredBlock212Block240Value0 recoveredBlock212Block240Value1 recoveredBlock212Block240Value2 recoveredBlock212Block240Value3 |
    recoveredBlock212Block240Value0 := ASDDBProxyWrapperWithPath.
    recoveredBlock212Block240Value1 := recoveredBlock212Block240Arg1.
    recoveredBlock212Block240Value2 := recoveredBlock212Local2.
    recoveredBlock212Block240Value3 := (recoveredBlock212Block240Value0) createForDBProxy: (recoveredBlock212Block240Value1) withPath: (recoveredBlock212Block240Value2).
    recoveredBlock212Block240Value3
].
    recoveredBlock212Value7 := (recoveredBlock212Value5) collect: (recoveredBlock212Value6).
    recoveredBlock212Value8 := (recoveredBlock212Value4) addAll: (recoveredBlock212Value7).
    recoveredBlock212Value8
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := [:recoveredBlock265Arg1 | 
    | recoveredBlock265Local1 recoveredBlock265Local2 recoveredBlock265Value0 recoveredBlock265Value1 recoveredBlock265Value2 recoveredBlock265Value3 recoveredBlock265Value4 recoveredBlock265Value5 recoveredBlock265Value6 recoveredBlock265Value7 recoveredBlock265Value8 |
    recoveredBlock265Value0 := recoveredBlock265Arg1.
    recoveredBlock265Value1 := (recoveredBlock265Value0) pathName.
    recoveredBlock265Local2 := recoveredBlock265Value1.
    recoveredBlock265Value2 := recoveredBlock265Arg1.
    recoveredBlock265Value3 := (recoveredBlock265Value2) allNotContainerChildrenKeysOnlyInPath.
    recoveredBlock265Local1 := recoveredBlock265Value3.
    recoveredBlock265Value4 := recoveredLocal3.
    recoveredBlock265Value5 := recoveredBlock265Local1.
    recoveredBlock265Value6 := [:recoveredBlock265Block294Arg1 | 
    | recoveredBlock265Block294Value0 recoveredBlock265Block294Value1 recoveredBlock265Block294Value2 recoveredBlock265Block294Value3 |
    recoveredBlock265Block294Value0 := ASDDBProxyWrapperWithPath.
    recoveredBlock265Block294Value1 := recoveredBlock265Block294Arg1.
    recoveredBlock265Block294Value2 := recoveredBlock265Local2.
    recoveredBlock265Block294Value3 := (recoveredBlock265Block294Value0) createForDBProxy: (recoveredBlock265Block294Value1) withPath: (recoveredBlock265Block294Value2).
    recoveredBlock265Block294Value3
].
    recoveredBlock265Value7 := (recoveredBlock265Value5) collect: (recoveredBlock265Value6).
    recoveredBlock265Value8 := (recoveredBlock265Value4) addAll: (recoveredBlock265Value7).
    recoveredBlock265Value8
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

