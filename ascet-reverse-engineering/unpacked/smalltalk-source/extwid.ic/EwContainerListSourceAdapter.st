"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20007cf0; bytecode file offset 0x58ac0"
!EwContainerListSourceAdapter methodsFor: 'recovered'!
cleanUpAfterDrag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) drawCursoredEmphasis.
    (recoveredValue0) ignoreInput: (false).
    ^self
! !

"extwid.ic method 0x20007d14; bytecode file offset 0x58ae4"
!EwContainerListSourceAdapter methodsFor: 'recovered'!
prepareToDrag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) eraseCursoredEmphasis.
    (recoveredValue0) ignoreInput: (true).
    ^self
! !

"extwid.ic method 0x20024c90; bytecode file offset 0x75a9c"
!EwContainerListSourceAdapter methodsFor: 'recovered'!
deconfigure
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := XmNdestroyCallback.
    (recoveredValue0) removeCallback: (recoveredValue1) receiver: (self) selector: ('destroy:clientData:callData:') clientData: (nil).
    (self) deregister.
    recoveredValue2 := EwDragAndDropManager.
    recoveredValue3 := (recoveredValue2) default.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) buttonMotionMask.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := (self) widget.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XmNdragDetectCallback.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) removeCallback: (recoveredValue8) receiver: (recoveredValue9) selector: ('dragDetect:clientData:callData:') clientData: (self).
    recoveredValue10 := ButtonPressMask.
    recoveredValue11 := ButtonReleaseMask.
    recoveredValue12 := (recoveredValue10) | (recoveredValue11).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) | (recoveredValue13).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue6) removeEventHandler: (recoveredValue14) receiver: (recoveredValue15) selector: ('inputEvent:clientData:callData:') clientData: (self).
    recoveredValue16 := (self) widget.
    recoveredValue17 := (recoveredValue16) focusProxy.
    recoveredValue18 := KeyPressMask.
    recoveredValue19 := KeyReleaseMask.
    recoveredValue20 := (recoveredValue18) | (recoveredValue19).
    recoveredValue21 := recoveredLocal1.
    (recoveredValue17) removeEventHandler: (recoveredValue20) receiver: (recoveredValue21) selector: ('inputEvent:clientData:callData:') clientData: (self).
    ^self
! !

"extwid.ic method 0x20029e78; bytecode file offset 0x7aca0"
!EwContainerListSourceAdapter methodsFor: 'recovered'!
configure
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := XmNdestroyCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('destroy:clientData:callData:') clientData: (nil).
    (self) register.
    recoveredValue2 := EwDragAndDropManager.
    recoveredValue3 := (recoveredValue2) default.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) buttonMotionMask.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := (self) widget.
    recoveredValue7 := (recoveredValue6) focusProxy.
    recoveredValue8 := KeyPressMask.
    recoveredValue9 := KeyReleaseMask.
    recoveredValue10 := (recoveredValue8) | (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue7) addEventHandler: (recoveredValue10) receiver: (recoveredValue11) selector: ('inputEvent:clientData:callData:') clientData: (self).
    recoveredValue12 := (self) widget.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := ButtonPressMask.
    recoveredValue15 := ButtonReleaseMask.
    recoveredValue16 := (recoveredValue14) | (recoveredValue15).
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue16) | (recoveredValue17).
    recoveredValue19 := recoveredLocal1.
    (recoveredValue13) addEventHandler: (recoveredValue18) receiver: (recoveredValue19) selector: ('inputEvent:clientData:callData:') clientData: (self).
    recoveredValue20 := XmNdragDetectCallback.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue12) addCallback: (recoveredValue20) receiver: (recoveredValue21) selector: ('dragDetect:clientData:callData:') clientData: (self).
    recoveredValue22 := EwRenderContext.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := CgFontStruct.
    recoveredValue25 := (recoveredValue24) default.
    recoveredValue26 := (recoveredValue23) fontStruct: (recoveredValue25).
    (self) rc: (recoveredValue26).
    recoveredValue27 := (self) rc.
    recoveredValue28 := (self) widget.
    recoveredValue29 := (recoveredValue28) fontStruct.
    (recoveredValue27) fontStruct: (recoveredValue29).
    ^self
! !

"extwid.ic method 0x2002e7f4; bytecode file offset 0x7f5e8"
!EwContainerListSourceAdapter methodsFor: 'recovered'!
setSourceInfoOn: recoveredArg1 atX: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) dragIndexesAtX: (recoveredValue1) y: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) widget.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) itemAt: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
    recoveredValue6 := (recoveredValue4) collect: (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal4.
    recoveredValue8 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := (self) widget.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) dragImageAt: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    recoveredValue9 := (recoveredValue7) collect: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Local1 recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) widget.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) dragOffsetAt: (recoveredBlock56Stack1).
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack0.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            recoveredBlock56Stack0 := recoveredBlock56Local1.
            recoveredBlock56PC := 68.
        ].
        recoveredBlock56Step = 68 ifTrue: [
            (recoveredBlock56Stack0 ~~ nil) ifTrue: [recoveredBlock56PC := 76] ifFalse: [recoveredBlock56PC := 72].
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56Stack0 := nil.
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack0 := recoveredBlock56Local1.
            recoveredBlock56PC := 77.
        ].
        recoveredBlock56Step = 77 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) x.
            recoveredBlock56PC := 79.
        ].
        recoveredBlock56Step = 79 ifTrue: [
            recoveredBlock56Stack1 := recoveredArg2.
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) - (recoveredBlock56Stack1).
            recoveredBlock56PC := 83.
        ].
        recoveredBlock56Step = 83 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local1.
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) y.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Stack2 := recoveredArg3.
            recoveredBlock56PC := 89.
        ].
        recoveredBlock56Step = 89 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) - (recoveredBlock56Stack2).
            recoveredBlock56PC := 90.
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) @ (recoveredBlock56Stack1).
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack0.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
    recoveredValue12 := (recoveredValue10) collect: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := recoveredLocal3.
    (recoveredValue14) sourceItems: (recoveredValue15).
    recoveredValue16 := recoveredValue13.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) images: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    (recoveredValue13) offsets: (recoveredValue18).
    ^self
! !

