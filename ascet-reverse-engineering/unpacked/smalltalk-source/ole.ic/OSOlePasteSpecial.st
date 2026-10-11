"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ole.ic method 0x20005cbc; bytecode file offset 0x1072c"
!OSOlePasteSpecial methodsFor: 'recovered'!
open
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) handle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OleClientObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) clipboardDataObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal17 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := createAsLink.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := PsfSelectpastelink.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := PsfSelectpaste.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := allowIcon.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := PsfDisabledisplayasicon.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := displayAsIcon.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := PsfCheckdisplayasicon.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := OSOleuipastespecial.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) cbStruct: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) lpSrcDataObj: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) hWndOwner: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal25.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) calloc: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) address.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) arrPasteEntries: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) cPasteEntries: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal22.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) address.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := OSFormatetc.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := OS.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := 'Embedded Object'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) registerClipboardFormat: (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) cfFormat: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := TymedIstorage.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) tymed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := DvaspectContent.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) dwAspect: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) lindex: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) fmtetc: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := MxOLE1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal15 := recoveredStack4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) lpstrFormatName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := MxOLE1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal14 := recoveredStack4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack2) lpstrResultText: (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := OleuipastePaste.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := OleuipasteEnableicon.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal22.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) address.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := OSFormatetc.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := CfMetafilepict.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) cfFormat: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := TymedMfpict.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack2) tymed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := DvaspectContent.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) dwAspect: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) lindex: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) fmtetc: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := MxOLE2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal13 := recoveredStack4.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack2) lpstrFormatName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := MxOLE3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal12 := recoveredStack4.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack2) lpstrResultText: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := OleuipastePasteonly.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := (recoveredStack3) address.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := OSFormatetc.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := CfDib.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack2) cfFormat: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := TymedHglobal.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack2) tymed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := DvaspectContent.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack2) dwAspect: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) lindex: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack2) fmtetc: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := MxOLE4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal11 := recoveredStack4.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack2) lpstrFormatName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := MxOLE5.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal10 := recoveredStack4.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack2) lpstrResultText: (recoveredStack3).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := OleuipastePasteonly.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := (recoveredStack3) address.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := OSFormatetc.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := CfBitmap.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack2) cfFormat: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := TymedGdi.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack2) tymed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := DvaspectContent.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack2) dwAspect: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) lindex: (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack2) fmtetc: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := MxOLE6.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal9 := recoveredStack4.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack2) lpstrFormatName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := MxOLE7.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyToOSMemory.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredLocal8 := recoveredStack4.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack2) lpstrResultText: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := OleuipastePasteonly.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := OSOleuipasteentry.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := (recoveredStack3) address.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := OSFormatetc.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := OS.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := MxOLE8.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := (recoveredStack3) registerClipboardFormat: (recoveredStack4).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal18 := recoveredStack4.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack2) cfFormat: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := TymedIstream.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack2) tymed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack3 := DvaspectContent.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack2) dwAspect: (recoveredStack3).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) lindex: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack2) fmtetc: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack2) lpstrFormatName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack2) lpstrResultText: (recoveredStack3).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := OleuipasteLinktype1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := OleuipasteEnableicon.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack4 := recoveredLocal18.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack2) uint32At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyToOSMemory.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack2) arrLinkTypes: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack1) cLinkTypes: (recoveredStack2).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) lpSrcDataObj.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) oleUIPasteSpecial.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := OleuiOk.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 695] ifFalse: [recoveredPC := 552].
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := (recoveredStack1) nSelectedIndex.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 576] ifFalse: [recoveredPC := 564].
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := OleClientObject.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFromData: (recoveredStack2).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            oleObject := recoveredStack1.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredPC := 607.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := (recoveredStack1) fLink.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 586] ifFalse: [recoveredPC := 598].
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := OleClientObject.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLinkFromData: (recoveredStack2).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            oleObject := recoveredStack1.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredPC := 607.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := OleClientObject.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStaticFromData: (recoveredStack2).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            oleObject := recoveredStack1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := oleObject.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack2 := oleObject.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 650] ifFalse: [recoveredPC := 618].
        ].
        recoveredStep = 618 ifTrue: [
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := (recoveredStack2) hMetaPict.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := (recoveredStack2) notNull.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 634] ifFalse: [recoveredPC := 650].
        ].
        recoveredStep = 634 ifTrue: [
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := (recoveredStack1) dwFlags.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack2 := PsfCheckdisplayasicon.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack2 := PsfCheckdisplayasicon.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            displayAsIcon := recoveredStack1.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := displayAsIcon.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 658] ifFalse: [recoveredPC := 695].
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := oleObject.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := (recoveredStack2) hMetaPict.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            (recoveredStack1) switchOrUpdateAspect: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) hMetaPict.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredLocal19 := recoveredStack2.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 695] ifFalse: [recoveredPC := 688].
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            (recoveredStack1) releaseMetaFile: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            (recoveredStack1) release.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

