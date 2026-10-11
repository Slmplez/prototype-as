"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027028; bytecode file offset 0x923928"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
executableName
    ^'ASCET-Diff.exe'
! !

"ASDBase.ic method 0x20115588; bytecode file offset 0xa11e40"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'ASCET-DIFF'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b3d4; bytecode file offset 0xa27c98"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
initialize
    name := 'ASCET-DIFF'.
    (self) basePath.
    (self) callAscetDiffPath.
    (self) version.
    ^self
! !

"ASDBase.ic method 0x201ae64c; bytecode file offset 0xaaaf10"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
basePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := basePath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := version.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ASDExternalToolsOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionAscetDiffVersion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) findAscetDiffPath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := basePath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ae6f0; bytecode file offset 0xaaafb4"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
callAscetDiffPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callAscetDiffPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := version.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ASDExternalToolsOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionAscetDiffVersion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) findCallAscetDiffPath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := callAscetDiffPath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e1f00; bytecode file offset 0xade7c0"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
version
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := version.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := version.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ASDExternalToolsOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionAscetDiffVersion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionAscetDiffVersion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            version := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := version.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20504d94; bytecode file offset 0xe01690"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
findAscetDiffPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionAscetDiffVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '<undefined>'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Software\ETAS\ASCET-DIFF'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) regEnumKey.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value0) regOpenKey: (recoveredBlock51Value1).
    recoveredBlock51Value3 := [:recoveredBlock51Block64Arg1 | 
    | recoveredBlock51Block64Local1 recoveredBlock51Block64Stack0 recoveredBlock51Block64Stack1 recoveredBlock51Block64Stack2 recoveredBlock51Block64Stack3 recoveredBlock51Block64PC recoveredBlock51Block64Step recoveredBlock51Block64Done recoveredBlock51Block64Result |
    recoveredBlock51Block64Stack0 := self.
    recoveredBlock51Block64PC := 70.
    recoveredBlock51Block64Done := false.
    [recoveredBlock51Block64Done not] whileTrue: [
        recoveredBlock51Block64Step := recoveredBlock51Block64PC.
        recoveredBlock51Block64Step = 70 ifTrue: [
            recoveredBlock51Block64Stack1 := nil.
            recoveredBlock51Block64PC := 71.
        ].
        recoveredBlock51Block64Step = 71 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 74.
        ].
        recoveredBlock51Block64Step = 74 ifTrue: [
            recoveredBlock51Block64Stack2 := (recoveredBlock51Block64Stack2) isError.
            recoveredBlock51Block64PC := 76.
        ].
        recoveredBlock51Block64Step = 76 ifTrue: [
            (recoveredBlock51Block64Stack2) ifTrue: [recoveredBlock51Block64PC := 162] ifFalse: [recoveredBlock51Block64PC := 80].
        ].
        recoveredBlock51Block64Step = 80 ifTrue: [
            recoveredBlock51Block64PC := 81.
        ].
        recoveredBlock51Block64Step = 81 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 84.
        ].
        recoveredBlock51Block64Step = 84 ifTrue: [
            recoveredBlock51Block64Stack2 := 'ProductVersion'.
            recoveredBlock51Block64PC := 86.
        ].
        recoveredBlock51Block64Step = 86 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regQueryValueEx: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 88.
        ].
        recoveredBlock51Block64Step = 88 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64PC := 89.
        ].
        recoveredBlock51Block64Step = 89 ifTrue: [
            recoveredBlock51Block64Local1 := recoveredBlock51Block64Stack2.
            recoveredBlock51Block64PC := 92.
        ].
        recoveredBlock51Block64Step = 92 ifTrue: [
            recoveredBlock51Block64Stack2 := [
    | recoveredBlock51Block64Block92Value0 recoveredBlock51Block64Block92Value1 recoveredBlock51Block64Block92Value2 |
    recoveredBlock51Block64Block92Value0 := recoveredBlock51Block64Arg1.
    recoveredBlock51Block64Block92Value1 := (recoveredBlock51Block64Block92Value0) regQueryValueEx: ('Version').
    recoveredBlock51Block64Block92Value2 := recoveredBlock51Block64Block92Value1.
    recoveredBlock51Block64Local1 := recoveredBlock51Block64Block92Value2.
    recoveredBlock51Block64Block92Value1
].
            recoveredBlock51Block64PC := 110.
        ].
        recoveredBlock51Block64Step = 110 ifTrue: [
            (recoveredBlock51Block64Stack1) ifNil: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 112.
        ].
        recoveredBlock51Block64Step = 112 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Local1.
            recoveredBlock51Block64PC := 115.
        ].
        recoveredBlock51Block64Step = 115 ifTrue: [
            (recoveredBlock51Block64Stack1 == nil) ifTrue: [recoveredBlock51Block64PC := 153] ifFalse: [recoveredBlock51Block64PC := 118].
        ].
        recoveredBlock51Block64Step = 118 ifTrue: [
            recoveredBlock51Block64Stack1 := ASDExternalToolsOptions.
            recoveredBlock51Block64PC := 120.
        ].
        recoveredBlock51Block64Step = 120 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) instance.
            recoveredBlock51Block64PC := 121.
        ].
        recoveredBlock51Block64Step = 121 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) optionAscetDiffVersion.
            recoveredBlock51Block64PC := 122.
        ].
        recoveredBlock51Block64Step = 122 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Local1.
            recoveredBlock51Block64PC := 125.
        ].
        recoveredBlock51Block64Step = 125 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) = (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 126.
        ].
        recoveredBlock51Block64Step = 126 ifTrue: [
            (recoveredBlock51Block64Stack1) ifTrue: [recoveredBlock51Block64PC := 130] ifFalse: [recoveredBlock51Block64PC := 153].
        ].
        recoveredBlock51Block64Step = 130 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 133.
        ].
        recoveredBlock51Block64Step = 133 ifTrue: [
            recoveredBlock51Block64Stack2 := 'Path'.
            recoveredBlock51Block64PC := 135.
        ].
        recoveredBlock51Block64Step = 135 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regQueryValueEx: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 137.
        ].
        recoveredBlock51Block64Step = 137 ifTrue: [
            recoveredBlock51Block64Stack2 := [:recoveredBlock51Block64Block137Arg1 | 
    | recoveredBlock51Block64Block137Value0 recoveredBlock51Block64Block137Value1 recoveredBlock51Block64Block137Value2 |
    recoveredBlock51Block64Block137Value0 := recoveredBlock51Block64Block137Arg1.
    recoveredBlock51Block64Block137Value1 := (recoveredBlock51Block64Block137Value0) asPathname.
    recoveredBlock51Block64Block137Value2 := recoveredBlock51Block64Block137Value1.
    basePath := recoveredBlock51Block64Block137Value2.
    recoveredBlock51Block64Block137Value1
].
            recoveredBlock51Block64PC := 151.
        ].
        recoveredBlock51Block64Step = 151 ifTrue: [
            (recoveredBlock51Block64Stack1) ifNotNil: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 153.
        ].
        recoveredBlock51Block64Step = 153 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 156.
        ].
        recoveredBlock51Block64Step = 156 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regCloseKey.
            recoveredBlock51Block64PC := 158.
        ].
        recoveredBlock51Block64Step = 158 ifTrue: [
            recoveredBlock51Block64Stack2 := nil.
            recoveredBlock51Block64PC := 159.
        ].
        recoveredBlock51Block64Step = 159 ifTrue: [
            recoveredBlock51Block64Local1 := recoveredBlock51Block64Stack2.
            recoveredBlock51Block64PC := 162.
        ].
        recoveredBlock51Block64Step = 162 ifTrue: [
            recoveredBlock51Block64Result := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64Done := true.
        ].
    ].
    recoveredBlock51Block64Result
].
    recoveredBlock51Value4 := (recoveredBlock51Value2) ifNotNil: (recoveredBlock51Value3).
    recoveredBlock51Value4
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20546be4; bytecode file offset 0xe434f4"
!EtasSoftwareComponentAscetDiff methodsFor: 'recovered'!
findCallAscetDiffPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionAscetDiffVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '<undefined>'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Software\ETAS\ASCET-DIFF'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) regEnumKey.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value0) regOpenKey: (recoveredBlock51Value1).
    recoveredBlock51Value3 := [:recoveredBlock51Block64Arg1 | 
    | recoveredBlock51Block64Local1 recoveredBlock51Block64Local2 recoveredBlock51Block64Stack0 recoveredBlock51Block64Stack1 recoveredBlock51Block64Stack2 recoveredBlock51Block64Stack3 recoveredBlock51Block64PC recoveredBlock51Block64Step recoveredBlock51Block64Done recoveredBlock51Block64Result |
    recoveredBlock51Block64Stack0 := self.
    recoveredBlock51Block64PC := 70.
    recoveredBlock51Block64Done := false.
    [recoveredBlock51Block64Done not] whileTrue: [
        recoveredBlock51Block64Step := recoveredBlock51Block64PC.
        recoveredBlock51Block64Step = 70 ifTrue: [
            recoveredBlock51Block64Stack1 := nil.
            recoveredBlock51Block64PC := 71.
        ].
        recoveredBlock51Block64Step = 71 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 74.
        ].
        recoveredBlock51Block64Step = 74 ifTrue: [
            recoveredBlock51Block64Stack2 := (recoveredBlock51Block64Stack2) isError.
            recoveredBlock51Block64PC := 76.
        ].
        recoveredBlock51Block64Step = 76 ifTrue: [
            (recoveredBlock51Block64Stack2) ifTrue: [recoveredBlock51Block64PC := 200] ifFalse: [recoveredBlock51Block64PC := 80].
        ].
        recoveredBlock51Block64Step = 80 ifTrue: [
            recoveredBlock51Block64PC := 81.
        ].
        recoveredBlock51Block64Step = 81 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 84.
        ].
        recoveredBlock51Block64Step = 84 ifTrue: [
            recoveredBlock51Block64Stack2 := 'ProductVersion'.
            recoveredBlock51Block64PC := 86.
        ].
        recoveredBlock51Block64Step = 86 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regQueryValueEx: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 88.
        ].
        recoveredBlock51Block64Step = 88 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64PC := 89.
        ].
        recoveredBlock51Block64Step = 89 ifTrue: [
            recoveredBlock51Block64Local2 := recoveredBlock51Block64Stack2.
            recoveredBlock51Block64PC := 92.
        ].
        recoveredBlock51Block64Step = 92 ifTrue: [
            recoveredBlock51Block64Stack2 := [
    | recoveredBlock51Block64Block92Value0 recoveredBlock51Block64Block92Value1 recoveredBlock51Block64Block92Value2 |
    recoveredBlock51Block64Block92Value0 := recoveredBlock51Block64Arg1.
    recoveredBlock51Block64Block92Value1 := (recoveredBlock51Block64Block92Value0) regQueryValueEx: ('Version').
    recoveredBlock51Block64Block92Value2 := recoveredBlock51Block64Block92Value1.
    recoveredBlock51Block64Local2 := recoveredBlock51Block64Block92Value2.
    recoveredBlock51Block64Block92Value1
].
            recoveredBlock51Block64PC := 110.
        ].
        recoveredBlock51Block64Step = 110 ifTrue: [
            (recoveredBlock51Block64Stack1) ifNil: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 112.
        ].
        recoveredBlock51Block64Step = 112 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Local2.
            recoveredBlock51Block64PC := 115.
        ].
        recoveredBlock51Block64Step = 115 ifTrue: [
            (recoveredBlock51Block64Stack1 == nil) ifTrue: [recoveredBlock51Block64PC := 191] ifFalse: [recoveredBlock51Block64PC := 118].
        ].
        recoveredBlock51Block64Step = 118 ifTrue: [
            recoveredBlock51Block64Stack1 := ASDExternalToolsOptions.
            recoveredBlock51Block64PC := 120.
        ].
        recoveredBlock51Block64Step = 120 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) instance.
            recoveredBlock51Block64PC := 121.
        ].
        recoveredBlock51Block64Step = 121 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) optionAscetDiffVersion.
            recoveredBlock51Block64PC := 122.
        ].
        recoveredBlock51Block64Step = 122 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Local2.
            recoveredBlock51Block64PC := 125.
        ].
        recoveredBlock51Block64Step = 125 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) = (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 126.
        ].
        recoveredBlock51Block64Step = 126 ifTrue: [
            (recoveredBlock51Block64Stack1) ifTrue: [recoveredBlock51Block64PC := 130] ifFalse: [recoveredBlock51Block64PC := 191].
        ].
        recoveredBlock51Block64Step = 130 ifTrue: [
            recoveredBlock51Block64Stack1 := 'Kli'.
            recoveredBlock51Block64PC := 132.
        ].
        recoveredBlock51Block64Step = 132 ifTrue: [
            recoveredBlock51Block64Stack2 := 'Call_337877'.
            recoveredBlock51Block64PC := 134.
        ].
        recoveredBlock51Block64Step = 134 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) == (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 135.
        ].
        recoveredBlock51Block64Step = 135 ifTrue: [
            recoveredBlock51Block64PC := 136.
        ].
        recoveredBlock51Block64Step = 136 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Local2.
            recoveredBlock51Block64PC := 139.
        ].
        recoveredBlock51Block64Step = 139 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) asEtasVersion.
            recoveredBlock51Block64PC := 141.
        ].
        recoveredBlock51Block64Step = 141 ifTrue: [
            recoveredBlock51Block64Stack2 := '6.2.0'.
            recoveredBlock51Block64PC := 143.
        ].
        recoveredBlock51Block64Step = 143 ifTrue: [
            recoveredBlock51Block64Stack2 := (recoveredBlock51Block64Stack2) asEtasVersion.
            recoveredBlock51Block64PC := 145.
        ].
        recoveredBlock51Block64Step = 145 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) >= (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 146.
        ].
        recoveredBlock51Block64Step = 146 ifTrue: [
            (recoveredBlock51Block64Stack1) ifTrue: [recoveredBlock51Block64PC := 150] ifFalse: [recoveredBlock51Block64PC := 158].
        ].
        recoveredBlock51Block64Step = 150 ifTrue: [
            recoveredBlock51Block64Stack1 := 'ProductData'.
            recoveredBlock51Block64PC := 152.
        ].
        recoveredBlock51Block64Step = 152 ifTrue: [
            recoveredBlock51Block64Local1 := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64PC := 155.
        ].
        recoveredBlock51Block64Step = 155 ifTrue: [
            recoveredBlock51Block64PC := 163.
        ].
        recoveredBlock51Block64Step = 158 ifTrue: [
            recoveredBlock51Block64Stack1 := 'Path'.
            recoveredBlock51Block64PC := 160.
        ].
        recoveredBlock51Block64Step = 160 ifTrue: [
            recoveredBlock51Block64Local1 := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64PC := 163.
        ].
        recoveredBlock51Block64Step = 163 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 166.
        ].
        recoveredBlock51Block64Step = 166 ifTrue: [
            recoveredBlock51Block64Stack2 := recoveredBlock51Block64Local1.
            recoveredBlock51Block64PC := 169.
        ].
        recoveredBlock51Block64Step = 169 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regQueryValueEx: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 171.
        ].
        recoveredBlock51Block64Step = 171 ifTrue: [
            recoveredBlock51Block64Stack2 := [:recoveredBlock51Block64Block171Arg1 | 
    | recoveredBlock51Block64Block171Value0 recoveredBlock51Block64Block171Value1 recoveredBlock51Block64Block171Value2 |
    recoveredBlock51Block64Block171Value0 := recoveredBlock51Block64Block171Arg1.
    recoveredBlock51Block64Block171Value1 := (recoveredBlock51Block64Block171Value0) asPathname.
    recoveredBlock51Block64Block171Value2 := recoveredBlock51Block64Block171Value1.
    callAscetDiffPath := recoveredBlock51Block64Block171Value2.
    recoveredBlock51Block64Block171Value1
].
            recoveredBlock51Block64PC := 185.
        ].
        recoveredBlock51Block64Step = 185 ifTrue: [
            (recoveredBlock51Block64Stack1) ifNotNil: (recoveredBlock51Block64Stack2).
            recoveredBlock51Block64PC := 187.
        ].
        recoveredBlock51Block64Step = 187 ifTrue: [
            recoveredBlock51Block64Stack1 := nil.
            recoveredBlock51Block64PC := 188.
        ].
        recoveredBlock51Block64Step = 188 ifTrue: [
            recoveredBlock51Block64Local1 := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64PC := 191.
        ].
        recoveredBlock51Block64Step = 191 ifTrue: [
            recoveredBlock51Block64Stack1 := recoveredBlock51Block64Arg1.
            recoveredBlock51Block64PC := 194.
        ].
        recoveredBlock51Block64Step = 194 ifTrue: [
            recoveredBlock51Block64Stack1 := (recoveredBlock51Block64Stack1) regCloseKey.
            recoveredBlock51Block64PC := 196.
        ].
        recoveredBlock51Block64Step = 196 ifTrue: [
            recoveredBlock51Block64Stack2 := nil.
            recoveredBlock51Block64PC := 197.
        ].
        recoveredBlock51Block64Step = 197 ifTrue: [
            recoveredBlock51Block64Local2 := recoveredBlock51Block64Stack2.
            recoveredBlock51Block64PC := 200.
        ].
        recoveredBlock51Block64Step = 200 ifTrue: [
            recoveredBlock51Block64Result := recoveredBlock51Block64Stack1.
            recoveredBlock51Block64Done := true.
        ].
    ].
    recoveredBlock51Block64Result
].
    recoveredBlock51Value4 := (recoveredBlock51Value2) ifNotNil: (recoveredBlock51Value3).
    recoveredBlock51Value4
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

