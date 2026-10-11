"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002513c; bytecode file offset 0x92209c"
!ETASFile class methodsFor: 'recovered'!
fileExtension
    ^'txt'
! !

"ASDBase.ic method 0x20049b5c; bytecode file offset 0x947128"
!ETASFile class methodsFor: 'recovered'!
determineUniqueSignalFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (self) determineUniqueSignalFileNameIn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082854; bytecode file offset 0x97f140"
!ETASFile class methodsFor: 'recovered'!
searchExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('*.') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c064; bytecode file offset 0x988b68"
!ETASFile class methodsFor: 'recovered'!
searchExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileExtension.
    recoveredValue1 := ('*.') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200952dc; bytecode file offset 0x991c58"
!ETASFile class methodsFor: 'recovered'!
determineUniqueSignalFileNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fileExtension.
    recoveredValue2 := (self) determineUniqueSignalFileNameIn: (recoveredValue0) fileExtension: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200952fc; bytecode file offset 0x991c58"
!ETASFile class methodsFor: 'recovered'!
getSignalFilesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fileExtension.
    recoveredValue2 := (self) getSignalFilesIn: (recoveredValue0) fileExtension: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a2520; bytecode file offset 0x99ee44"
!ETASFile class methodsFor: 'recovered'!
determineUniqueSignalFileNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) determineUniqueSignalFileNameIn: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6830; bytecode file offset 0x9b39ac"
!ETASFile class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('path' 'fHandle')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dfa44; bytecode file offset 0x9dc3b8"
!ETASFile class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20153454; bytecode file offset 0xa4fd24"
!ETASFile class methodsFor: 'recovered'!
signalPathIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Kli') == ('Call_2009404176').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) location.
    recoveredValue3 := (recoveredValue2) pathName.
    recoveredValue4 := (recoveredValue3) asPathname.
    recoveredValue5 := (recoveredValue4) , ('files\').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2030ea38; bytecode file offset 0xc0b308"
!ETASFile class methodsFor: 'recovered'!
createDirectory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalPathIn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) mkdirFailMessage: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f5de8; bytecode file offset 0xdf2700"
!ETASFile class methodsFor: 'recovered'!
getSignalFilesIn: recoveredArg1 fileExtension: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalPathIn: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Create Signals Folder'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdirFailMessage: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeSureDirectoryPathExists: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'signal dir failed'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchExtension: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Stack0 recoveredBlock135Stack1 recoveredBlock135Stack2 recoveredBlock135Stack3 recoveredBlock135PC recoveredBlock135Step recoveredBlock135Done recoveredBlock135Result |
    recoveredBlock135Stack0 := self.
    recoveredBlock135PC := 142.
    recoveredBlock135Done := false.
    [recoveredBlock135Done not] whileTrue: [
        recoveredBlock135Step := recoveredBlock135PC.
        recoveredBlock135Step = 142 ifTrue: [
            recoveredBlock135Stack1 := recoveredBlock135Arg1.
            recoveredBlock135PC := 143.
        ].
        recoveredBlock135Step = 143 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) dExtension.
            recoveredBlock135PC := 145.
        ].
        recoveredBlock135Step = 145 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) size.
            recoveredBlock135PC := 147.
        ].
        recoveredBlock135Step = 147 ifTrue: [
            recoveredBlock135Stack2 := recoveredArg2.
            recoveredBlock135PC := 150.
        ].
        recoveredBlock135Step = 150 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) size.
            recoveredBlock135PC := 152.
        ].
        recoveredBlock135Step = 152 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) > (recoveredBlock135Stack2).
            recoveredBlock135PC := 153.
        ].
        recoveredBlock135Step = 153 ifTrue: [
            (recoveredBlock135Stack1) ifTrue: [recoveredBlock135PC := 156] ifFalse: [recoveredBlock135PC := 156].
        ].
        recoveredBlock135Step = 156 ifTrue: [
            recoveredBlock135Stack1 := recoveredBlock135Arg1.
            recoveredBlock135PC := 157.
        ].
        recoveredBlock135Step = 157 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) dExtension.
            recoveredBlock135PC := 159.
        ].
        recoveredBlock135Step = 159 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) asUppercase.
            recoveredBlock135PC := 161.
        ].
        recoveredBlock135Step = 161 ifTrue: [
            recoveredBlock135Stack2 := recoveredArg2.
            recoveredBlock135PC := 164.
        ].
        recoveredBlock135Step = 164 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) asUppercase.
            recoveredBlock135PC := 166.
        ].
        recoveredBlock135Step = 166 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) = (recoveredBlock135Stack2).
            recoveredBlock135PC := 167.
        ].
        recoveredBlock135Step = 167 ifTrue: [
            recoveredBlock135Result := recoveredBlock135Stack1.
            recoveredBlock135Done := true.
        ].
    ].
    recoveredBlock135Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055b76c; bytecode file offset 0xe58078"
!ETASFile class methodsFor: 'recovered'!
determineUniqueSignalFileNameIn: recoveredArg1 fileExtension: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSignalFilesIn: (recoveredStack1) fileExtension: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:block2811023cArg1 | 
    | block2811023cValue0 block2811023cValue1 block2811023cValue2 block2811023cValue3 |
    block2811023cValue0 := block2811023cArg1.
    block2811023cValue1 := (block2811023cValue0) dName.
    block2811023cValue2 := (block2811023cValue1) size.
    block2811023cValue3 := (block2811023cValue2) >= (8).
    block2811023cValue3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:block28110260Arg1 | 
    | block28110260Value0 block28110260Value1 block28110260Value2 |
    block28110260Value0 := block28110260Arg1.
    block28110260Value1 := (block28110260Value0) dName.
    block28110260Value2 := (block28110260Value1) copyFrom: (3) to: (8).
    block28110260Value2
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
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
            recoveredStack1 := [:block28110284Arg1 | 
    | block28110284Value0 block28110284Value1 block28110284Value2 |
    block28110284Value0 := block28110284Arg1.
    block28110284Value1 := (block28110284Value0) asInteger.
    block28110284Value2 := (block28110284Value1) ~= (0).
    block28110284Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:block281102a8Arg1 | 
    | block281102a8Value0 block281102a8Value1 |
    block281102a8Value0 := block281102a8Arg1.
    block281102a8Value1 := (block281102a8Value0) asInteger.
    block281102a8Value1
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Stack0 recoveredBlock114Stack1 recoveredBlock114Stack2 recoveredBlock114Stack3 recoveredBlock114Stack4 recoveredBlock114PC recoveredBlock114Step recoveredBlock114Done recoveredBlock114Result |
    recoveredBlock114Stack0 := self.
    recoveredBlock114PC := 120.
    recoveredBlock114Done := false.
    [recoveredBlock114Done not] whileTrue: [
        recoveredBlock114Step := recoveredBlock114PC.
        recoveredBlock114Step = 120 ifTrue: [
            recoveredBlock114Stack1 := nil.
            recoveredBlock114PC := 121.
        ].
        recoveredBlock114Step = 121 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 122.
        ].
        recoveredBlock114Step = 122 ifTrue: [
            recoveredBlock114Stack3 := recoveredLocal2.
            recoveredBlock114PC := 125.
        ].
        recoveredBlock114Step = 125 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) >= (recoveredBlock114Stack3).
            recoveredBlock114PC := 126.
        ].
        recoveredBlock114Step = 126 ifTrue: [
            (recoveredBlock114Stack2) ifTrue: [recoveredBlock114PC := 130] ifFalse: [recoveredBlock114PC := 136].
        ].
        recoveredBlock114Step = 130 ifTrue: [
            recoveredBlock114PC := 131.
        ].
        recoveredBlock114Step = 131 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 132.
        ].
        recoveredBlock114Step = 132 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Stack1.
            recoveredBlock114PC := 133.
        ].
        recoveredBlock114Step = 133 ifTrue: [
            recoveredLocal2 := recoveredBlock114Stack2.
            recoveredBlock114PC := 136.
        ].
        recoveredBlock114Step = 136 ifTrue: [
            recoveredBlock114Result := recoveredBlock114Stack1.
            recoveredBlock114Done := true.
        ].
    ].
    recoveredBlock114Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 999999.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := '0'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalPathIn: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := 'db'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) createFileAndClose: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

