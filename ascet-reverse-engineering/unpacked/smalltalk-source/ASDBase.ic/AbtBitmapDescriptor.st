"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036974; bytecode file offset 0x934580"
!AbtBitmapDescriptor methodsFor: 'recovered'!
bitmaps
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) bitmaps.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200752cc; bytecode file offset 0x9757c8"
!AbtBitmapDescriptor methodsFor: 'recovered'!
isBitmapDescriptor
    ^true
! !

"ASDBase.ic method 0x201129f8; bytecode file offset 0xa0f2b0"
!AbtBitmapDescriptor methodsFor: 'recovered'!
bitmap
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveNormalBitmap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016afa4; bytecode file offset 0xa67864"
!AbtBitmapDescriptor methodsFor: 'recovered'!
extent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveNormalPixmap.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b956c; bytecode file offset 0xcb5e48"
!AbtBitmapDescriptor methodsFor: 'recovered'!
primitiveBitmap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullModuleName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OSHmodule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OSHmodule.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModuleHandle: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) loadLibrary: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := OSHmodule.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModuleHandle: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadBitmap: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) freeLibrary.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20438828; bytecode file offset 0xd35124"
!AbtBitmapDescriptor methodsFor: 'recovered'!
primitiveNormalBitmap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitmaps.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveBitmap.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46Stack5 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := self.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) bitmaps.
            recoveredBlock46PC := 55.
        ].
        recoveredBlock46Step = 55 ifTrue: [
            recoveredBlock46Stack3 := recoveredLocal3.
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            recoveredBlock46Stack4 := [].
            recoveredBlock46PC := 60.
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) at: (recoveredBlock46Stack3) ifAbsent: (recoveredBlock46Stack4).
            recoveredBlock46PC := 62.
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46Stack3 := recoveredBlock46Stack2.
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock46Stack3.
            recoveredBlock46PC := 66.
        ].
        recoveredBlock46Step = 66 ifTrue: [
            (recoveredBlock46Stack2 ~~ nil) ifTrue: [recoveredBlock46PC := 85] ifFalse: [recoveredBlock46PC := 70].
        ].
        recoveredBlock46Step = 70 ifTrue: [
            recoveredBlock46PC := 71.
        ].
        recoveredBlock46Step = 71 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 72.
        ].
        recoveredBlock46Step = 72 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) bitmaps.
            recoveredBlock46PC := 73.
        ].
        recoveredBlock46Step = 73 ifTrue: [
            recoveredBlock46Stack2 := recoveredLocal3.
            recoveredBlock46PC := 76.
        ].
        recoveredBlock46Step = 76 ifTrue: [
            recoveredBlock46Stack3 := recoveredLocal2.
            recoveredBlock46PC := 79.
        ].
        recoveredBlock46Step = 79 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) at: (recoveredBlock46Stack2) put: (recoveredBlock46Stack3).
            recoveredBlock46PC := 81.
        ].
        recoveredBlock46Step = 81 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Stack1.
            recoveredBlock46PC := 82.
        ].
        recoveredBlock46Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock46Stack2.
            recoveredBlock46PC := 85.
        ].
        recoveredBlock46Step = 85 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204807f4; bytecode file offset 0xd7d0d8"
!AbtBitmapDescriptor methodsFor: 'recovered'!
primitiveNormalPixmap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) normalKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) pixmaps.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveBitmap.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := CgPixmap.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) screen: (recoveredStack1) hbitmap: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66Stack4 recoveredBlock66Stack5 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := nil.
            recoveredBlock66PC := 73.
        ].
        recoveredBlock66Step = 73 ifTrue: [
            recoveredBlock66Stack2 := self.
            recoveredBlock66PC := 74.
        ].
        recoveredBlock66Step = 74 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) pixmaps.
            recoveredBlock66PC := 75.
        ].
        recoveredBlock66Step = 75 ifTrue: [
            recoveredBlock66Stack3 := recoveredLocal4.
            recoveredBlock66PC := 78.
        ].
        recoveredBlock66Step = 78 ifTrue: [
            recoveredBlock66Stack4 := [].
            recoveredBlock66PC := 80.
        ].
        recoveredBlock66Step = 80 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) at: (recoveredBlock66Stack3) ifAbsent: (recoveredBlock66Stack4).
            recoveredBlock66PC := 82.
        ].
        recoveredBlock66Step = 82 ifTrue: [
            recoveredBlock66Stack3 := recoveredBlock66Stack2.
            recoveredBlock66PC := 83.
        ].
        recoveredBlock66Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock66Stack3.
            recoveredBlock66PC := 86.
        ].
        recoveredBlock66Step = 86 ifTrue: [
            (recoveredBlock66Stack2 ~~ nil) ifTrue: [recoveredBlock66PC := 105] ifFalse: [recoveredBlock66PC := 90].
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66PC := 91.
        ].
        recoveredBlock66Step = 91 ifTrue: [
            recoveredBlock66Stack1 := self.
            recoveredBlock66PC := 92.
        ].
        recoveredBlock66Step = 92 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) pixmaps.
            recoveredBlock66PC := 93.
        ].
        recoveredBlock66Step = 93 ifTrue: [
            recoveredBlock66Stack2 := recoveredLocal4.
            recoveredBlock66PC := 96.
        ].
        recoveredBlock66Step = 96 ifTrue: [
            recoveredBlock66Stack3 := recoveredLocal2.
            recoveredBlock66PC := 99.
        ].
        recoveredBlock66Step = 99 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) at: (recoveredBlock66Stack2) put: (recoveredBlock66Stack3).
            recoveredBlock66PC := 101.
        ].
        recoveredBlock66Step = 101 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Stack1.
            recoveredBlock66PC := 102.
        ].
        recoveredBlock66Step = 102 ifTrue: [
            recoveredLocal1 := recoveredBlock66Stack2.
            recoveredBlock66PC := 105.
        ].
        recoveredBlock66Step = 105 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) freePixmap.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

