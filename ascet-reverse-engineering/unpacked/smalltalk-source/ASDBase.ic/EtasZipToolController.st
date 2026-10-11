"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069388; bytecode file offset 0x966bdc"
!EtasZipToolController methodsFor: 'recovered'!
zipRootPath
    | recoveredValue0 |
    recoveredValue0 := zipRootPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200745ac; bytecode file offset 0x970e78"
!EtasZipToolController methodsFor: 'recovered'!
defaultCompressionLevel
    ^9
! !

"ASDBase.ic method 0x20077214; bytecode file offset 0x9757c8"
!EtasZipToolController methodsFor: 'recovered'!
defaultForce
    ^true
! !

"ASDBase.ic method 0x2007975c; bytecode file offset 0x97c330"
!EtasZipToolController methodsFor: 'recovered'!
defaultShowWindow
    ^false
! !

"ASDBase.ic method 0x200be43c; bytecode file offset 0x9bb178"
!EtasZipToolController methodsFor: 'recovered'!
compressionLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compressionLevel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec08; bytecode file offset 0x9bc0b4"
!EtasZipToolController methodsFor: 'recovered'!
showWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showWindow := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0584; bytecode file offset 0x9bd228"
!EtasZipToolController methodsFor: 'recovered'!
force: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    force := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1458; bytecode file offset 0x9bdf14"
!EtasZipToolController methodsFor: 'recovered'!
zipRootPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    zipRootPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20140e20; bytecode file offset 0xa3d6dc"
!EtasZipToolController methodsFor: 'recovered'!
compressionLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := compressionLevel.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultCompressionLevel.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := compressionLevel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20140e44; bytecode file offset 0xa3d700"
!EtasZipToolController methodsFor: 'recovered'!
showWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := showWindow.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultShowWindow.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := showWindow.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20140ec0; bytecode file offset 0xa3d78c"
!EtasZipToolController methodsFor: 'recovered'!
force
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := force.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultForce.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := force.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20184810; bytecode file offset 0xa810e0"
!EtasZipToolController methodsFor: 'recovered'!
getArchiveComment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) unzipToolPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (' -q -z "') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    recoveredValue5 := (self) showWindow.
    recoveredValue6 := (self) run: (recoveredValue1) arguments: (recoveredValue4) workingDirectory: (nil) show: (recoveredValue5) withInput: (nil).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20187660; bytecode file offset 0xa83f30"
!EtasZipToolController methodsFor: 'recovered'!
setArchiveComment: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) zipToolPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (' -q -z "') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    recoveredValue5 := (self) showWindow.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) run: (recoveredValue1) arguments: (recoveredValue4) workingDirectory: (nil) show: (recoveredValue5) withInput: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201b50f0; bytecode file offset 0xab19c4"
!EtasZipToolController methodsFor: 'recovered'!
logMessage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) loggingEnabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'ZipController: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addInfoText: (recoveredStack1).
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

"ASDBase.ic method 0x201f9298; bytecode file offset 0xaf5b60"
!EtasZipToolController methodsFor: 'recovered'!
optionForceUnzip
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) force.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) force.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultForce.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := '-o '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237da8; bytecode file offset 0xb34678"
!EtasZipToolController methodsFor: 'recovered'!
splitUnzipResultLine: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) skipSeparators.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'creating'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) skipSeparators.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEnd.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanksAtEnd.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202de6b0; bytecode file offset 0xbdaf90"
!EtasZipToolController methodsFor: 'recovered'!
zipDirectoryRecursive: recoveredArg1 into: recoveredArg2 delete: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ' -m '.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) zipToolPath.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' -r -q '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCompressionLevel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := '" .'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) showWindow.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) run: (recoveredStack1) arguments: (recoveredStack2) workingDirectory: (recoveredStack3) show: (recoveredStack4) withInput: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ea99c; bytecode file offset 0xbe726c"
!EtasZipToolController methodsFor: 'recovered'!
optionCompressionLevel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressionLevel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressionLevel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressionLevel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 9.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultCompressionLevel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) compressionLevel.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7ac4; bytecode file offset 0xbf43a0"
!EtasZipToolController methodsFor: 'recovered'!
buildTempDir
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) zipRootPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ASCET_Zip'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTempDirWithPrefix: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) zipRootPath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTempDirIn: (recoveredStack1) withPrefix: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := ETASError.
    recoveredBlock34Value1 := (recoveredBlock34Value0) createDebugMonitor: ('Cannot create temporary directory ').
    ^recoveredBlock34Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031d95c; bytecode file offset 0xc1a230"
!EtasZipToolController methodsFor: 'recovered'!
cleanUp: recoveredArg1 process: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70198'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) zipRootPath.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 53] ifFalse: [recoveredBlock22PC := 36].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := CfsDirectoryDescriptor.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) deletePathRecursiveNoWait: (recoveredBlock22Stack3).
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isError.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 53] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            ^recoveredBlock22Stack1
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d43d4; bytecode file offset 0xcd0cc8"
!EtasZipToolController methodsFor: 'recovered'!
listArchiveContents: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) unzipToolPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ' -ll "'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) showWindow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) run: (recoveredStack1) arguments: (recoveredStack2) workingDirectory: (recoveredStack3) show: (recoveredStack4) withInput: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) nextLine.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) nextLine.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitArchiveContentsLine: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextLine.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fee50; bytecode file offset 0xcfb748"
!EtasZipToolController methodsFor: 'recovered'!
zip: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: (' -q ').
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := (self) optionCompressionLevel.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := ('"') , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('"').
    (recoveredValue4) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Value0.
    (recoveredBlock43Value1) space.
    recoveredBlock43Value2 := recoveredBlock43Value0.
    (recoveredBlock43Value2) nextPut: ($").
    recoveredBlock43Value3 := recoveredBlock43Value0.
    recoveredBlock43Value4 := recoveredBlock43Arg1.
    (recoveredBlock43Value3) nextPutAll: (recoveredBlock43Value4).
    recoveredBlock43Value5 := (recoveredBlock43Value0) nextPut: ($").
    recoveredBlock43Value5
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := (self) class.
    recoveredValue14 := (recoveredValue13) zipToolPath.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    recoveredValue17 := (self) showWindow.
    recoveredValue18 := (self) run: (recoveredValue14) arguments: (recoveredValue16) workingDirectory: (nil) show: (recoveredValue17) withInput: (nil).
    ^recoveredValue18
! !

"ASDBase.ic method 0x204088e0; bytecode file offset 0xd051d8"
!EtasZipToolController methodsFor: 'recovered'!
zip: recoveredArg1 from: recoveredArg2 into: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: (' -q ').
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := (self) optionCompressionLevel.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := ('"') , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('"').
    (recoveredValue4) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Value0.
    (recoveredBlock43Value1) space.
    recoveredBlock43Value2 := recoveredBlock43Value0.
    (recoveredBlock43Value2) nextPut: ($").
    recoveredBlock43Value3 := recoveredBlock43Value0.
    recoveredBlock43Value4 := recoveredBlock43Arg1.
    (recoveredBlock43Value3) nextPutAll: (recoveredBlock43Value4).
    recoveredBlock43Value5 := (recoveredBlock43Value0) nextPut: ($").
    recoveredBlock43Value5
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := (self) class.
    recoveredValue14 := (recoveredValue13) zipToolPath.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (self) showWindow.
    recoveredValue19 := (self) run: (recoveredValue14) arguments: (recoveredValue16) workingDirectory: (recoveredValue17) show: (recoveredValue18) withInput: (nil).
    ^recoveredValue19
! !

"ASDBase.ic method 0x2040898c; bytecode file offset 0xd05284"
!EtasZipToolController methodsFor: 'recovered'!
unzip: recoveredArg1 from: recoveredArg2 into: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: (' -x -q ').
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := (self) optionForceUnzip.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := ('"') , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('"').
    (recoveredValue4) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Value0.
    (recoveredBlock43Value1) space.
    recoveredBlock43Value2 := recoveredBlock43Value0.
    (recoveredBlock43Value2) nextPut: ($").
    recoveredBlock43Value3 := recoveredBlock43Value0.
    recoveredBlock43Value4 := recoveredBlock43Arg1.
    (recoveredBlock43Value3) nextPutAll: (recoveredBlock43Value4).
    recoveredBlock43Value5 := (recoveredBlock43Value0) nextPut: ($").
    recoveredBlock43Value5
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := (self) class.
    recoveredValue14 := (recoveredValue13) unzipToolPath.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    recoveredValue17 := recoveredArg3.
    recoveredValue18 := (self) showWindow.
    recoveredValue19 := (self) run: (recoveredValue14) arguments: (recoveredValue16) workingDirectory: (recoveredValue17) show: (recoveredValue18) withInput: (nil).
    ^recoveredValue19
! !

"ASDBase.ic method 0x2044f2e8; bytecode file offset 0xd4bbdc"
!EtasZipToolController methodsFor: 'recovered'!
splitArchiveContentsLine: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := EtasZipArchiveEntry.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ReadStream.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue5) skipSeparators.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) upTo: ($ ).
    recoveredValue9 := (recoveredValue8) asInteger.
    (recoveredValue6) originalSize: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    (recoveredValue10) skipSeparators.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) upTo: ($ ).
    (recoveredValue11) method: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) skipSeparators.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) upTo: ($ ).
    recoveredValue18 := (recoveredValue17) asInteger.
    (recoveredValue15) zippedSize: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) skipSeparators.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) upTo: ($ ).
    (recoveredValue20) ratio: (recoveredValue22).
    recoveredValue23 := recoveredLocal2.
    (recoveredValue23) skipSeparators.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (recoveredValue25) upTo: ($ ).
    (recoveredValue24) date: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) skipSeparators.
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue29) upTo: ($ ).
    (recoveredValue28) time: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) skipSeparators.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := (recoveredValue33) upTo: ($ ).
    (recoveredValue32) crc32: (recoveredValue34).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) skipSeparators.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := recoveredLocal2.
    recoveredValue38 := (recoveredValue37) upToEnd.
    (recoveredValue36) name: (recoveredValue38).
    recoveredValue39 := recoveredLocal1.
    ^recoveredValue39
! !

"ASDBase.ic method 0x204a62c8; bytecode file offset 0xda2bd0"
!EtasZipToolController methodsFor: 'recovered'!
unzipAllFrom: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) unzipToolPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ' -x "'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) showWindow.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) run: (recoveredStack1) arguments: (recoveredStack2) workingDirectory: (recoveredStack3) show: (recoveredStack4) withInput: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) nextLine.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSeparatorString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitUnzipResultLine: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76Stack5 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 84.
        ].
        recoveredBlock76Step = 84 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) isEmpty.
            recoveredBlock76PC := 86.
        ].
        recoveredBlock76Step = 86 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 113] ifFalse: [recoveredBlock76PC := 90].
        ].
        recoveredBlock76Step = 90 ifTrue: [
            recoveredBlock76PC := 91.
        ].
        recoveredBlock76Step = 91 ifTrue: [
            recoveredBlock76Stack1 := recoveredLocal2.
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack2 := recoveredArg2.
            recoveredBlock76PC := 97.
        ].
        recoveredBlock76Step = 97 ifTrue: [
            recoveredBlock76Stack3 := recoveredLocal1.
            recoveredBlock76PC := 100.
        ].
        recoveredBlock76Step = 100 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 101.
        ].
        recoveredBlock76Step = 101 ifTrue: [
            recoveredBlock76Stack3 := recoveredBlock76Arg1.
            recoveredBlock76PC := 102.
        ].
        recoveredBlock76Step = 102 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) , (recoveredBlock76Stack3).
            recoveredBlock76PC := 103.
        ].
        recoveredBlock76Step = 103 ifTrue: [
            recoveredBlock76Stack3 := $/.
            recoveredBlock76PC := 106.
        ].
        recoveredBlock76Step = 106 ifTrue: [
            recoveredBlock76Stack4 := recoveredLocal1.
            recoveredBlock76PC := 109.
        ].
        recoveredBlock76Step = 109 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) replace: (recoveredBlock76Stack3) with: (recoveredBlock76Stack4).
            recoveredBlock76PC := 111.
        ].
        recoveredBlock76Step = 111 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) add: (recoveredBlock76Stack2).
            recoveredBlock76PC := 113.
        ].
        recoveredBlock76Step = 113 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextLine.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063aa4c; bytecode file offset 0xf373f4"
!EtasZipToolController methodsFor: 'recovered'!
run: recoveredArg1 arguments: recoveredArg2 workingDirectory: recoveredArg3 show: recoveredArg4 withInput: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTempDir.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'ZipError.log'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ORDWR.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Cannot create temporary error file'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'ZipOutput.log'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := ORDWR.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'Cannot create temporary output file'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'ZipInput.log'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'Cannot write temporary input file'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 219] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 231] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 243] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := 'Cannot open temporary input file'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptor.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := OSProcessInformation.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) defaultValues.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := OSStartupinfo.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) defaultValues.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) wShowWindow: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 257.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) hStdInput: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileDescriptor.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) hStdOutput: (recoveredStack2).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileDescriptor.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) hStdError: (recoveredStack1).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock353Value0 recoveredBlock353Value1 recoveredBlock353Value2 recoveredBlock353Value3 recoveredBlock353Value4 recoveredBlock353Value5 |
    recoveredBlock353Value0 := recoveredArg1.
    recoveredBlock353Value1 := ('Running ') , (recoveredBlock353Value0).
    recoveredBlock353Value2 := (recoveredBlock353Value1) , (' with arguments "').
    recoveredBlock353Value3 := recoveredLocal16.
    recoveredBlock353Value4 := (recoveredBlock353Value2) , (recoveredBlock353Value3).
    recoveredBlock353Value5 := (recoveredBlock353Value4) , ('"').
    recoveredBlock353Value5
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) logMessage: (recoveredStack1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack6 := 32.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack9 := recoveredLocal12.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack10 := recoveredLocal13.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProcess: (recoveredStack1) lpszCommandLine: (recoveredStack2) lpsaProcess: (recoveredStack3) lpsaThread: (recoveredStack4) fInheritHandles: (recoveredStack5) fdwCreate: (recoveredStack6) lpvEnvironment: (recoveredStack7) lpszCurDir: (recoveredStack8) lpsiStartInfo: (recoveredStack9) lppiProcInfo: (recoveredStack10).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 479] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 431] ifFalse: [recoveredPC := 426].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 443] ifFalse: [recoveredPC := 438].
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 455] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := WinError.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastError.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := 'An error ocurred during a ZIP operation: '.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack0) say: (recoveredStack1).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := IsWinNT.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 484] ifFalse: [recoveredPC := 492].
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack0) setProcessAffinityAll: (recoveredStack1).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock496Value0 recoveredBlock496Value1 recoveredBlock496Value2 recoveredBlock496Value3 |
    recoveredBlock496Value0 := recoveredLocal13.
    recoveredBlock496Value1 := (recoveredBlock496Value0) hProcess.
    recoveredBlock496Value2 := (recoveredBlock496Value1) waitForSingleObject: (0).
    recoveredBlock496Value3 := (recoveredBlock496Value2) ~= (0).
    recoveredBlock496Value3
].
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack0) readAndDispatchAndSleepWhile: (recoveredStack1).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 529] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 541] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 553] ifFalse: [recoveredPC := 548].
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := (recoveredStack0) hProcess.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExitCodeProcess.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 566] ifFalse: [recoveredPC := 610].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 582] ifFalse: [recoveredPC := 591].
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := 'Cannot read temporary output file'.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredPC := 655.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := CfsReadFileStream.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 626] ifFalse: [recoveredPC := 635].
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := 'Cannot read temporary error file'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDebugMonitor: (recoveredStack1).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack0) cleanUp: (recoveredStack1) process: (recoveredStack2).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

