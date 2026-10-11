"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000058; bytecode file offset 0xcac4"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
iconName
    ^'HWC_HWC'
! !

"HwAccessETarget.ic method 0x200000d0; bytecode file offset 0xcac4"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
name
    ^'HWC'
! !

"HwAccessETarget.ic method 0x20000124; bytecode file offset 0xcb20"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
viewableSystemTypeIds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) viewableSystemTypeIds.
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x20000574; bytecode file offset 0xcf58"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
isRootItem
    ^true
! !

"HwAccessETarget.ic method 0x20000edc; bytecode file offset 0xd8cc"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
children
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super children.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20001ee0; bytecode file offset 0xe8e8"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItem.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultRefName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForRefName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) hwInterfaceManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) hwInterfaceManager: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) hwcItem: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) topItem: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) initializeTables.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20005a60; bytecode file offset 0x124ec"
!EtasHwcHardwareSelectionRootItem methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredLocal3 := 0.
    recoveredLocal2 := #[154 153 153 153 153 153 185 63].
    recoveredLocal6 := '                                                                                                                  '.
    recoveredValue0 := RBProgressDialog.
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) shell.
    recoveredValue3 := (recoveredValue0) for: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) title: ('Search for Connected Systems').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) allowCancel: (true).
    (recoveredValue3) autoUnmanage: (false).
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) fractionComplete: (0).
    recoveredValue9 := recoveredValue7.
    recoveredValue10 := recoveredLocal6.
    (recoveredValue9) messageString: (recoveredValue10).
    (recoveredValue7) open.
    recoveredLocal1 := 'Querying ETAS Network Manager'.
    recoveredValue11 := recoveredLocal5.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) messageString: (recoveredValue13).
    (recoveredValue11) fractionComplete: (0).
    recoveredValue14 := ASDHwAccessETarget.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) appendToLog: (recoveredValue15).
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredLocal8 := recoveredValue17.
    recoveredValue18 := ASDHwAccessETarget.
    recoveredValue19 := recoveredLocal8.
    recoveredValue20 := recoveredLocal5.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := recoveredLocal2.
    (recoveredValue18) getConnectedSystemsInto: (recoveredValue19) progressDialog: (recoveredValue20) min: (recoveredValue21) max: (recoveredValue22).
    recoveredValue23 := recoveredLocal8.
    recoveredValue24 := (recoveredValue23) size.
    recoveredValue25 := (recoveredValue24) asString.
    recoveredValue26 := ('Found ') , (recoveredValue25).
    recoveredValue27 := (recoveredValue26) , (' systems').
    recoveredLocal1 := recoveredValue27.
    recoveredValue28 := recoveredLocal5.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := recoveredLocal1.
    (recoveredValue29) messageString: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue28) fractionComplete: (recoveredValue31).
    recoveredValue32 := ASDHwAccessETarget.
    recoveredValue33 := recoveredLocal1.
    (recoveredValue32) appendToLog: (recoveredValue33).
    recoveredValue34 := OrderedCollection.
    recoveredValue35 := (recoveredValue34) new.
    recoveredLocal7 := recoveredValue35.
    recoveredValue36 := recoveredLocal8.
    recoveredValue37 := [:recoveredBlock156Arg1 :recoveredBlock156Arg2 | 
    | recoveredBlock156Local1 recoveredBlock156Local2 recoveredBlock156Local3 recoveredBlock156Local4 recoveredBlock156Stack0 recoveredBlock156Stack1 recoveredBlock156Stack2 recoveredBlock156Stack3 recoveredBlock156Stack4 recoveredBlock156Stack5 recoveredBlock156Stack6 recoveredBlock156PC recoveredBlock156Step recoveredBlock156Done recoveredBlock156Result |
    recoveredBlock156Stack0 := self.
    recoveredBlock156PC := 162.
    recoveredBlock156Done := false.
    [recoveredBlock156Done not] whileTrue: [
        recoveredBlock156Step := recoveredBlock156PC.
        recoveredBlock156Step = 162 ifTrue: [
            (recoveredBlock156Stack0) processEvents.
            recoveredBlock156PC := 164.
        ].
        recoveredBlock156Step = 164 ifTrue: [
            recoveredBlock156Stack0 := nil.
            recoveredBlock156PC := 165.
        ].
        recoveredBlock156Step = 165 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal5.
            recoveredBlock156PC := 168.
        ].
        recoveredBlock156Step = 168 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) cancelled.
            recoveredBlock156PC := 170.
        ].
        recoveredBlock156Step = 170 ifTrue: [
            (recoveredBlock156Stack1) ifTrue: [recoveredBlock156PC := 331] ifFalse: [recoveredBlock156PC := 174].
        ].
        recoveredBlock156Step = 174 ifTrue: [
            recoveredBlock156PC := 175.
        ].
        recoveredBlock156Step = 175 ifTrue: [
            recoveredBlock156Stack0 := 1.
            recoveredBlock156PC := 177.
        ].
        recoveredBlock156Step = 177 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal2.
            recoveredBlock156PC := 180.
        ].
        recoveredBlock156Step = 180 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) - (recoveredBlock156Stack1).
            recoveredBlock156PC := 181.
        ].
        recoveredBlock156Step = 181 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal8.
            recoveredBlock156PC := 184.
        ].
        recoveredBlock156Step = 184 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) size.
            recoveredBlock156PC := 186.
        ].
        recoveredBlock156Step = 186 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) / (recoveredBlock156Stack1).
            recoveredBlock156PC := 188.
        ].
        recoveredBlock156Step = 188 ifTrue: [
            recoveredBlock156Local1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 189.
        ].
        recoveredBlock156Step = 189 ifTrue: [
            recoveredBlock156Stack0 := recoveredLocal2.
            recoveredBlock156PC := 192.
        ].
        recoveredBlock156Step = 192 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local1.
            recoveredBlock156PC := 193.
        ].
        recoveredBlock156Step = 193 ifTrue: [
            recoveredBlock156Stack2 := recoveredBlock156Arg2.
            recoveredBlock156PC := 195.
        ].
        recoveredBlock156Step = 195 ifTrue: [
            recoveredBlock156Stack2 := (recoveredBlock156Stack2) + (-1).
            recoveredBlock156PC := 196.
        ].
        recoveredBlock156Step = 196 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) * (recoveredBlock156Stack2).
            recoveredBlock156PC := 197.
        ].
        recoveredBlock156Step = 197 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) + (recoveredBlock156Stack1).
            recoveredBlock156PC := 198.
        ].
        recoveredBlock156Step = 198 ifTrue: [
            recoveredBlock156Local3 := recoveredBlock156Stack0.
            recoveredBlock156PC := 199.
        ].
        recoveredBlock156Step = 199 ifTrue: [
            recoveredBlock156Stack0 := recoveredLocal2.
            recoveredBlock156PC := 202.
        ].
        recoveredBlock156Step = 202 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local1.
            recoveredBlock156PC := 203.
        ].
        recoveredBlock156Step = 203 ifTrue: [
            recoveredBlock156Stack2 := recoveredBlock156Arg2.
            recoveredBlock156PC := 205.
        ].
        recoveredBlock156Step = 205 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) * (recoveredBlock156Stack2).
            recoveredBlock156PC := 206.
        ].
        recoveredBlock156Step = 206 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) + (recoveredBlock156Stack1).
            recoveredBlock156PC := 207.
        ].
        recoveredBlock156Step = 207 ifTrue: [
            recoveredBlock156Local2 := recoveredBlock156Stack0.
            recoveredBlock156PC := 208.
        ].
        recoveredBlock156Step = 208 ifTrue: [
            recoveredBlock156Stack0 := 'Looking up system: \'.
            recoveredBlock156PC := 210.
        ].
        recoveredBlock156Step = 210 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Arg1.
            recoveredBlock156PC := 212.
        ].
        recoveredBlock156Step = 212 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) asString.
            recoveredBlock156PC := 214.
        ].
        recoveredBlock156Step = 214 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) , (recoveredBlock156Stack1).
            recoveredBlock156PC := 216.
        ].
        recoveredBlock156Step = 216 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) withCrs.
            recoveredBlock156PC := 218.
        ].
        recoveredBlock156Step = 218 ifTrue: [
            recoveredLocal1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 221.
        ].
        recoveredBlock156Step = 221 ifTrue: [
            recoveredBlock156Stack0 := recoveredLocal5.
            recoveredBlock156PC := 224.
        ].
        recoveredBlock156Step = 224 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 225.
        ].
        recoveredBlock156Step = 225 ifTrue: [
            recoveredBlock156Stack2 := recoveredLocal1.
            recoveredBlock156PC := 228.
        ].
        recoveredBlock156Step = 228 ifTrue: [
            (recoveredBlock156Stack1) messageString: (recoveredBlock156Stack2).
            recoveredBlock156PC := 230.
        ].
        recoveredBlock156Step = 230 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local3.
            recoveredBlock156PC := 231.
        ].
        recoveredBlock156Step = 231 ifTrue: [
            (recoveredBlock156Stack0) fractionComplete: (recoveredBlock156Stack1).
            recoveredBlock156PC := 233.
        ].
        recoveredBlock156Step = 233 ifTrue: [
            recoveredBlock156Stack0 := ASDHwAccessETarget.
            recoveredBlock156PC := 235.
        ].
        recoveredBlock156Step = 235 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal1.
            recoveredBlock156PC := 238.
        ].
        recoveredBlock156Step = 238 ifTrue: [
            (recoveredBlock156Stack0) appendToLog: (recoveredBlock156Stack1).
            recoveredBlock156PC := 240.
        ].
        recoveredBlock156Step = 240 ifTrue: [
            recoveredBlock156Stack0 := EtasHwcHardwareSelectionSystemItem.
            recoveredBlock156PC := 242.
        ].
        recoveredBlock156Step = 242 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Arg1.
            recoveredBlock156PC := 244.
        ].
        recoveredBlock156Step = 244 ifTrue: [
            recoveredBlock156Stack2 := self.
            recoveredBlock156PC := 245.
        ].
        recoveredBlock156Step = 245 ifTrue: [
            recoveredBlock156Stack3 := recoveredLocal5.
            recoveredBlock156PC := 248.
        ].
        recoveredBlock156Step = 248 ifTrue: [
            recoveredBlock156Stack4 := recoveredBlock156Local3.
            recoveredBlock156PC := 249.
        ].
        recoveredBlock156Step = 249 ifTrue: [
            recoveredBlock156Stack5 := recoveredBlock156Local2.
            recoveredBlock156PC := 250.
        ].
        recoveredBlock156Step = 250 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) createFor: (recoveredBlock156Stack1) parent: (recoveredBlock156Stack2) progressDialog: (recoveredBlock156Stack3) min: (recoveredBlock156Stack4) max: (recoveredBlock156Stack5).
            recoveredBlock156PC := 253.
        ].
        recoveredBlock156Step = 253 ifTrue: [
            recoveredBlock156Local4 := recoveredBlock156Stack0.
            recoveredBlock156PC := 254.
        ].
        recoveredBlock156Step = 254 ifTrue: [
            recoveredBlock156Stack0 := self.
            recoveredBlock156PC := 255.
        ].
        recoveredBlock156Step = 255 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) viewableSystemTypeIds.
            recoveredBlock156PC := 257.
        ].
        recoveredBlock156Step = 257 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local4.
            recoveredBlock156PC := 258.
        ].
        recoveredBlock156Step = 258 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) hwAccess.
            recoveredBlock156PC := 260.
        ].
        recoveredBlock156Step = 260 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) typeId.
            recoveredBlock156PC := 262.
        ].
        recoveredBlock156Step = 262 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) indexOf: (recoveredBlock156Stack1).
            recoveredBlock156PC := 264.
        ].
        recoveredBlock156Step = 264 ifTrue: [
            recoveredBlock156Stack1 := 0.
            recoveredBlock156PC := 266.
        ].
        recoveredBlock156Step = 266 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) > (recoveredBlock156Stack1).
            recoveredBlock156PC := 267.
        ].
        recoveredBlock156Step = 267 ifTrue: [
            (recoveredBlock156Stack0) ifTrue: [recoveredBlock156PC := 270] ifFalse: [recoveredBlock156PC := 280].
        ].
        recoveredBlock156Step = 270 ifTrue: [
            recoveredBlock156Stack0 := recoveredLocal7.
            recoveredBlock156PC := 273.
        ].
        recoveredBlock156Step = 273 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local4.
            recoveredBlock156PC := 274.
        ].
        recoveredBlock156Step = 274 ifTrue: [
            (recoveredBlock156Stack0) add: (recoveredBlock156Stack1).
            recoveredBlock156PC := 276.
        ].
        recoveredBlock156Step = 276 ifTrue: [
            recoveredBlock156PC := 300.
        ].
        recoveredBlock156Step = 280 ifTrue: [
            recoveredBlock156Stack0 := 'Not a viewable system: \'.
            recoveredBlock156PC := 282.
        ].
        recoveredBlock156Step = 282 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Arg1.
            recoveredBlock156PC := 284.
        ].
        recoveredBlock156Step = 284 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) asString.
            recoveredBlock156PC := 286.
        ].
        recoveredBlock156Step = 286 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) , (recoveredBlock156Stack1).
            recoveredBlock156PC := 288.
        ].
        recoveredBlock156Step = 288 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) withCrs.
            recoveredBlock156PC := 290.
        ].
        recoveredBlock156Step = 290 ifTrue: [
            recoveredLocal1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 293.
        ].
        recoveredBlock156Step = 293 ifTrue: [
            recoveredBlock156Stack0 := ASDHwAccessETarget.
            recoveredBlock156PC := 295.
        ].
        recoveredBlock156Step = 295 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal1.
            recoveredBlock156PC := 298.
        ].
        recoveredBlock156Step = 298 ifTrue: [
            (recoveredBlock156Stack0) appendToLog: (recoveredBlock156Stack1).
            recoveredBlock156PC := 300.
        ].
        recoveredBlock156Step = 300 ifTrue: [
            recoveredBlock156Stack0 := 'Finished looking up system: \'.
            recoveredBlock156PC := 302.
        ].
        recoveredBlock156Step = 302 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local4.
            recoveredBlock156PC := 303.
        ].
        recoveredBlock156Step = 303 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) label.
            recoveredBlock156PC := 305.
        ].
        recoveredBlock156Step = 305 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) , (recoveredBlock156Stack1).
            recoveredBlock156PC := 307.
        ].
        recoveredBlock156Step = 307 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) withCrs.
            recoveredBlock156PC := 309.
        ].
        recoveredBlock156Step = 309 ifTrue: [
            recoveredLocal1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 312.
        ].
        recoveredBlock156Step = 312 ifTrue: [
            recoveredBlock156Stack0 := recoveredLocal5.
            recoveredBlock156PC := 315.
        ].
        recoveredBlock156Step = 315 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Stack0.
            recoveredBlock156PC := 316.
        ].
        recoveredBlock156Step = 316 ifTrue: [
            recoveredBlock156Stack2 := recoveredLocal1.
            recoveredBlock156PC := 319.
        ].
        recoveredBlock156Step = 319 ifTrue: [
            (recoveredBlock156Stack1) messageString: (recoveredBlock156Stack2).
            recoveredBlock156PC := 321.
        ].
        recoveredBlock156Step = 321 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local2.
            recoveredBlock156PC := 322.
        ].
        recoveredBlock156Step = 322 ifTrue: [
            (recoveredBlock156Stack0) fractionComplete: (recoveredBlock156Stack1).
            recoveredBlock156PC := 324.
        ].
        recoveredBlock156Step = 324 ifTrue: [
            recoveredBlock156Stack0 := ASDHwAccessETarget.
            recoveredBlock156PC := 326.
        ].
        recoveredBlock156Step = 326 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal1.
            recoveredBlock156PC := 329.
        ].
        recoveredBlock156Step = 329 ifTrue: [
            recoveredBlock156Stack0 := (recoveredBlock156Stack0) appendToLog: (recoveredBlock156Stack1).
            recoveredBlock156PC := 331.
        ].
        recoveredBlock156Step = 331 ifTrue: [
            recoveredBlock156Result := recoveredBlock156Stack0.
            recoveredBlock156Done := true.
        ].
    ].
    recoveredBlock156Result
].
    (recoveredValue36) doWithIndex: (recoveredValue37).
    recoveredValue38 := recoveredLocal7.
    (self) childItems: (recoveredValue38).
    recoveredLocal1 := 'Finished'.
    recoveredValue39 := recoveredLocal5.
    recoveredValue40 := recoveredValue39.
    recoveredValue41 := recoveredLocal1.
    (recoveredValue40) messageString: (recoveredValue41).
    (recoveredValue39) fractionComplete: (1).
    recoveredValue42 := ASDHwAccessETarget.
    recoveredValue43 := recoveredLocal1.
    (recoveredValue42) appendToLog: (recoveredValue43).
    recoveredValue44 := recoveredLocal5.
    (recoveredValue44) close.
    recoveredValue45 := recoveredLocal7.
    ^recoveredValue45
! !

