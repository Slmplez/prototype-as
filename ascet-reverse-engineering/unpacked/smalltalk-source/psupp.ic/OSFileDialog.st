"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200095dc; bytecode file offset 0x15ce70"
!OSFileDialog methodsFor: 'recovered'!
filter
    | recoveredValue0 |
    recoveredValue0 := filter.
    ^recoveredValue0
! !

"psupp.ic method 0x200095f0; bytecode file offset 0x15ceac"
!OSFileDialog methodsFor: 'recovered'!
filterPath
    | recoveredValue0 |
    recoveredValue0 := filterPath.
    ^recoveredValue0
! !

"psupp.ic method 0x20009634; bytecode file offset 0x15cee0"
!OSFileDialog methodsFor: 'recovered'!
fullPath
    | recoveredValue0 |
    recoveredValue0 := fullPath.
    ^recoveredValue0
! !

"psupp.ic method 0x20009668; bytecode file offset 0x15cf04"
!OSFileDialog methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"psupp.ic method 0x20009684; bytecode file offset 0x15cf38"
!OSFileDialog methodsFor: 'recovered'!
fileExtension
    | recoveredValue0 |
    recoveredValue0 := fileExtension.
    ^recoveredValue0
! !

"psupp.ic method 0x200096c0; bytecode file offset 0x15cf64"
!OSFileDialog methodsFor: 'recovered'!
save
    | recoveredValue0 |
    recoveredValue0 := save.
    ^recoveredValue0
! !

"psupp.ic method 0x2001e0a8; bytecode file offset 0x171944"
!OSFileDialog methodsFor: 'recovered'!
filter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filter := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e0e4; bytecode file offset 0x171978"
!OSFileDialog methodsFor: 'recovered'!
filterPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filterPath := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e0f8; bytecode file offset 0x17199c"
!OSFileDialog methodsFor: 'recovered'!
fullPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fullPath := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e11c; bytecode file offset 0x1719b0"
!OSFileDialog methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e140; bytecode file offset 0x1719d4"
!OSFileDialog methodsFor: 'recovered'!
fileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileExtension := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e15c; bytecode file offset 0x1719f0"
!OSFileDialog methodsFor: 'recovered'!
save: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    save := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2002e5ac; bytecode file offset 0x181e54"
!OSFileDialog methodsFor: 'recovered'!
openWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EGE86M'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) save.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSaveFileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOpenFileName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x20031554; bytecode file offset 0x184df8"
!OSFileDialog methodsFor: 'recovered'!
initialize
    super initialize.
    fileExtension := ''.
    filterPath := ''.
    fullPath := ''.
    fileName := ''.
    filter := '*.*'.
    save := false.
    ^self
! !

"psupp.ic method 0x20050e10; bytecode file offset 0x1a477c"
!OSFileDialog methodsFor: 'recovered'!
open
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EGE86M'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := fileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := filterPath.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFileTitle: (recoveredStack2) lpszTitle: (recoveredStack3) cbBuf: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := label.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyToOSMemory.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := fileExtension.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := fileExtension.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := filter.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := String.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := filter.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := String.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyToOSMemory.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := OSOpenfilename.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := OSOpenfilename.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack2) lStructSize: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := OfnHidereadonly.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := OfnNochangedir.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack2) Flags: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) hwndOwner: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack2) lpstrTitle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack2) lpstrFile: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack2) nMaxFile: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack2) lpstrFileTitle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack2) nMaxFileTitle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) lpstrInitialDir: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack2) lpstrFilter: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) nFilterIndex: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := OSHcursor.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCursor.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) openWith: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := OS.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) commDlgExtendedError.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := FnerrInvalidfilename.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) uint8At: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) openWith: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFromOSMemory: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) nFileOffset.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredPC := 377.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := (recoveredStack3) nFileOffset.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) filterPath: (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredPC := 385.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack0) fullPath: (recoveredStack1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) setCursor.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 418] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := fileExtension.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 428] ifFalse: [recoveredPC := 431].
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 485] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := fullPath.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := fileExtension.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := fullPath.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 468] ifFalse: [recoveredPC := 485].
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := fullPath.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := fileExtension.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            fullPath := recoveredStack0.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := fullPath.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimSeparators.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := fileExtension.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

