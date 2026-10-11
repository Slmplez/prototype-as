"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048d44; bytecode file offset 0x945728"
!SGESDLCodeWindow class methodsFor: 'recovered'!
reset
    SystemSyntaxColors := nil.
    ^self
! !

"ASDBase.ic method 0x2008c43c; bytecode file offset 0x989498"
!SGESDLCodeWindow class methodsFor: 'recovered'!
refreshColorScheme
    (self) currentColorScheme: ('Default').
    ^self
! !

"ASDBase.ic method 0x201051bc; bytecode file offset 0xa01b38"
!SGESDLCodeWindow class methodsFor: 'recovered'!
systemSyntaxColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SystemSyntaxColors.
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
            (recoveredStack1) initializeSyntaxColors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SystemSyntaxColors.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201284c4; bytecode file offset 0xa24eb0"
!SGESDLCodeWindow class methodsFor: 'recovered'!
syntaxColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SyntaxColors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            SyntaxColors := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SyntaxColors.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037d578; bytecode file offset 0xc79e64"
!SGESDLCodeWindow class methodsFor: 'recovered'!
currentColorScheme: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGColorText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsColor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) syntaxColors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := (self) systemSyntaxColors.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := [
    | recoveredBlock16Block26Value0 recoveredBlock16Block26Value1 |
    recoveredBlock16Block26Value0 := (self) systemSyntaxColors.
    recoveredBlock16Block26Value1 := (recoveredBlock16Block26Value0) at: ('Default').
    recoveredBlock16Block26Value1
].
    recoveredBlock16Value3 := (recoveredBlock16Value0) at: (recoveredBlock16Value1) ifAbsent: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block280f27fcArg1 :block280f27fcArg2 | 
    | block280f27fcStack0 block280f27fcStack1 block280f27fcStack2 block280f27fcStack3 block280f27fcStack4 block280f27fcStack5 block280f27fcPC block280f27fcStep block280f27fcDone block280f27fcResult |
    block280f27fcStack0 := self.
    block280f27fcPC := 4.
    block280f27fcDone := false.
    [block280f27fcDone not] whileTrue: [
        block280f27fcStep := block280f27fcPC.
        block280f27fcStep = 4 ifTrue: [
            block280f27fcStack1 := EsdlSyntaxColors.
            block280f27fcPC := 6.
        ].
        block280f27fcStep = 6 ifTrue: [
            block280f27fcStack2 := block280f27fcArg1.
            block280f27fcPC := 7.
        ].
        block280f27fcStep = 7 ifTrue: [
            block280f27fcStack3 := block280f27fcArg2.
            block280f27fcPC := 8.
        ].
        block280f27fcStep = 8 ifTrue: [
            block280f27fcStack4 := [:block280f2820Arg1 | 
    | block280f2820Value0 block280f2820Value1 |
    block280f2820Value0 := block280f2820Arg1.
    block280f2820Value1 := (block280f2820Value0) asOSRGB.
    block280f2820Value1
].
            block280f27fcPC := 10.
        ].
        block280f27fcStep = 10 ifTrue: [
            block280f27fcPC := 18.
        ].
        block280f27fcStep = 18 ifTrue: [
            block280f27fcStack3 := (block280f27fcStack3) ifNotNil: (block280f27fcStack4).
            block280f27fcPC := 20.
        ].
        block280f27fcStep = 20 ifTrue: [
            block280f27fcStack1 := (block280f27fcStack1) at: (block280f27fcStack2) put: (block280f27fcStack3).
            block280f27fcPC := 22.
        ].
        block280f27fcStep = 22 ifTrue: [
            block280f27fcResult := block280f27fcStack1.
            block280f27fcDone := true.
        ].
    ].
    block280f27fcResult
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20584a8c; bytecode file offset 0xe813ac"
!SGESDLCodeWindow class methodsFor: 'recovered'!
initializeSyntaxColors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SystemSyntaxColors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            SystemSyntaxColors := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := 'ArgumentNodeColor'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := 'ArrayLiteralNodeColor'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := 32639.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := 'BackgroundColorNodeColor'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) white.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := 'CommentNodeColor'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack7 := 32767.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack8 := 32767.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack9 := 32767.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := 'ErrorNodeColor'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack7 := 65535.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := 'ForegroundColorNodeColor'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := 'GlobalNodeColor'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack9 := 65535.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := 'InstVarNodeColor'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack7 := 32639.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := 'BraceNodeColor'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := 'NumberLiteralNodeColor'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack7 := 32639.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := 'ParenthesisNodeColor'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack5 := 'SelfNodeColor'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack7 := 32639.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack9 := 32639.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := 'StringLiteralNodeColor'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := 'SymbolLiteralNodeColor'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack7 := 32767.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack8 := 32767.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := 'TemporaryNodeColor'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack5 := 'TypeNodeColor'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack9 := 32639.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack6 := (recoveredStack6) red: (recoveredStack7) green: (recoveredStack8) blue: (recoveredStack9).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

