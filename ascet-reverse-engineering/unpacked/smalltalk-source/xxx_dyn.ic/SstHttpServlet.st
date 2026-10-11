"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000ecc; bytecode file offset 0x6209c"
!SstHttpServlet methodsFor: 'recovered'!
getServletInfo
    | recoveredValue0 |
    recoveredValue0 := MxSSTH49.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001bd0; bytecode file offset 0x62c94"
!SstHttpServlet methodsFor: 'recovered'!
getLastModified: recoveredArg1
    ^-1
! !

"xxx_dyn.ic method 0x20001c34; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doTrace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001c40; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001c64; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doPut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001c94; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doPost: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001cc4; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doGet: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20001cd0; bytecode file offset 0x62d98"
!SstHttpServlet methodsFor: 'recovered'!
doDelete: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) notImplementedResponse: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002c38; bytecode file offset 0x63d44"
!SstHttpServlet methodsFor: 'recovered'!
responseHeaderFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) header.
    recoveredValue2 := (recoveredValue1) responseHeader.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20008b6c; bytecode file offset 0x69c38"
!SstHttpServlet methodsFor: 'recovered'!
errorReply: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) errorReply: (recoveredValue0) message: ('') for: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2001340c; bytecode file offset 0x744f4"
!SstHttpServlet methodsFor: 'recovered'!
notImplementedResponse: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := HttpNotImplemented.
    recoveredValue1 := NlsCatSSTH.
    recoveredValue2 := (recoveredValue1) indexedMsg: (2).
    recoveredValue3 := (self) getServletInfo.
    recoveredValue4 := (self) name.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getServletPath.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getMethod.
    recoveredValue9 := (recoveredValue2) bindWith: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (self) errorReply: (recoveredValue0) message: (recoveredValue9) for: (recoveredValue10).
    ^recoveredValue11
! !

"xxx_dyn.ic method 0x2001492c; bytecode file offset 0x75a18"
!SstHttpServlet methodsFor: 'recovered'!
errorReply: recoveredArg1 message: recoveredArg2 for: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) getServletContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fetchErrorPageFor: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) bindWith: (recoveredValue3) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) header.
    recoveredValue8 := (recoveredValue7) responseHeader.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) status: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    (recoveredValue11) contentType: ('text/html').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) size.
    (recoveredValue8) contentLength: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"xxx_dyn.ic method 0x20016e88; bytecode file offset 0x77f70"
!SstHttpServlet methodsFor: 'recovered'!
service: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) requestMap.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) header.
    recoveredValue4 := (recoveredValue3) command.
    recoveredValue5 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := Array.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) with: (recoveredBlock11Value2).
    recoveredBlock11Value4 := (self) perform: (recoveredBlock11Value0) withArguments: (recoveredBlock11Value3).
    ^recoveredBlock11Value4
].
    (recoveredValue1) at: (recoveredValue4) ifPresent: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) notImplementedResponse: (recoveredValue6).
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x2002c084; bytecode file offset 0x8d1a8"
!SstHttpServlet methodsFor: 'recovered'!
doHead: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := HttpGetMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (self) notImplementedResponse: (recoveredBlock8Value0).
    ^recoveredBlock8Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := Object.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) sstToBeFixed.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsMessage.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) status.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := HttpOk.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) responseHeaderFor: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) status.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := HttpOk.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstIsDeferredContent.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := HttpContentLengthKey.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 |
    recoveredBlock118Value0 := recoveredLocal2.
    recoveredBlock118Value1 := (recoveredBlock118Value0) sstHttpString.
    recoveredBlock118Value2 := (recoveredBlock118Value1) size.
    recoveredBlock118Value3 := (recoveredBlock118Value2) printString.
    recoveredBlock118Value3
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := HttpContentTypeKey.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock138Value0 recoveredBlock138Value1 |
    recoveredBlock138Value0 := recoveredLocal2.
    recoveredBlock138Value1 := (recoveredBlock138Value0) sstHttpType.
    recoveredBlock138Value1
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := SstNullReturnValue.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

