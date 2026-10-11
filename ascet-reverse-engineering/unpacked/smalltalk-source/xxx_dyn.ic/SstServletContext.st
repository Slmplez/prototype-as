"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200008dc; bytecode file offset 0x619a4"
!SstServletContext methodsFor: 'recovered'!
contextPath
    | recoveredValue0 |
    recoveredValue0 := (self) containerKey.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000178c; bytecode file offset 0x62c08"
!SstServletContext methodsFor: 'recovered'!
defaultErrorPageTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorPageTemplate.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200017ac; bytecode file offset 0x62c08"
!SstServletContext methodsFor: 'recovered'!
getServerInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) getServerInfo.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003c8c; bytecode file offset 0x64d78"
!SstServletContext methodsFor: 'recovered'!
initParameters
    | recoveredValue0 |
    recoveredValue0 := initSettings.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200041ec; bytecode file offset 0x65328"
!SstServletContext methodsFor: 'recovered'!
defaultServlet
    | recoveredValue0 |
    recoveredValue0 := defaultServlet.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004ea0; bytecode file offset 0x65fa4"
!SstServletContext methodsFor: 'recovered'!
contextPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) containerKey: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x2000609c; bytecode file offset 0x671b8"
!SstServletContext methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) log: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x20007a20; bytecode file offset 0x68af0"
!SstServletContext methodsFor: 'recovered'!
setDefaultServlet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) servletSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    (self) defaultServlet: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x200086dc; bytecode file offset 0x69858"
!SstServletContext methodsFor: 'recovered'!
defaultServlet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultServlet := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009144; bytecode file offset 0x6a248"
!SstServletContext methodsFor: 'recovered'!
logTrace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MxSSTH60.
    recoveredValue1 := (self) contextPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) bindWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) log: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000915c; bytecode file offset 0x6a248"
!SstServletContext methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MxSSTH58.
    recoveredValue1 := (self) contextPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) bindWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) log: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009174; bytecode file offset 0x6a248"
!SstServletContext methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MxSSTH59.
    recoveredValue1 := (self) contextPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) bindWith: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) log: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x2000a14c; bytecode file offset 0x6b228"
!SstServletContext methodsFor: 'recovered'!
defaultServletClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) defaultServlet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultServlet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000af14; bytecode file offset 0x6bfe8"
!SstServletContext methodsFor: 'recovered'!
addServlet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) servletSpecs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getServletName.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) servletContext: (self).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2000bae8; bytecode file offset 0x6cbbc"
!SstServletContext methodsFor: 'recovered'!
defineExtensionMap: recoveredArg1 forServletNamed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) extensionMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) copyFrom: (2) to: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue4) put: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x2000be60; bytecode file offset 0x6cf2c"
!SstServletContext methodsFor: 'recovered'!
servletSpecs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := servletSpecs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            servletSpecs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := servletSpecs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000be84; bytecode file offset 0x6cf50"
!SstServletContext methodsFor: 'recovered'!
servletMaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := servletMaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            servletMaps := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := servletMaps.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000beb8; bytecode file offset 0x6cf84"
!SstServletContext methodsFor: 'recovered'!
extensionMap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extensionMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            extensionMap := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := extensionMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bf10; bytecode file offset 0x6cfdc"
!SstServletContext methodsFor: 'recovered'!
errorPages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorPages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            errorPages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := errorPages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000d250; bytecode file offset 0x6e324"
!SstServletContext methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    servletSpecs := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    servletMaps := recoveredValue3.
    ^self
! !

"xxx_dyn.ic method 0x20010c04; bytecode file offset 0x71ce4"
!SstServletContext methodsFor: 'recovered'!
defineServlet: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) servletSpecs.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := SstServletConfig.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) servletContext: (self).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) servletName: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) className: (recoveredValue8).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x20010e98; bytecode file offset 0x71f74"
!SstServletContext methodsFor: 'recovered'!
addServletMap: recoveredArg1 forServletNamed: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) servletMaps.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block2800ac20Value0 block2800ac20Value1 |
    block2800ac20Value0 := OrderedCollection.
    block2800ac20Value1 := (block2800ac20Value0) new.
    block2800ac20Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20013dd4; bytecode file offset 0x74eac"
!SstServletContext methodsFor: 'recovered'!
handlesRequest: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) getRequestUri.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) contextPath.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRequestUri.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) contextPath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) contextPath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sameAs: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a510; bytecode file offset 0x7b5f4"
!SstServletContext methodsFor: 'recovered'!
initializeRequest: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) contextPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) contextPath: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveServletForRequest: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) servletPath: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) initializePathInfo.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001cadc; bytecode file offset 0x7dbcc"
!SstServletContext methodsFor: 'recovered'!
startUpServlets
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) servletMaps.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) servletSpecs.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) at: (recoveredBlock11Stack3).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) loadAtStartUp.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 32] ifFalse: [recoveredBlock11PC := 46].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := Association.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg2.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) first.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Local1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) key: (recoveredBlock11Stack3) value: (recoveredBlock11Stack4).
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20020a08; bytecode file offset 0x81afc"
!SstServletContext methodsFor: 'recovered'!
initializeFromConfiguration: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) contextParameters.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            initSettings := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) contextPath.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            containerKey := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sessionConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            clientSessionManagerConfiguration := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) servlets.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            servletSpecs := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) servletMappings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            servletMaps := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorPages.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            errorPages := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultServlet.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := servletSpecs.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultServlet.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            defaultServlet := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := servletSpecs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) servletContext: (self).
    recoveredBlock47Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) configureExtensionMap.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ensureRealized.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20021530; bytecode file offset 0x82624"
!SstServletContext methodsFor: 'recovered'!
fetchErrorPageFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorPages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) errorPages.
    recoveredBlock6Value1 := [].
    recoveredBlock6Value2 := (recoveredBlock6Value0) at: ('DEFAULT') ifAbsent: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultErrorPageTemplate.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) getResource: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) fetch.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := '%1: %2'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultErrorPageTemplate.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200246dc; bytecode file offset 0x857d4"
!SstServletContext methodsFor: 'recovered'!
getResource: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRealPath: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := $/.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyReplacing: (recoveredStack1) withObject: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := $/.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := '/'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := $|.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := SstFileUrl.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'file://'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20026d0c; bytecode file offset 0x87e10"
!SstServletContext methodsFor: 'recovered'!
getRealPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CFS'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := CfsDirectoryDescriptor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathSeparator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyReplacing: (recoveredStack2) withObject: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := HttpDocumentRoot.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInitParameter: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpDirectory.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := '%1%2%3'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpDirectory.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparatorString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20028e38; bytecode file offset 0x89f30"
!SstServletContext methodsFor: 'recovered'!
configureExtensionMap
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) servletMaps.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg2.
    recoveredBlock11Value1 := (recoveredBlock11Value0) copy.
    recoveredBlock11Value2 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Stack0 recoveredBlock11Block22Stack1 recoveredBlock11Block22Stack2 recoveredBlock11Block22Stack3 recoveredBlock11Block22Stack4 recoveredBlock11Block22PC recoveredBlock11Block22Step recoveredBlock11Block22Done recoveredBlock11Block22Result |
    recoveredBlock11Block22Stack0 := self.
    recoveredBlock11Block22PC := 28.
    recoveredBlock11Block22Done := false.
    [recoveredBlock11Block22Done not] whileTrue: [
        recoveredBlock11Block22Step := recoveredBlock11Block22PC.
        recoveredBlock11Block22Step = 28 ifTrue: [
            recoveredBlock11Block22Stack1 := nil.
            recoveredBlock11Block22PC := 29.
        ].
        recoveredBlock11Block22Step = 29 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 30.
        ].
        recoveredBlock11Block22Step = 30 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) size.
            recoveredBlock11Block22PC := 32.
        ].
        recoveredBlock11Block22Step = 32 ifTrue: [
            recoveredBlock11Block22Stack3 := 1.
            recoveredBlock11Block22PC := 34.
        ].
        recoveredBlock11Block22Step = 34 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) > (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 35.
        ].
        recoveredBlock11Block22Step = 35 ifTrue: [
            (recoveredBlock11Block22Stack2) ifTrue: [recoveredBlock11Block22PC := 38] ifFalse: [recoveredBlock11Block22PC := 95].
        ].
        recoveredBlock11Block22Step = 38 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 39.
        ].
        recoveredBlock11Block22Step = 39 ifTrue: [
            recoveredBlock11Block22Stack3 := 1.
            recoveredBlock11Block22PC := 41.
        ].
        recoveredBlock11Block22Step = 41 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) at: (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 43.
        ].
        recoveredBlock11Block22Step = 43 ifTrue: [
            recoveredBlock11Block22Stack3 := $*.
            recoveredBlock11Block22PC := 46.
        ].
        recoveredBlock11Block22Step = 46 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) = (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 47.
        ].
        recoveredBlock11Block22Step = 47 ifTrue: [
            (recoveredBlock11Block22Stack2) ifTrue: [recoveredBlock11Block22PC := 50] ifFalse: [recoveredBlock11Block22PC := 95].
        ].
        recoveredBlock11Block22Step = 50 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 51.
        ].
        recoveredBlock11Block22Step = 51 ifTrue: [
            recoveredBlock11Block22Stack3 := 2.
            recoveredBlock11Block22PC := 53.
        ].
        recoveredBlock11Block22Step = 53 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) at: (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 55.
        ].
        recoveredBlock11Block22Step = 55 ifTrue: [
            recoveredBlock11Block22Stack3 := $..
            recoveredBlock11Block22PC := 58.
        ].
        recoveredBlock11Block22Step = 58 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) = (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 59.
        ].
        recoveredBlock11Block22Step = 59 ifTrue: [
            (recoveredBlock11Block22Stack2) ifTrue: [recoveredBlock11Block22PC := 62] ifFalse: [recoveredBlock11Block22PC := 95].
        ].
        recoveredBlock11Block22Step = 62 ifTrue: [
            recoveredBlock11Block22PC := 63.
        ].
        recoveredBlock11Block22Step = 63 ifTrue: [
            recoveredBlock11Block22Stack1 := self.
            recoveredBlock11Block22PC := 64.
        ].
        recoveredBlock11Block22Step = 64 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 65.
        ].
        recoveredBlock11Block22Step = 65 ifTrue: [
            recoveredBlock11Block22Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block22PC := 68.
        ].
        recoveredBlock11Block22Step = 68 ifTrue: [
            (recoveredBlock11Block22Stack1) defineExtensionMap: (recoveredBlock11Block22Stack2) forServletNamed: (recoveredBlock11Block22Stack3).
            recoveredBlock11Block22PC := 70.
        ].
        recoveredBlock11Block22Step = 70 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredBlock11Arg2.
            recoveredBlock11Block22PC := 73.
        ].
        recoveredBlock11Block22Step = 73 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Block22Arg1.
            recoveredBlock11Block22PC := 74.
        ].
        recoveredBlock11Block22Step = 74 ifTrue: [
            (recoveredBlock11Block22Stack1) remove: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 76.
        ].
        recoveredBlock11Block22Step = 76 ifTrue: [
            recoveredBlock11Block22Stack1 := nil.
            recoveredBlock11Block22PC := 77.
        ].
        recoveredBlock11Block22Step = 77 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Arg2.
            recoveredBlock11Block22PC := 80.
        ].
        recoveredBlock11Block22Step = 80 ifTrue: [
            recoveredBlock11Block22Stack2 := (recoveredBlock11Block22Stack2) isEmpty.
            recoveredBlock11Block22PC := 82.
        ].
        recoveredBlock11Block22Step = 82 ifTrue: [
            (recoveredBlock11Block22Stack2) ifTrue: [recoveredBlock11Block22PC := 86] ifFalse: [recoveredBlock11Block22PC := 95].
        ].
        recoveredBlock11Block22Step = 86 ifTrue: [
            recoveredBlock11Block22PC := 87.
        ].
        recoveredBlock11Block22Step = 87 ifTrue: [
            recoveredBlock11Block22Stack1 := recoveredLocal1.
            recoveredBlock11Block22PC := 90.
        ].
        recoveredBlock11Block22Step = 90 ifTrue: [
            recoveredBlock11Block22Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block22PC := 93.
        ].
        recoveredBlock11Block22Step = 93 ifTrue: [
            recoveredBlock11Block22Stack1 := (recoveredBlock11Block22Stack1) add: (recoveredBlock11Block22Stack2).
            recoveredBlock11Block22PC := 95.
        ].
        recoveredBlock11Block22Step = 95 ifTrue: [
            recoveredBlock11Block22Result := recoveredBlock11Block22Stack1.
            recoveredBlock11Block22Done := true.
        ].
    ].
    recoveredBlock11Block22Result
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 |
    recoveredBlock104Value0 := (self) servletMaps.
    recoveredBlock104Value1 := recoveredBlock104Arg1.
    recoveredBlock104Value2 := (recoveredBlock104Value0) removeKey: (recoveredBlock104Value1).
    recoveredBlock104Value2
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"xxx_dyn.ic method 0x2002c254; bytecode file offset 0x8d39c"
!SstServletContext methodsFor: 'recovered'!
configurationSummaryString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800c1c8Arg1 | 
    | block2800c1c8Local1 block2800c1c8Value0 block2800c1c8Value1 block2800c1c8Value2 block2800c1c8Value3 block2800c1c8Value4 block2800c1c8Value5 block2800c1c8Value6 block2800c1c8Value7 block2800c1c8Value8 block2800c1c8Value9 block2800c1c8Value10 block2800c1c8Value11 block2800c1c8Value12 block2800c1c8Value13 block2800c1c8Value14 |
    block2800c1c8Value0 := WriteStream.
    block2800c1c8Value1 := String.
    block2800c1c8Value2 := (block2800c1c8Value1) new.
    block2800c1c8Value3 := (block2800c1c8Value0) on: (block2800c1c8Value2).
    block2800c1c8Value4 := block2800c1c8Value3.
    block2800c1c8Local1 := block2800c1c8Value4.
    block2800c1c8Value5 := block2800c1c8Value3.
    block2800c1c8Value6 := block2800c1c8Arg1.
    block2800c1c8Value7 := (block2800c1c8Value6) class.
    block2800c1c8Value8 := (block2800c1c8Value7) name.
    (block2800c1c8Value5) nextPutAll: (block2800c1c8Value8).
    (block2800c1c8Value3) nextPutAll: (' {').
    block2800c1c8Value9 := block2800c1c8Arg1.
    block2800c1c8Value10 := [:block2800c1c8Block32Arg1 :block2800c1c8Block32Arg2 | 
    | block2800c1c8Block32Value0 block2800c1c8Block32Value1 block2800c1c8Block32Value2 block2800c1c8Block32Value3 block2800c1c8Block32Value4 block2800c1c8Block32Value5 block2800c1c8Block32Value6 block2800c1c8Block32Value7 |
    block2800c1c8Block32Value0 := block2800c1c8Local1.
    block2800c1c8Block32Value1 := block2800c1c8Block32Value0.
    (block2800c1c8Block32Value1) cr.
    block2800c1c8Block32Value2 := block2800c1c8Block32Arg1.
    block2800c1c8Block32Value3 := (block2800c1c8Block32Value2) printString.
    block2800c1c8Block32Value4 := block2800c1c8Block32Arg2.
    block2800c1c8Block32Value5 := (block2800c1c8Block32Value4) printString.
    block2800c1c8Block32Value6 := ('   %1 -> %2') bindWith: (block2800c1c8Block32Value3) with: (block2800c1c8Block32Value5).
    block2800c1c8Block32Value7 := (block2800c1c8Block32Value0) nextPutAll: (block2800c1c8Block32Value6).
    block2800c1c8Block32Value7
].
    (block2800c1c8Value9) keysAndValuesDo: (block2800c1c8Value10).
    block2800c1c8Value11 := block2800c1c8Local1.
    block2800c1c8Value12 := block2800c1c8Value11.
    (block2800c1c8Value12) cr.
    block2800c1c8Value13 := block2800c1c8Value11.
    (block2800c1c8Value13) nextPutAll: ('}').
    block2800c1c8Value14 := (block2800c1c8Value11) contents.
    block2800c1c8Value14
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'ContextPath: %1\DefaultServlet: %2\ServletMaps: %3\InitParms: %4\ErrorPages: %5\SessionConfig: %6'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLineDelimiters.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := (recoveredStack5) contextPath.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) defaultServlet.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack5 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := (recoveredStack5) defaultServlet.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := (recoveredStack5) className.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := (recoveredStack5) asString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack6 := (recoveredStack6) servletMaps.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := (recoveredStack6) initParameters.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack6 := (recoveredStack6) errorPages.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := (recoveredStack5) sessionManagerConfiguration.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := (recoveredStack5) debugPrintString.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithArguments: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002e85c; bytecode file offset 0x8f964"
!SstServletContext methodsFor: 'recovered'!
resolveServletForRequest: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRequestUri.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) contextPath.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) contextPath.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := $?.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) servletMaps.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 :recoveredBlock121Arg2 | 
    | recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121Stack4 recoveredBlock121Stack5 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := nil.
            recoveredBlock121PC := 129.
        ].
        recoveredBlock121Step = 129 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg2.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Stack3 := [:recoveredBlock121Block130Arg1 | 
    | recoveredBlock121Block130Value0 recoveredBlock121Block130Value1 recoveredBlock121Block130Value2 |
    recoveredBlock121Block130Value0 := recoveredBlock121Block130Arg1.
    recoveredBlock121Block130Value1 := recoveredLocal5.
    recoveredBlock121Block130Value2 := (recoveredBlock121Block130Value0) sameAs: (recoveredBlock121Block130Value1).
    recoveredBlock121Block130Value2
].
            recoveredBlock121PC := 143.
        ].
        recoveredBlock121Step = 143 ifTrue: [
            recoveredBlock121Stack4 := [].
            recoveredBlock121PC := 145.
        ].
        recoveredBlock121Step = 145 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) detect: (recoveredBlock121Stack3) ifNone: (recoveredBlock121Stack4).
            recoveredBlock121PC := 147.
        ].
        recoveredBlock121Step = 147 ifTrue: [
            (recoveredBlock121Stack2 == nil) ifTrue: [recoveredBlock121PC := 165] ifFalse: [recoveredBlock121PC := 150].
        ].
        recoveredBlock121Step = 150 ifTrue: [
            recoveredBlock121PC := 151.
        ].
        recoveredBlock121Step = 151 ifTrue: [
            recoveredBlock121Stack1 := Association.
            recoveredBlock121PC := 153.
        ].
        recoveredBlock121Step = 153 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal5.
            recoveredBlock121PC := 156.
        ].
        recoveredBlock121Step = 156 ifTrue: [
            recoveredBlock121Stack3 := self.
            recoveredBlock121PC := 157.
        ].
        recoveredBlock121Step = 157 ifTrue: [
            recoveredBlock121Stack3 := (recoveredBlock121Stack3) servletSpecs.
            recoveredBlock121PC := 159.
        ].
        recoveredBlock121Step = 159 ifTrue: [
            recoveredBlock121Stack4 := recoveredBlock121Arg1.
            recoveredBlock121PC := 160.
        ].
        recoveredBlock121Step = 160 ifTrue: [
            recoveredBlock121Stack3 := (recoveredBlock121Stack3) at: (recoveredBlock121Stack4).
            recoveredBlock121PC := 162.
        ].
        recoveredBlock121Step = 162 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) key: (recoveredBlock121Stack2) value: (recoveredBlock121Stack3).
            recoveredBlock121PC := 164.
        ].
        recoveredBlock121Step = 164 ifTrue: [
            ^recoveredBlock121Stack1
        ].
        recoveredBlock121Step = 165 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) reverse.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := $/.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexOf: (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := extensionMap.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverse.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := extensionMap.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := [:recoveredBlock256Arg1 | 
    | recoveredBlock256Value0 recoveredBlock256Value1 recoveredBlock256Value2 recoveredBlock256Value3 recoveredBlock256Value4 recoveredBlock256Value5 |
    recoveredBlock256Value0 := Association.
    recoveredBlock256Value1 := recoveredLocal1.
    recoveredBlock256Value2 := (self) servletSpecs.
    recoveredBlock256Value3 := recoveredBlock256Arg1.
    recoveredBlock256Value4 := (recoveredBlock256Value2) at: (recoveredBlock256Value3).
    recoveredBlock256Value5 := (recoveredBlock256Value0) key: (recoveredBlock256Value1) value: (recoveredBlock256Value4).
    ^recoveredBlock256Value5
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

