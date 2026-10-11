"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000108; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
getOutputStream
    ^self
! !

"xxx_dyn.ic method 0x20000110; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
setBufferSize
    ^self
! !

"xxx_dyn.ic method 0x20000118; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
getWriter
    ^self
! !

"xxx_dyn.ic method 0x20000150; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
flushBuffer
    ^self
! !

"xxx_dyn.ic method 0x20000298; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
getBufferSize
    ^self
! !

"xxx_dyn.ic method 0x20000328; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
isCommitted
    ^self
! !

"xxx_dyn.ic method 0x200003a8; bytecode file offset 0x6147c"
!SstHttpResponseHeader methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000448; bytecode file offset 0x615ac"
!SstHttpResponseHeader methodsFor: 'recovered'!
sendRedirect: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000498; bytecode file offset 0x615ac"
!SstHttpResponseHeader methodsFor: 'recovered'!
encodeRedirectURL: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200004a0; bytecode file offset 0x615ac"
!SstHttpResponseHeader methodsFor: 'recovered'!
encodeURL: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000510; bytecode file offset 0x615fc"
!SstHttpResponseHeader methodsFor: 'recovered'!
setIntHeader: recoveredArg1 value: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x20000518; bytecode file offset 0x615fc"
!SstHttpResponseHeader methodsFor: 'recovered'!
addDateHeader: recoveredArg1 value: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x20000530; bytecode file offset 0x615fc"
!SstHttpResponseHeader methodsFor: 'recovered'!
addIntHeader: recoveredArg1 value: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x20000538; bytecode file offset 0x615fc"
!SstHttpResponseHeader methodsFor: 'recovered'!
setDateHeader: recoveredArg1 value: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x2000072c; bytecode file offset 0x619a4"
!SstHttpResponseHeader methodsFor: 'recovered'!
getLocale
    | recoveredValue0 |
    recoveredValue0 := (self) contentLanguage.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001ffc; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
wwwAuthenticate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpWWWAuthenticateKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000200c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
proxyAuthenticate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpProxyAuthenticateKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000202c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
acceptRanges
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpAcceptRangesKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000213c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
server
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpServerKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000218c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
vary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpVaryKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200021bc; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
age
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpAgeKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000220c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
location
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpLocationKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000225c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
setCookie
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpSetCookieKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000232c; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
retryAfter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpRetryAfterKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200023cc; bytecode file offset 0x63558"
!SstHttpResponseHeader methodsFor: 'recovered'!
eTag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpETagKey.
    recoveredValue1 := (self) at: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20002c90; bytecode file offset 0x63d58"
!SstHttpResponseHeader methodsFor: 'recovered'!
containsHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20003de0; bytecode file offset 0x64ed4"
!SstHttpResponseHeader methodsFor: 'recovered'!
status
    | recoveredValue0 |
    recoveredValue0 := status.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200047a8; bytecode file offset 0x6592c"
!SstHttpResponseHeader methodsFor: 'recovered'!
isResponseHeader
    ^true
! !

"xxx_dyn.ic method 0x20004e04; bytecode file offset 0x65fa4"
!SstHttpResponseHeader methodsFor: 'recovered'!
setLocale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) contentLanguage: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20004e70; bytecode file offset 0x65fa4"
!SstHttpResponseHeader methodsFor: 'recovered'!
setContentType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) contentType: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20004ed0; bytecode file offset 0x65fa4"
!SstHttpResponseHeader methodsFor: 'recovered'!
setContentLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) contentLength: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20004edc; bytecode file offset 0x65fa4"
!SstHttpResponseHeader methodsFor: 'recovered'!
setStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) status: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x200061b4; bytecode file offset 0x672a0"
!SstHttpResponseHeader methodsFor: 'recovered'!
addHeader: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) at: (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200061d8; bytecode file offset 0x672a0"
!SstHttpResponseHeader methodsFor: 'recovered'!
setHeader: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006854; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
age: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpAgeKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200068a4; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
eTag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpETagKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200068d4; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
proxyAuthenticate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpProxyAuthenticateKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x200068f4; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
retryAfter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpRetryAfterKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006904; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
vary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpVaryKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006934; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
location: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpLocationKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006994; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
wwwAuthenticate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpWWWAuthenticateKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006a64; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
setCookie: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpSetCookieKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006aa4; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
acceptRanges: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpAcceptRangesKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006ad4; bytecode file offset 0x67c40"
!SstHttpResponseHeader methodsFor: 'recovered'!
server: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := HttpServerKey.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20006d34; bytecode file offset 0x67e10"
!SstHttpResponseHeader methodsFor: 'recovered'!
sendError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) sendError: (recoveredValue0) message: ('').
    ^self
! !

"xxx_dyn.ic method 0x200071a0; bytecode file offset 0x6826c"
!SstHttpResponseHeader methodsFor: 'recovered'!
sendError: recoveredArg1 message: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExSstHttpRequestError.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) signalWith: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20007628; bytecode file offset 0x686f4"
!SstHttpResponseHeader methodsFor: 'recovered'!
isInformationalResponse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) status.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) = ($1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007644; bytecode file offset 0x68710"
!SstHttpResponseHeader methodsFor: 'recovered'!
isSuccessfulResponse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) status.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) = ($2).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007660; bytecode file offset 0x6872c"
!SstHttpResponseHeader methodsFor: 'recovered'!
isRedirectionResponse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) status.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) = ($3).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000767c; bytecode file offset 0x68748"
!SstHttpResponseHeader methodsFor: 'recovered'!
isClientErrorResponse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) status.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) = ($4).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20007698; bytecode file offset 0x68764"
!SstHttpResponseHeader methodsFor: 'recovered'!
isServerErrorResponse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) status.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) = ($5).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200082c0; bytecode file offset 0x69404"
!SstHttpResponseHeader methodsFor: 'recovered'!
status: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    status := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200097ac; bytecode file offset 0x6a878"
!SstHttpResponseHeader methodsFor: 'recovered'!
responseCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := status.
    recoveredValue1 := (recoveredValue0) copyFrom: (1) to: (3).
    recoveredValue2 := (recoveredValue1) asNumber.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20009950; bytecode file offset 0x6aa20"
!SstHttpResponseHeader methodsFor: 'recovered'!
initialize
    super initialize.
    status := ''.
    ^self
! !

"xxx_dyn.ic method 0x2000daf4; bytecode file offset 0x6ebcc"
!SstHttpResponseHeader methodsFor: 'recovered'!
specifiesPersistentConnection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SstHttpCommunications.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) status.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPersistentConnectionSignifiedByResponseStatus: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super specifiesPersistentConnection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000dda0; bytecode file offset 0x6ee74"
!SstHttpResponseHeader methodsFor: 'recovered'!
writeFirstLineOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) version.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) space.
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := status.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"xxx_dyn.ic method 0x2000df64; bytecode file offset 0x6f038"
!SstHttpResponseHeader methodsFor: 'recovered'!
sstHttpStringOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) version.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := HttpVersion09.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super sstHttpStringOn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20013a28; bytecode file offset 0x74b00"
!SstHttpResponseHeader methodsFor: 'recovered'!
addCookie: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) setCookie.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstHttpString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setCookie: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := '%1;%2'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) sstHttpString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setCookie: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20019c38; bytecode file offset 0x7ad20"
!SstHttpResponseHeader methodsFor: 'recovered'!
signifiesEmptyBody
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HttpContentLengthKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifiesPersistentConnection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := SstHttpCommunications.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) status.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBodyEmptyForResponseStatus: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b13c; bytecode file offset 0x7c214"
!SstHttpResponseHeader methodsFor: 'recovered'!
getCharacterEncoding
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) contentType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := $;.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstSplitAt: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := $=.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) sstSplitAt: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20022a30; bytecode file offset 0x83b28"
!SstHttpResponseHeader methodsFor: 'recovered'!
initializeFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'HTTP/'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) retrieveBytes: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sameAs: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := HttpVersion09.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            version := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            status := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextLine.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstSplitAt: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            status := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            version := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkVersion.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHeaderFieldsFrom: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002543c; bytecode file offset 0x86548"
!SstHttpResponseHeader methodsFor: 'recovered'!
retrieveBytes: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := String.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredLocal1 := 1.
    recoveredValue3 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack4 := recoveredArg2.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) next.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) at: (recoveredBlock18Stack3) put: (recoveredBlock18Stack4).
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) + (1).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            (recoveredBlock18Stack1 isInteger) ifTrue: [(recoveredBlock18Stack1 > 0) ifTrue: [recoveredBlock18Stack1 := recoveredBlock18Stack1 - 1. recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 59]] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) + (-1).
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack3 := 0.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) >= (recoveredBlock18Stack3).
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 59].
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue4 := ExError.
    recoveredValue5 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredLocal2.
    recoveredBlock66Value2 := recoveredLocal1.
    recoveredBlock66Value3 := (recoveredBlock66Value2) + (-1).
    recoveredBlock66Value4 := (recoveredBlock66Value1) copyFrom: (1) to: (recoveredBlock66Value3).
    recoveredBlock66Value5 := (recoveredBlock66Value0) exitWith: (recoveredBlock66Value4).
    recoveredBlock66Value5
].
    recoveredValue6 := (recoveredValue3) when: (recoveredValue4) do: (recoveredValue5).
    ^recoveredValue6
! !

