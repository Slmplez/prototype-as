"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200395a8; bytecode file offset 0x938608"
!CgDeviceIndependentImage methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b8bc; bytecode file offset 0x958548"
!CgDeviceIndependentImage methodsFor: 'recovered'!
asPixmap
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgPixmap.
    recoveredValue1 := (recoveredValue0) fromImage: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a1fd0; bytecode file offset 0x99e894"
!CgDeviceIndependentImage methodsFor: 'recovered'!
shouldShowPostscriptExportWarning
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) postscriptExportWarningLimit.
    recoveredValue4 := (recoveredValue1) > (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x204203bc; bytecode file offset 0xd1cc9c"
!CgDeviceIndependentImage methodsFor: 'recovered'!
transformToColor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := width.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) getPixels: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) pixels: (recoveredStack5) startIndex: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromOSRGB: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) asOSRGB.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 38] ifFalse: [recoveredLocal2 := nil. recoveredPC := 71]] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := width.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) putPixels: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) pixels: (recoveredStack5) startIndex: (recoveredStack6).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 18] ifFalse: [recoveredLocal3 := nil. recoveredPC := 98]] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20424f20; bytecode file offset 0xd21804"
!CgDeviceIndependentImage methodsFor: 'recovered'!
transformToGrey
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := width.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) getPixels: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) pixels: (recoveredStack5) startIndex: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromOSRGB: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) asDisabledGray.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) asOSRGB.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 38] ifFalse: [recoveredLocal2 := nil. recoveredPC := 72]] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := width.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) putPixels: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) pixels: (recoveredStack5) startIndex: (recoveredStack6).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 18] ifFalse: [recoveredLocal3 := nil. recoveredPC := 99]] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

