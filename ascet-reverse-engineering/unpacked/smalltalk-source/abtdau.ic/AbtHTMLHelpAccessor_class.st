"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000140; bytecode file offset 0xf4f8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
newsreaderPath
    | recoveredValue0 |
    recoveredValue0 := NewsreaderPath.
    ^recoveredValue0
! !

"abtdau.ic method 0x2000014c; bytecode file offset 0xf4f8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
browserPath
    | recoveredValue0 |
    recoveredValue0 := BrowserPath.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000440; bytecode file offset 0xf7f8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
newsreaderPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    NewsreaderPath := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000458; bytecode file offset 0xf7f8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
browserPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BrowserPath := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000488; bytecode file offset 0xf7f8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
hostname: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Hostname := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x2000054c; bytecode file offset 0xf8bc"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
zippedWeb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ZippedWeb.
    recoveredValue1 := (recoveredValue0) ~~ (false).
    ^recoveredValue1
! !

"abtdau.ic method 0x200016d4; bytecode file offset 0x10a48"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
hostname
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Hostname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'localhost:49213'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            Hostname := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Hostname.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200018d0; bytecode file offset 0x10c54"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
validateHelpFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := FileStream.
    recoveredValue1 := AbtHTMLHelpMapping.
    recoveredValue2 := (recoveredValue1) helpRootDirectory.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue0) stat: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) isCfsError.
    recoveredValue7 := (recoveredValue6) not.
    ^recoveredValue7
! !

"abtdau.ic method 0x20001a64; bytecode file offset 0x10ddc"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
zippedweb: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := '1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ZippedWeb := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x2000382c; bytecode file offset 0x12bf0"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
newsFromURL: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) accessors.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) new.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) initializeForNewsreading.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isAbtError.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 37].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) errorText.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) warnCannotInitializeHelp: (recoveredBlock7Stack1).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) accessors.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := 'news'.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) at: (recoveredBlock7Stack1) put: (recoveredBlock7Stack2).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) at: ('news') ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) displayURL: (recoveredValue4).
    ^recoveredValue5
! !

"abtdau.ic method 0x2000385c; bytecode file offset 0x12bf0"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
helpFromURL: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) accessors.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) new.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) initializeForBrowsing.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isAbtError.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 37].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) errorText.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) warnCannotInitializeHelp: (recoveredBlock7Stack1).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) accessors.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := 'file'.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) at: (recoveredBlock7Stack1) put: (recoveredBlock7Stack2).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) at: ('file') ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) displayURL: (recoveredValue4).
    ^recoveredValue5
! !

"abtdau.ic method 0x200044c4; bytecode file offset 0x138e8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
helpForContents: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtHTMLHelpFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'file'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) new.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) initializeForBrowsing.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack0.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack0 := recoveredLocal2.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) isAbtError.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 50] ifFalse: [recoveredBlock28PC := 59].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) errorText.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) warnCannotInitializeHelp: (recoveredBlock28Stack1).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            ^recoveredBlock28Stack0
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) accessors.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := 'file'.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) at: (recoveredBlock28Stack1) put: (recoveredBlock28Stack2).
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'helpcontent'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004504; bytecode file offset 0x138e8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
helpForHelp: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtHTMLHelpFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'file'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) new.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) initializeForBrowsing.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack0.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack0 := recoveredLocal2.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) isAbtError.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 50] ifFalse: [recoveredBlock28PC := 59].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) errorText.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) warnCannotInitializeHelp: (recoveredBlock28Stack1).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            ^recoveredBlock28Stack0
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) accessors.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := 'file'.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) at: (recoveredBlock28Stack1) put: (recoveredBlock28Stack2).
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'usingHelp'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004544; bytecode file offset 0x138e8"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
helpForIndex: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtHTMLHelpFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'file'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) new.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) initializeForBrowsing.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack0.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack0 := recoveredLocal2.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) isAbtError.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 50] ifFalse: [recoveredBlock28PC := 59].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) errorText.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) warnCannotInitializeHelp: (recoveredBlock28Stack1).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            ^recoveredBlock28Stack0
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) accessors.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := 'file'.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) at: (recoveredBlock28Stack1) put: (recoveredBlock28Stack2).
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'helpindex'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004e2c; bytecode file offset 0x141d4"
!AbtHTMLHelpAccessor class methodsFor: 'recovered'!
helpFor: recoveredArg1 helpFile: recoveredArg2 topic: recoveredArg3 title: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtHTMLHelpFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'file'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) new.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) initializeForBrowsing.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack0.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack0 := recoveredLocal2.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) isAbtError.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack0) ifTrue: [recoveredBlock28PC := 50] ifFalse: [recoveredBlock28PC := 59].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) errorText.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) warnCannotInitializeHelp: (recoveredBlock28Stack1).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            ^recoveredBlock28Stack0
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) accessors.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := 'file'.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) at: (recoveredBlock28Stack1) put: (recoveredBlock28Stack2).
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

