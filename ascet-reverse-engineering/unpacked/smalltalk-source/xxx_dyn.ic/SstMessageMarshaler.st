"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000238; bytecode file offset 0x6147c"
!SstMessageMarshaler methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000378; bytecode file offset 0x6147c"
!SstMessageMarshaler methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x20000398; bytecode file offset 0x6147c"
!SstMessageMarshaler methodsFor: 'recovered'!
initialize
    ^self
! !

"xxx_dyn.ic method 0x200003b0; bytecode file offset 0x6147c"
!SstMessageMarshaler methodsFor: 'recovered'!
startUp
    ^self
! !

"xxx_dyn.ic method 0x200003e8; bytecode file offset 0x615ac"
!SstMessageMarshaler methodsFor: 'recovered'!
initializeFrom: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000438; bytecode file offset 0x615ac"
!SstMessageMarshaler methodsFor: 'recovered'!
release: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200024b4; bytecode file offset 0x635c4"
!SstMessageMarshaler methodsFor: 'recovered'!
space
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) space.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002740; bytecode file offset 0x63814"
!SstMessageMarshaler methodsFor: 'recovered'!
clear
    handler := nil.
    ^self
! !

"xxx_dyn.ic method 0x2000389c; bytecode file offset 0x649e8"
!SstMessageMarshaler methodsFor: 'recovered'!
handler
    | recoveredValue0 |
    recoveredValue0 := handler.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200046f8; bytecode file offset 0x6592c"
!SstMessageMarshaler methodsFor: 'recovered'!
sstIsSystemObject
    ^true
! !

"xxx_dyn.ic method 0x20006b90; bytecode file offset 0x67c64"
!SstMessageMarshaler methodsFor: 'recovered'!
readStreamFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ReadStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) contents.
    recoveredValue3 := (recoveredValue2) makeOneRelative.
    recoveredValue4 := (recoveredValue0) on: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007e44; bytecode file offset 0x68f50"
!SstMessageMarshaler methodsFor: 'recovered'!
handler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008c8c; bytecode file offset 0x69d58"
!SstMessageMarshaler methodsFor: 'recovered'!
messageForReply: recoveredArg1 for: recoveredArg2 using: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) requestId.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) messageForRequest: (recoveredValue0) for: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000b8c0; bytecode file offset 0x6c998"
!SstMessageMarshaler methodsFor: 'recovered'!
writeStreamFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) ensureCapacityTo: (0).
    recoveredValue1 := WriteStream.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) contents.
    recoveredValue4 := (recoveredValue3) makeOneRelative.
    recoveredValue5 := (recoveredValue1) on: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2000ba60; bytecode file offset 0x6cb38"
!SstMessageMarshaler methodsFor: 'recovered'!
messageFrom: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) collection.
    recoveredValue3 := (recoveredValue2) reference.
    (recoveredValue0) totalContents: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) position.
    (recoveredValue4) contentsSize: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x2000ebc0; bytecode file offset 0x6fcbc"
!SstMessageMarshaler methodsFor: 'recovered'!
replyForRemoteMarshalError: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) replyClass.
    recoveredValue3 := handler.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue2) receiver: (recoveredValue3) selector: ('handleMarshalingError:forReplyWith:') arguments: (recoveredValue7).
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x2000ebe0; bytecode file offset 0x6fcbc"
!SstMessageMarshaler methodsFor: 'recovered'!
replyForLocalMarshalError: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := handler.
    recoveredValue1 := (recoveredValue0) configuration.
    recoveredValue2 := (recoveredValue1) replyClass.
    recoveredValue3 := handler.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue2) receiver: (recoveredValue3) selector: ('handleMarshalingError:forReplyWith:') arguments: (recoveredValue7).
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x20013ad8; bytecode file offset 0x74bb4"
!SstMessageMarshaler methodsFor: 'recovered'!
writeHeaderFor: recoveredArg1 id: recoveredArg2 on: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReply.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstRequestHeader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) replyForRequestId: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SstRequestHeader.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestForRequestId: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBytes.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001540c; bytecode file offset 0x764f4"
!SstMessageMarshaler methodsFor: 'recovered'!
convertToMarshallingError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := DBEncoding.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromString: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := AsciiEncoding.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstToAscii.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20017108; bytecode file offset 0x781f0"
!SstMessageMarshaler methodsFor: 'recovered'!
requestForLocalMarshalError: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) requestId.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidRequestId: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'handleMarshalingError:forRequest:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) arguments: (recoveredStack4) replyReceiver: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) markAsAsynchronous.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001e118; bytecode file offset 0x7f210"
!SstMessageMarshaler methodsFor: 'recovered'!
headerFrom: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 |
    recoveredBlock4Value0 := SstRequestHeader.
    recoveredBlock4Value1 := (recoveredBlock4Value0) new.
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (recoveredBlock4Value3) next.
    (recoveredBlock4Value2) type: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredBlock4Value1.
    recoveredBlock4Value6 := recoveredArg1.
    recoveredBlock4Value7 := (recoveredBlock4Value6) next: (4).
    recoveredBlock4Value8 := (recoveredBlock4Value7) sst32At: (0).
    (recoveredBlock4Value5) requestId: (recoveredBlock4Value8).
    recoveredBlock4Value9 := recoveredBlock4Value1.
    recoveredBlock4Value10 := recoveredArg2.
    recoveredBlock4Value11 := (recoveredBlock4Value10) sender.
    (recoveredBlock4Value9) sender: (recoveredBlock4Value11).
    recoveredBlock4Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:block2800ba30Arg1 | 
    | block2800ba30Value0 block2800ba30Value1 |
    block2800ba30Value0 := block2800ba30Arg1.
    block2800ba30Value1 := (block2800ba30Value0) exitWith: (nil).
    block2800ba30Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ea4c; bytecode file offset 0x7fb50"
!SstMessageMarshaler methodsFor: 'recovered'!
convertFromMarshallingError: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := AsciiEncoding.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstFromAscii.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := DBEncoding.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20021028; bytecode file offset 0x8211c"
!SstMessageMarshaler methodsFor: 'recovered'!
messageForErrorReplyTo: recoveredArg1 using: recoveredArg2 error: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := (self) writeStreamFor: (recoveredBlock4Value0).
    recoveredLocal1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := recoveredLocal1.
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredBlock4Value4 := SstRequestHeader.
    recoveredBlock4Value5 := recoveredArg1.
    recoveredBlock4Value6 := (recoveredBlock4Value5) requestId.
    recoveredBlock4Value7 := (recoveredBlock4Value4) errorForRequestId: (recoveredBlock4Value6).
    recoveredBlock4Value8 := (recoveredBlock4Value7) asBytes.
    (recoveredBlock4Value3) nextPutAll: (recoveredBlock4Value8).
    recoveredBlock4Value9 := recoveredArg3.
    recoveredBlock4Value10 := (recoveredBlock4Value9) errorObject.
    recoveredBlock4Value11 := (recoveredBlock4Value10) printString.
    recoveredBlock4Value12 := (self) convertToMarshallingError: (recoveredBlock4Value11).
    (recoveredBlock4Value2) nextPutAll: (recoveredBlock4Value12).
    recoveredBlock4Value13 := recoveredArg2.
    recoveredBlock4Value14 := recoveredLocal1.
    recoveredBlock4Value15 := (self) messageFrom: (recoveredBlock4Value13) and: (recoveredBlock4Value14).
    recoveredBlock4Value15
].
    recoveredValue1 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := recoveredLocal1.
    recoveredBlock54Value1 := (self) release: (recoveredBlock54Value0).
    recoveredBlock54Value1
].
    recoveredValue2 := (recoveredValue0) ensure: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200245dc; bytecode file offset 0x856bc"
!SstMessageMarshaler methodsFor: 'recovered'!
messageForRequest: recoveredArg1 for: recoveredArg2 using: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg3.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) writeStreamFor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack0) writeHeaderFor: (recoveredBlock4Stack1) id: (recoveredBlock4Stack2) on: (recoveredBlock4Stack3).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) nextRequestPut: (recoveredBlock4Stack1) on: (recoveredBlock4Stack2).
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isSstError.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 48] ifFalse: [recoveredBlock4PC := 52].
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal2.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg3.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) messageFrom: (recoveredBlock4Stack1) and: (recoveredBlock4Stack2).
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock66Value0 recoveredBlock66Value1 |
    recoveredBlock66Value0 := recoveredLocal1.
    recoveredBlock66Value1 := (self) release: (recoveredBlock66Value0).
    recoveredBlock66Value1
].
    (recoveredValue0) ensure: (recoveredValue1).
    recoveredValue2 := recoveredLocal2.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2002d190; bytecode file offset 0x8e2b0"
!SstMessageMarshaler methodsFor: 'recovered'!
loadRequestFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) readStreamFor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredLocal4 := recoveredBlock4Stack0.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal4.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) headerFrom: (recoveredBlock4Stack1) for: (recoveredBlock4Stack2).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredLocal3 := recoveredBlock4Stack1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 36] ifFalse: [recoveredBlock4PC := 34].
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal3.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isMarshalingError.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 44] ifFalse: [recoveredBlock4PC := 84].
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) handler.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) configuration.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) requestClass.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            (recoveredBlock4Stack0) header: (recoveredBlock4Stack1).
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := SstError.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack2 := SstRemoteMarshalingError.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack4 := recoveredLocal4.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) upToEnd.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) asString.
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) convertFromMarshallingError: (recoveredBlock4Stack4).
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) for: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3).
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal2.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) replyForRemoteMarshalError: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal4.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) nextRequestFrom: (recoveredBlock4Stack2).
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isSstError.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 100] ifFalse: [recoveredBlock4PC := 164].
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal3.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isReply.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 110] ifFalse: [recoveredBlock4PC := 137].
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) handler.
            recoveredBlock4PC := 112.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) configuration.
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) replyClass.
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 125.
        ].
        recoveredBlock4Step = 125 ifTrue: [
            (recoveredBlock4Stack0) header: (recoveredBlock4Stack1).
            recoveredBlock4PC := 127.
        ].
        recoveredBlock4Step = 127 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal2.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) replyForLocalMarshalError: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 138.
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) handler.
            recoveredBlock4PC := 139.
        ].
        recoveredBlock4Step = 139 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) configuration.
            recoveredBlock4PC := 141.
        ].
        recoveredBlock4Step = 141 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) requestClass.
            recoveredBlock4PC := 143.
        ].
        recoveredBlock4Step = 143 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 145.
        ].
        recoveredBlock4Step = 145 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 146.
        ].
        recoveredBlock4Step = 146 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 152.
        ].
        recoveredBlock4Step = 152 ifTrue: [
            (recoveredBlock4Stack0) header: (recoveredBlock4Stack1).
            recoveredBlock4PC := 154.
        ].
        recoveredBlock4Step = 154 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 155.
        ].
        recoveredBlock4Step = 155 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 158.
        ].
        recoveredBlock4Step = 158 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal2.
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 161 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) requestForLocalMarshalError: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2).
            recoveredBlock4PC := 163.
        ].
        recoveredBlock4Step = 163 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 164 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock165Value0 recoveredBlock165Value1 |
    recoveredBlock165Value0 := recoveredLocal4.
    recoveredBlock165Value1 := (self) release: (recoveredBlock165Value0).
    recoveredBlock165Value1
].
    (recoveredValue0) ensure: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal3.
    (recoveredValue2) header: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

