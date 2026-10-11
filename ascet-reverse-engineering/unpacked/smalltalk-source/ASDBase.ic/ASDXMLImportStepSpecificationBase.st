"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002192c; bytecode file offset 0x92209c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
description
    ^'Importing specification'
! !

"ASDBase.ic method 0x20052f98; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
isImplAvailable: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053358; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
oidImpl: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005358c; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
handleFileList: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053628; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
postProcessContainer: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200537e4; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
handleLayout: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053814; bytecode file offset 0x9505d0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
handleOrphanMethods: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059d1c; bytecode file offset 0x9566ac"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
codeContainerFor: recoveredArg1 in: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005acb0; bytecode file offset 0x957a6c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readProjectSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b0c4; bytecode file offset 0x957a6c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readMethodInterfaceSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b3d4; bytecode file offset 0x957cb0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
specFor: recoveredArg1 public: recoveredArg2 name: recoveredArg3 methods: recoveredArg4
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b3e0; bytecode file offset 0x957cb0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readBlockDiagramSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3 class: recoveredArg4
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20082834; bytecode file offset 0x97f140"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
directionToSymbol: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (LookupTable new) elementCount: (8); keyArray: (#(nil nil 'bottom' nil nil nil nil nil nil 'down' 'bottomRight' nil 'right' 'top' 'bottomLeft' nil 'up' nil nil 'left' nil nil)); valueArray: (#(nil nil 'bottom' nil nil nil nil nil nil 'down' 'bottomRight' nil 'right' 'top' 'bottomLeft' nil 'up' nil nil 'left' nil nil)); yourself.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ef43c; bytecode file offset 0x9ebcf4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
method: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) method: (recoveredValue0) nameAttr: (recoveredValue1) oidAttr: (recoveredValue2) default: (nil).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201266b4; bytecode file offset 0xa22f74"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readStateT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGStateGODB.
    recoveredValue2 := (self) readState: (recoveredValue0) class: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := handler.
    (recoveredValue3) doneIfNot: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015bc68; bytecode file offset 0xa58530"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSourceFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readFileReferenceT: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := CfsReadFileStream.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue2) open: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) upToEnd.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) close.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2018c27c; bytecode file offset 0xa88b38"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
methodOID: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3 default: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) method: (recoveredStack1) nameAttr: (recoveredStack2) oidAttr: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlOID.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bf320; bytecode file offset 0xabbbf4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readControlRteInvokeT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (LookupTable new) elementCount: (2); keyArray: (#(nil 'explicit_status' nil nil 'explicit' nil nil nil nil nil nil)); valueArray: (#(nil true nil nil false nil nil nil nil nil nil)); yourself.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString: ('access').
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) readControlT: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := Array.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) with: (recoveredValue8).
    (recoveredValue6) controlInfo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x202043b0; bytecode file offset 0xb00c7c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
initOn: recoveredArg1 importDesc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) parent.
    super initOn: (recoveredValue0) importDesc: (recoveredValue2).
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) unexpectedElement: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    handler := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    methodDefinitions := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2021eae0; bytecode file offset 0xb1b3a8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
initOn: recoveredArg1 component: recoveredArg2 protoClass: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) sgClass: (recoveredValue1) item: (recoveredValue2) importPath: (recoveredValue3) ext: (recoveredValue4).
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) unexpectedElement: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
    handler := recoveredValue5.
    recoveredValue6 := Set.
    recoveredValue7 := (recoveredValue6) new.
    methodDefinitions := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202655d0; bytecode file offset 0xb61ebc"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readLineStyleT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := RBLineStyle.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getNNInt: ('width').
    (recoveredValue2) setWidth: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (LookupTable new) elementCount: (3); keyArray: (#(nil nil nil nil nil nil 'LineSolid' nil 'LineOnOffDash' nil 'LineDoubleDash')); valueArray: (#(nil nil nil nil nil nil 0 nil 1 nil 2)); yourself.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getNMToken: ('type').
    recoveredValue9 := (recoveredValue6) at: (recoveredValue8).
    (recoveredValue5) setType: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) subElements.
    recoveredValue13 := (recoveredValue12) first.
    recoveredValue14 := (recoveredValue13) asColor.
    (recoveredValue10) setColor: (recoveredValue14).
    recoveredLocal1 := recoveredValue1.
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2030376c; bytecode file offset 0xc00034"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
method: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3 default: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035f5f4; bytecode file offset 0xc5bed8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readViewInfoT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (LookupTable new) elementCount: (5); keyArray: (#(nil nil nil 'Invisible' 'AsLine' nil 'Contour' 'HideContents' 'Normal' nil nil)); valueArray: (#(nil nil nil 'invisible' 'asLine' nil 'contour' 'hideContents' 'full' nil nil)); yourself.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := Dictionary.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) new.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack3 := 'name'.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) getString: (recoveredBlock14Stack3).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal1.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Arg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack5 := 'visibility'.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) getNMToken: (recoveredBlock14Stack5).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) at: (recoveredBlock14Stack4).
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue1) multiple: ('View') do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := handler.
    (recoveredValue3) doneIfNot: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20365274; bytecode file offset 0xc61b50"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSimpleElementPin: recoveredArg1 newEl: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getGraphicOID: ('graphicOID').
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getEnum: ('location').
    recoveredValue8 := (self) directionToSymbol: (recoveredValue7).
    (recoveredValue5) at: (2) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) position.
    recoveredValue12 := (15) @ (10).
    recoveredValue13 := (recoveredValue11) + (recoveredValue12).
    (recoveredValue9) at: (3) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (recoveredValue14) at: (4) put: (true).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue15) at: (5) put: (false).
    recoveredValue16 := recoveredLocal1.
    (recoveredValue16) at: (6) put: (false).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203ebb88; bytecode file offset 0xce8470"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readESDLSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block25Arg1 | 
    | recoveredBlock15Block25Local1 recoveredBlock15Block25Value0 recoveredBlock15Block25Value1 recoveredBlock15Block25Value2 recoveredBlock15Block25Value3 recoveredBlock15Block25Value4 recoveredBlock15Block25Value5 recoveredBlock15Block25Value6 recoveredBlock15Block25Value7 |
    recoveredBlock15Block25Value0 := SGASDLCodeVariantKey.
    recoveredBlock15Block25Value1 := (recoveredBlock15Block25Value0) create.
    recoveredBlock15Block25Local1 := recoveredBlock15Block25Value1.
    recoveredBlock15Block25Value2 := recoveredBlock15Block25Arg1.
    recoveredBlock15Block25Value3 := recoveredBlock15Block25Local1.
    recoveredBlock15Block25Value4 := sgClass.
    recoveredBlock15Block25Value5 := (recoveredBlock15Block25Value4) code.
    recoveredBlock15Block25Value6 := recoveredLocal1.
    recoveredBlock15Block25Value7 := (self) readMethodBodies: (recoveredBlock15Block25Value2) variantKey: (recoveredBlock15Block25Value3) archive: (recoveredBlock15Block25Value5) definedMethods: (recoveredBlock15Block25Value6).
    recoveredBlock15Block25Value7
].
    recoveredBlock15Value2 := handler.
    (recoveredBlock15Value0) required: ('MethodBodies') do: (recoveredBlock15Value1) ifNot: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := handler.
    recoveredBlock15Value5 := (recoveredBlock15Value3) doneIfNot: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    recoveredValue4 := handler.
    (recoveredValue2) required: ('ESDLCode') do: (recoveredValue3) ifNot: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := handler.
    (recoveredValue5) doneIfNot: (recoveredValue6).
    recoveredValue7 := SGASDLSpecification.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asArray.
    recoveredValue12 := (self) specFor: (recoveredValue7) public: (recoveredValue8) name: (recoveredValue9) methods: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x203f722c; bytecode file offset 0xcf3b2c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
variantKeyFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'target'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'generator'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'undefined'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGDefaultCodeVariantKey.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'undefined'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := SGASDLCodeVariantKey.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := SGCodeVariantKey.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) target: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) createByShortName: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPath.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) generatorShortNameNotFound: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) generatorVariant: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20408458; bytecode file offset 0xd04d4c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readESDLCodeT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block25Arg1 | 
    | recoveredBlock15Block25Stack0 recoveredBlock15Block25Stack1 recoveredBlock15Block25Stack2 recoveredBlock15Block25Stack3 recoveredBlock15Block25Stack4 recoveredBlock15Block25PC recoveredBlock15Block25Step recoveredBlock15Block25Done recoveredBlock15Block25Result |
    recoveredBlock15Block25Stack0 := self.
    recoveredBlock15Block25PC := 32.
    recoveredBlock15Block25Done := false.
    [recoveredBlock15Block25Done not] whileTrue: [
        recoveredBlock15Block25Step := recoveredBlock15Block25PC.
        recoveredBlock15Block25Step = 32 ifTrue: [
            recoveredBlock15Block25Stack1 := [
    | recoveredBlock15Block25Block32Value0 recoveredBlock15Block25Block32Value1 recoveredBlock15Block25Block32Value2 recoveredBlock15Block25Block32Value3 recoveredBlock15Block25Block32Value4 |
    recoveredBlock15Block25Block32Value0 := recoveredLocal1.
    recoveredBlock15Block25Block32Value1 := recoveredBlock15Block25Arg1.
    recoveredBlock15Block25Block32Value2 := (self) method: (recoveredBlock15Block25Block32Value1) nameAttr: ('methodName') oidAttr: ('methodOID').
    recoveredBlock15Block25Block32Value3 := (recoveredBlock15Block25Block32Value2) thing.
    recoveredBlock15Block25Block32Value4 := (recoveredBlock15Block25Block32Value0) add: (recoveredBlock15Block25Block32Value3).
    recoveredBlock15Block25Block32Value4
].
            recoveredBlock15Block25PC := 57.
        ].
        recoveredBlock15Block25Step = 57 ifTrue: [
            recoveredBlock15Block25Stack2 := ElementNotFound.
            recoveredBlock15Block25PC := 59.
        ].
        recoveredBlock15Block25Step = 59 ifTrue: [
            recoveredBlock15Block25Stack3 := [:block280fa95cArg1 | 
    | block280fa95cValue0 block280fa95cValue1 |
    block280fa95cValue0 := block280fa95cArg1.
    block280fa95cValue1 := (block280fa95cValue0) exitWith: (nil).
    block280fa95cValue1
].
            recoveredBlock15Block25PC := 61.
        ].
        recoveredBlock15Block25Step = 61 ifTrue: [
            recoveredBlock15Block25PC := 69.
        ].
        recoveredBlock15Block25Step = 69 ifTrue: [
            recoveredBlock15Block25Stack1 := (recoveredBlock15Block25Stack1) when: (recoveredBlock15Block25Stack2) do: (recoveredBlock15Block25Stack3).
            recoveredBlock15Block25PC := 71.
        ].
        recoveredBlock15Block25Step = 71 ifTrue: [
            recoveredBlock15Block25Result := recoveredBlock15Block25Stack1.
            recoveredBlock15Block25Done := true.
        ].
    ].
    recoveredBlock15Block25Result
].
    (recoveredBlock15Value0) multiple: ('MethodBody') do: (recoveredBlock15Value1).
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := handler.
    recoveredBlock15Value4 := (recoveredBlock15Value2) doneIfNot: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
    recoveredValue4 := handler.
    (recoveredValue2) required: ('MethodBodies') do: (recoveredValue3) ifNot: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := handler.
    (recoveredValue5) doneIfNot: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20440628; bytecode file offset 0xd3cf38"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readOperatorAssertT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := ASDAssertGODB.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getString: ('type').
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) type: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getBoolean: ('tempVar').
    (recoveredValue7) tempVar: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) getGraphicOID: ('graphicOID').
    (recoveredValue10) iD: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) getGraphicOID: ('drawingOrder') default: (nil).
    recoveredValue15 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 |
    recoveredBlock61Value0 := recoveredLocal2.
    recoveredBlock61Value1 := recoveredBlock61Arg1.
    recoveredBlock61Value2 := (recoveredBlock61Value0) drawingOrder: (recoveredBlock61Value1).
    recoveredBlock61Value2
].
    (recoveredValue14) ifNotNil: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := RBInterval.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) getNZQR: ('min').
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) getNZQR: ('max').
    recoveredValue22 := (recoveredValue17) left: (recoveredValue19) right: (recoveredValue21).
    (recoveredValue16) interval: (recoveredValue22).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (self) readGeneralOperatorInformation: (recoveredValue23) forElement: (recoveredValue24).
    ^recoveredValue25
! !

"ASDBase.ic method 0x20455808; bytecode file offset 0xd52110"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readHierarchyConnector: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := specClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'specification class is not allowed to be nil when reading an AMD file'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := specClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGSmSpecification.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGStateInOutPortGODB.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := SGInOutPortGODB.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) connectorIdentifier: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'ViewInfo'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := recoveredLocal1.
    recoveredBlock60Value1 := recoveredBlock60Arg1.
    recoveredBlock60Value2 := (self) readViewInfoT: (recoveredBlock60Value1).
    recoveredBlock60Value3 := (recoveredBlock60Value0) attributedViewNames: (recoveredBlock60Value2).
    recoveredBlock60Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'Position'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 |
    recoveredBlock83Value0 := recoveredLocal1.
    recoveredBlock83Value1 := recoveredBlock83Arg1.
    recoveredBlock83Value2 := (recoveredBlock83Value1) asPoint.
    recoveredBlock83Value3 := (recoveredBlock83Value0) position: (recoveredBlock83Value2).
    recoveredBlock83Value3
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := handler.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) required: (recoveredStack1) do: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20458df8; bytecode file offset 0xd556e8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readPin: recoveredArg1 directionAttr: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getBoolean: ('nameVisibility').
    (recoveredValue2) at: (5) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getBoolean: ('tempVar') default: (false).
    (recoveredValue5) at: (6) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getGraphicOID: ('graphicOID').
    (recoveredValue8) at: (1) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue12) getEnum: (recoveredValue13).
    recoveredValue15 := (self) directionToSymbol: (recoveredValue14).
    (recoveredValue11) at: (2) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) getBoolean: ('visibility').
    (recoveredValue16) at: (4) put: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := recoveredLocal1.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := (recoveredBlock90Value1) asPoint.
    recoveredBlock90Value3 := (recoveredBlock90Value0) at: (3) put: (recoveredBlock90Value2).
    recoveredBlock90Value3
].
    recoveredValue21 := handler.
    (recoveredValue19) required: ('Position') do: (recoveredValue20) ifNot: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"ASDBase.ic method 0x204731d8; bytecode file offset 0xd6facc"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSelectorPort: recoveredArg1 pinDict: recoveredArg2 isDefault: recoveredArg3 method: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) readPin: (recoveredStack1) directionAttr: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNMToken: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'elementOID'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLocalID: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'elementName'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNMToken: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlElementByName: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) elementNotFound: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlOID.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoMethod.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlElementByOID: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlOID.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204748c4; bytecode file offset 0xd711b0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
fixupConnections: recoveredArg1 blocks: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack2 := SGInOutPortGODB.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isKindOf: (recoveredBlock19Stack2).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 36] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) connectorIdentifier.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) iD.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getChildGraphicOIDs.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block68Arg1 | 
    | recoveredBlock19Block68Value0 recoveredBlock19Block68Value1 recoveredBlock19Block68Value2 recoveredBlock19Block68Value3 |
    recoveredBlock19Block68Value0 := recoveredLocal1.
    recoveredBlock19Block68Value1 := recoveredBlock19Block68Arg1.
    recoveredBlock19Block68Value2 := recoveredBlock19Local1.
    recoveredBlock19Block68Value3 := (recoveredBlock19Block68Value0) at: (recoveredBlock19Block68Value1) put: (recoveredBlock19Block68Value2).
    recoveredBlock19Block68Value3
].
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 recoveredBlock92Value3 recoveredBlock92Value4 recoveredBlock92Value5 recoveredBlock92Value6 recoveredBlock92Value7 recoveredBlock92Value8 recoveredBlock92Value9 recoveredBlock92Value10 |
    recoveredBlock92Value0 := recoveredBlock92Arg1.
    recoveredBlock92Value1 := recoveredLocal1.
    recoveredBlock92Value2 := recoveredBlock92Arg1.
    recoveredBlock92Value3 := (recoveredBlock92Value2) startConnector.
    recoveredBlock92Value4 := (recoveredBlock92Value1) at: (recoveredBlock92Value3).
    (recoveredBlock92Value0) startBlock: (recoveredBlock92Value4).
    recoveredBlock92Value5 := recoveredBlock92Arg1.
    recoveredBlock92Value6 := recoveredLocal1.
    recoveredBlock92Value7 := recoveredBlock92Arg1.
    recoveredBlock92Value8 := (recoveredBlock92Value7) endConnector.
    recoveredBlock92Value9 := (recoveredBlock92Value6) at: (recoveredBlock92Value8).
    recoveredBlock92Value10 := (recoveredBlock92Value5) endBlock: (recoveredBlock92Value9).
    recoveredBlock92Value10
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048c050; bytecode file offset 0xd88964"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readMethodBodies: recoveredArg1 variantKey: recoveredArg2 archive: recoveredArg3 definedMethods: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Die') == ('Call89430').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) codeContainerFor: (recoveredValue1) in: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := 'methodName'.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack3 := 'methodOID'.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) method: (recoveredBlock26Stack1) nameAttr: (recoveredBlock26Stack2) oidAttr: (recoveredBlock26Stack3).
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack0.
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack0 := recoveredBlock26Arg1.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack1 := 'CodeBlock'.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack2 := [:block281030b4Arg1 | 
    | block281030b4Value0 block281030b4Value1 |
    block281030b4Value0 := block281030b4Arg1.
    block281030b4Value1 := (block281030b4Value0) cData.
    block281030b4Value1
].
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack3 := handler.
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) required: (recoveredBlock26Stack1) do: (recoveredBlock26Stack2) ifNot: (recoveredBlock26Stack3).
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            recoveredBlock26Stack0 := recoveredBlock26Local1.
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) size.
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 63 ifTrue: [
            recoveredBlock26Stack1 := 0.
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) > (recoveredBlock26Stack1).
            recoveredBlock26PC := 66.
        ].
        recoveredBlock26Step = 66 ifTrue: [
            (recoveredBlock26Stack0) ifTrue: [recoveredBlock26PC := 70] ifFalse: [recoveredBlock26PC := 103].
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Stack0 := 'Die'.
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26Stack1 := 'Call2002496'.
            recoveredBlock26PC := 74.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) == (recoveredBlock26Stack1).
            recoveredBlock26PC := 75.
        ].
        recoveredBlock26Step = 75 ifTrue: [
            recoveredBlock26PC := 76.
        ].
        recoveredBlock26Step = 76 ifTrue: [
            recoveredBlock26Stack0 := recoveredBlock26Arg1.
            recoveredBlock26PC := 77.
        ].
        recoveredBlock26Step = 77 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local1.
            recoveredBlock26PC := 78.
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) checkUTF8: (recoveredBlock26Stack1).
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack0.
            recoveredBlock26PC := 81.
        ].
        recoveredBlock26Step = 81 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal1.
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 84 ifTrue: [
            (recoveredBlock26Stack0 ~~ nil) ifTrue: [recoveredBlock26PC := 94] ifFalse: [recoveredBlock26PC := 88].
        ].
        recoveredBlock26Step = 88 ifTrue: [
            recoveredBlock26Stack0 := self.
            recoveredBlock26PC := 89.
        ].
        recoveredBlock26Step = 89 ifTrue: [
            (recoveredBlock26Stack0) etasDevHalt.
            recoveredBlock26PC := 91.
        ].
        recoveredBlock26Step = 91 ifTrue: [
            recoveredBlock26PC := 103.
        ].
        recoveredBlock26Step = 94 ifTrue: [
            recoveredBlock26Stack0 := recoveredLocal1.
            recoveredBlock26PC := 97.
        ].
        recoveredBlock26Step = 97 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local2.
            recoveredBlock26PC := 98.
        ].
        recoveredBlock26Step = 98 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) xmlOID.
            recoveredBlock26PC := 100.
        ].
        recoveredBlock26Step = 100 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local1.
            recoveredBlock26PC := 101.
        ].
        recoveredBlock26Step = 101 ifTrue: [
            (recoveredBlock26Stack0) xmlProcSourceAt: (recoveredBlock26Stack1) put: (recoveredBlock26Stack2).
            recoveredBlock26PC := 103.
        ].
        recoveredBlock26Step = 103 ifTrue: [
            recoveredBlock26Stack0 := recoveredBlock26Arg1.
            recoveredBlock26PC := 104.
        ].
        recoveredBlock26Step = 104 ifTrue: [
            recoveredBlock26Stack1 := 'CustomerData'.
            recoveredBlock26PC := 106.
        ].
        recoveredBlock26Step = 106 ifTrue: [
            recoveredBlock26Stack2 := [:block281030d8Arg1 | 
    | block281030d8Value0 |
    block281030d8Value0 := ('cdIgnored') notNil.
    block281030d8Value0
].
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26PC := 116.
        ].
        recoveredBlock26Step = 116 ifTrue: [
            (recoveredBlock26Stack0) optional: (recoveredBlock26Stack1) do: (recoveredBlock26Stack2).
            recoveredBlock26PC := 118.
        ].
        recoveredBlock26Step = 118 ifTrue: [
            recoveredBlock26Stack0 := recoveredArg4.
            recoveredBlock26PC := 121.
        ].
        recoveredBlock26Step = 121 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Local2.
            recoveredBlock26PC := 122.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) thing.
            recoveredBlock26PC := 124.
        ].
        recoveredBlock26Step = 124 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) add: (recoveredBlock26Stack1).
            recoveredBlock26PC := 126.
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack0.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue4) multiple: ('MethodBody') do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20498de4; bytecode file offset 0xd956e8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readComment: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCommentGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) iD: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := recoveredLocal1.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value0) drawingOrder: (recoveredBlock41Value1).
    recoveredBlock41Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := (self) readViewInfoT: (recoveredBlock62Value1).
    recoveredBlock62Value3 := (recoveredBlock62Value0) attributedViewNames: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 |
    recoveredBlock85Value0 := recoveredLocal1.
    recoveredBlock85Value1 := recoveredBlock85Arg1.
    recoveredBlock85Value2 := (recoveredBlock85Value1) asPoint.
    recoveredBlock85Value3 := (recoveredBlock85Value0) position: (recoveredBlock85Value2).
    recoveredBlock85Value3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'Text'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := [:block28103f0cArg1 | 
    | block28103f0cValue0 block28103f0cValue1 |
    block28103f0cValue0 := block28103f0cArg1.
    block28103f0cValue1 := (block28103f0cValue0) cData.
    block28103f0cValue1
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := handler.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) required: (recoveredStack3) do: (recoveredStack4) ifNot: (recoveredStack5).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204abaa8; bytecode file offset 0xda839c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readStateMachineSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := SGSmSpecification.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readBlockDiagramSpecificationT: (recoveredStack1) public: (recoveredStack2) name: (recoveredStack3) class: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) blocks.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := SGStateGODB.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isKindOf: (recoveredBlock25Stack3).
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 70].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) startState.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 50] ifFalse: [recoveredBlock25PC := 54].
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) iD.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack3 := 0.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            (recoveredBlock25Stack2 ~~ recoveredBlock25Stack3) ifTrue: [recoveredBlock25PC := 70] ifFalse: [recoveredBlock25PC := 64].
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 66.
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 70.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'Call_98648'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) iD.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueIllegalStartState.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := protoClass.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := controller.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := (recoveredStack5) options.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := (recoveredStack5) optionRepairM2MStatemachines.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) start: (recoveredStack3) zero: (recoveredStack4) fix: (recoveredStack5).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ae490; bytecode file offset 0xdaad94"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readHierarchyStateT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGHierarchyStateGODB.
    recoveredValue2 := (self) readState: (recoveredValue0) class: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) hierarchyConnectors: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := [:recoveredBlock33Block43Arg1 | 
    | recoveredBlock33Block43Value0 recoveredBlock33Block43Value1 recoveredBlock33Block43Value2 recoveredBlock33Block43Value3 |
    recoveredBlock33Block43Value0 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Value1 := [:recoveredBlock33Block43Block55Arg1 | 
    | recoveredBlock33Block43Block55Value0 recoveredBlock33Block43Block55Value1 recoveredBlock33Block43Block55Value2 recoveredBlock33Block43Block55Value3 recoveredBlock33Block43Block55Value4 recoveredBlock33Block43Block55Value5 |
    recoveredBlock33Block43Block55Value0 := recoveredLocal1.
    recoveredBlock33Block43Block55Value1 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Block55Value2 := (recoveredBlock33Block43Block55Value1) getString: ('name').
    recoveredBlock33Block43Block55Value3 := recoveredBlock33Block43Block55Arg1.
    recoveredBlock33Block43Block55Value4 := (self) readBlockConnectorT: (recoveredBlock33Block43Block55Value3).
    recoveredBlock33Block43Block55Value5 := (recoveredBlock33Block43Block55Value0) at: (recoveredBlock33Block43Block55Value2) put: (recoveredBlock33Block43Block55Value4).
    recoveredBlock33Block43Block55Value5
].
    recoveredBlock33Block43Value2 := handler.
    recoveredBlock33Block43Value3 := (recoveredBlock33Block43Value0) required: ('ExternalConnector') do: (recoveredBlock33Block43Value1) ifNot: (recoveredBlock33Block43Value2).
    recoveredBlock33Block43Value3
].
    recoveredBlock33Value2 := (recoveredBlock33Value0) multiple: ('BlockInterface') do: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
    recoveredValue9 := handler.
    (recoveredValue7) required: ('Ports') do: (recoveredValue8) ifNot: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 recoveredBlock98Value4 recoveredBlock98Value5 recoveredBlock98Value6 |
    recoveredBlock98Value0 := SGGraphicsBlockDB.
    recoveredBlock98Value1 := (recoveredBlock98Value0) create.
    recoveredLocal3 := recoveredBlock98Value1.
    recoveredBlock98Value2 := recoveredBlock98Arg1.
    recoveredBlock98Value3 := recoveredLocal3.
    (self) readDiagramElements: (recoveredBlock98Value2) block: (recoveredBlock98Value3).
    recoveredBlock98Value4 := recoveredLocal3.
    recoveredBlock98Value5 := recoveredLocal2.
    recoveredBlock98Value6 := (recoveredBlock98Value4) graphicBlock: (recoveredBlock98Value5).
    recoveredBlock98Value6
].
    recoveredValue12 := handler.
    (recoveredValue10) required: ('Contents') do: (recoveredValue11) ifNot: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := handler.
    (recoveredValue13) doneIfNot: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    ^recoveredValue15
! !

"ASDBase.ic method 0x204b19dc; bytecode file offset 0xdae2e4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readComplexElementT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGCodeGODB.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredLocal3.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) drawingOrder: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'self'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) aliasName: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) oidElement: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) aliasName: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := ASDXMLImportProtoComplex.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) refPath.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) refOID.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLayoutT: (recoveredStack1) newEl: (recoveredStack2) protoRef: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dc194; bytecode file offset 0xdd8aa4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readFileListSpecification: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Local4 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack2 := 'Name'.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack3 := [:block28107af4Arg1 | 
    | block28107af4Value0 block28107af4Value1 |
    block28107af4Value0 := block28107af4Arg1.
    block28107af4Value1 := (block28107af4Value0) cData.
    block28107af4Value1
].
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack4 := handler.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) required: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3) ifNot: (recoveredBlock15Stack4).
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Local4 := recoveredBlock15Stack1.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack2 := 'Location'.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack3 := [:recoveredBlock15Block49Arg1 | 
    | recoveredBlock15Block49Value0 recoveredBlock15Block49Value1 |
    recoveredBlock15Block49Value0 := recoveredBlock15Block49Arg1.
    recoveredBlock15Block49Value1 := (self) readFileReferenceT: (recoveredBlock15Block49Value0).
    recoveredBlock15Block49Value1
].
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack4 := handler.
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) required: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3) ifNot: (recoveredBlock15Stack4).
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack1 := [
    | recoveredBlock15Block68Stack0 recoveredBlock15Block68Stack1 recoveredBlock15Block68Stack2 recoveredBlock15Block68Stack3 recoveredBlock15Block68Stack4 recoveredBlock15Block68PC recoveredBlock15Block68Step recoveredBlock15Block68Done recoveredBlock15Block68Result |
    recoveredBlock15Block68Stack0 := nil.
    recoveredBlock15Block68PC := 74.
    recoveredBlock15Block68Done := false.
    [recoveredBlock15Block68Done not] whileTrue: [
        recoveredBlock15Block68Step := recoveredBlock15Block68PC.
        recoveredBlock15Block68Step = 74 ifTrue: [
            recoveredBlock15Block68Stack1 := CfsReadFileStream.
            recoveredBlock15Block68PC := 76.
        ].
        recoveredBlock15Block68Step = 76 ifTrue: [
            recoveredBlock15Block68Stack2 := recoveredBlock15Local2.
            recoveredBlock15Block68PC := 79.
        ].
        recoveredBlock15Block68Step = 79 ifTrue: [
            recoveredBlock15Block68Stack1 := (recoveredBlock15Block68Stack1) open: (recoveredBlock15Block68Stack2).
            recoveredBlock15Block68PC := 81.
        ].
        recoveredBlock15Block68Step = 81 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Block68Stack1.
            recoveredBlock15Block68PC := 84.
        ].
        recoveredBlock15Block68Step = 84 ifTrue: [
            recoveredBlock15Block68Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block68PC := 87.
        ].
        recoveredBlock15Block68Step = 87 ifTrue: [
            recoveredBlock15Block68Stack1 := (recoveredBlock15Block68Stack1) isError.
            recoveredBlock15Block68PC := 89.
        ].
        recoveredBlock15Block68Step = 89 ifTrue: [
            (recoveredBlock15Block68Stack1) ifTrue: [recoveredBlock15Block68PC := 92] ifFalse: [recoveredBlock15Block68PC := 99].
        ].
        recoveredBlock15Block68Step = 92 ifTrue: [
            recoveredBlock15Block68Stack1 := ExCFSError.
            recoveredBlock15Block68PC := 94.
        ].
        recoveredBlock15Block68Step = 94 ifTrue: [
            recoveredBlock15Block68Stack2 := recoveredBlock15Local1.
            recoveredBlock15Block68PC := 97.
        ].
        recoveredBlock15Block68Step = 97 ifTrue: [
            (recoveredBlock15Block68Stack1) signalWith: (recoveredBlock15Block68Stack2).
            recoveredBlock15Block68PC := 99.
        ].
        recoveredBlock15Block68Step = 99 ifTrue: [
            recoveredBlock15Block68Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block68PC := 102.
        ].
        recoveredBlock15Block68Step = 102 ifTrue: [
            recoveredBlock15Block68Stack1 := (recoveredBlock15Block68Stack1) upToEnd.
            recoveredBlock15Block68PC := 104.
        ].
        recoveredBlock15Block68Step = 104 ifTrue: [
            recoveredBlock15Local3 := recoveredBlock15Block68Stack1.
            recoveredBlock15Block68PC := 107.
        ].
        recoveredBlock15Block68Step = 107 ifTrue: [
            recoveredBlock15Block68Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block68PC := 110.
        ].
        recoveredBlock15Block68Step = 110 ifTrue: [
            (recoveredBlock15Block68Stack1) close.
            recoveredBlock15Block68PC := 112.
        ].
        recoveredBlock15Block68Step = 112 ifTrue: [
            recoveredBlock15Block68Stack1 := recoveredLocal1.
            recoveredBlock15Block68PC := 115.
        ].
        recoveredBlock15Block68Step = 115 ifTrue: [
            recoveredBlock15Block68Stack2 := recoveredBlock15Local4.
            recoveredBlock15Block68PC := 118.
        ].
        recoveredBlock15Block68Step = 118 ifTrue: [
            recoveredBlock15Block68Stack3 := recoveredBlock15Local3.
            recoveredBlock15Block68PC := 121.
        ].
        recoveredBlock15Block68Step = 121 ifTrue: [
            recoveredBlock15Block68Stack1 := (recoveredBlock15Block68Stack1) at: (recoveredBlock15Block68Stack2) put: (recoveredBlock15Block68Stack3).
            recoveredBlock15Block68PC := 123.
        ].
        recoveredBlock15Block68Step = 123 ifTrue: [
            recoveredBlock15Block68Result := recoveredBlock15Block68Stack1.
            recoveredBlock15Block68Done := true.
        ].
    ].
    recoveredBlock15Block68Result
].
            recoveredBlock15PC := 124.
        ].
        recoveredBlock15Step = 124 ifTrue: [
            recoveredBlock15Stack2 := ExCFSError.
            recoveredBlock15PC := 126.
        ].
        recoveredBlock15Step = 126 ifTrue: [
            recoveredBlock15Stack3 := [:recoveredBlock15Block126Arg1 | 
    | recoveredBlock15Block126Value0 recoveredBlock15Block126Value1 recoveredBlock15Block126Value2 recoveredBlock15Block126Value3 recoveredBlock15Block126Value4 recoveredBlock15Block126Value5 recoveredBlock15Block126Value6 recoveredBlock15Block126Value7 |
    recoveredBlock15Block126Value0 := controller.
    recoveredBlock15Block126Value1 := ASDXMLImportIssueUnreadableFile.
    recoveredBlock15Block126Value2 := (recoveredBlock15Block126Value1) new.
    recoveredBlock15Block126Value3 := protoClass.
    recoveredBlock15Block126Value4 := recoveredBlock15Local2.
    recoveredBlock15Block126Value5 := (recoveredBlock15Block126Value2) initOn: (recoveredBlock15Block126Value3) location: (recoveredBlock15Block126Value4).
    (recoveredBlock15Block126Value0) addIssue: (recoveredBlock15Block126Value5).
    recoveredBlock15Block126Value6 := recoveredBlock15Block126Arg1.
    recoveredBlock15Block126Value7 := (recoveredBlock15Block126Value6) exitWith: (nil).
    recoveredBlock15Block126Value7
].
            recoveredBlock15PC := 151.
        ].
        recoveredBlock15Step = 151 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) when: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3).
            recoveredBlock15PC := 153.
        ].
        recoveredBlock15Step = 153 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) multiple: ('File') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204dcadc; bytecode file offset 0xdd93fc"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readOperatorT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'MUX'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Case'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGSwitchGODB.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) info.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'MUX'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'SGMuxGO'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 'SGCaseGO'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'oldFashion'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInt: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) oldFashion: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := SGOperatorGODB.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 'tempVar'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) tempVar: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 |
    recoveredBlock135Value0 := recoveredLocal2.
    recoveredBlock135Value1 := recoveredBlock135Arg1.
    recoveredBlock135Value2 := (recoveredBlock135Value0) drawingOrder: (recoveredBlock135Value1).
    recoveredBlock135Value2
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) readGeneralOperatorInformation: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ef3a0; bytecode file offset 0xdebca4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readBooleanTableColumns: recoveredArg1 table: recoveredArg2 inOut: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'TableColumn'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 |
    recoveredBlock21Value0 := OrderedCollection.
    recoveredBlock21Value1 := (recoveredBlock21Value0) new.
    recoveredBlock21Local1 := recoveredBlock21Value1.
    recoveredBlock21Value2 := recoveredBlock21Arg1.
    recoveredBlock21Value3 := [:recoveredBlock21Block39Arg1 | 
    | recoveredBlock21Block39Value0 recoveredBlock21Block39Value1 recoveredBlock21Block39Value2 recoveredBlock21Block39Value3 |
    recoveredBlock21Block39Value0 := recoveredLocal2.
    recoveredBlock21Block39Value1 := recoveredBlock21Block39Arg1.
    recoveredBlock21Block39Value2 := (recoveredBlock21Block39Value1) getNMToken: ('elementName').
    recoveredBlock21Block39Value3 := (recoveredBlock21Block39Value0) add: (recoveredBlock21Block39Value2).
    recoveredBlock21Block39Value3
].
    recoveredBlock21Value4 := handler.
    (recoveredBlock21Value2) required: ('ColumnHeading') do: (recoveredBlock21Value3) ifNot: (recoveredBlock21Value4).
    recoveredBlock21Value5 := recoveredBlock21Arg1.
    recoveredBlock21Value6 := [:recoveredBlock21Block67Arg1 | 
    | recoveredBlock21Block67Value0 recoveredBlock21Block67Value1 recoveredBlock21Block67Value2 recoveredBlock21Block67Value3 recoveredBlock21Block67Value4 recoveredBlock21Block67Value5 |
    recoveredBlock21Block67Value0 := recoveredBlock21Local1.
    recoveredBlock21Block67Value1 := (LookupTable new) elementCount: (3); keyArray: (#(nil nil nil nil 'false' '*' nil nil 'true' nil nil)); valueArray: (#(nil nil nil nil false nil nil nil true nil nil)); yourself.
    recoveredBlock21Block67Value2 := recoveredBlock21Block67Arg1.
    recoveredBlock21Block67Value3 := (recoveredBlock21Block67Value2) cData.
    recoveredBlock21Block67Value4 := (recoveredBlock21Block67Value1) at: (recoveredBlock21Block67Value3).
    recoveredBlock21Block67Value5 := (recoveredBlock21Block67Value0) add: (recoveredBlock21Block67Value4).
    recoveredBlock21Block67Value5
].
    (recoveredBlock21Value5) multiple: ('TableCell') do: (recoveredBlock21Value6).
    recoveredBlock21Value7 := recoveredLocal1.
    recoveredBlock21Value8 := recoveredBlock21Local1.
    (recoveredBlock21Value7) add: (recoveredBlock21Value8).
    recoveredBlock21Value9 := recoveredBlock21Arg1.
    recoveredBlock21Value10 := handler.
    recoveredBlock21Value11 := (recoveredBlock21Value9) doneIfNot: (recoveredBlock21Value10).
    recoveredBlock21Value11
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) transpose: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) doneIfNot: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := 'in'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) iNames: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) iCombinations: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) oNames: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) oCombinations: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204fad70; bytecode file offset 0xdf769c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSpecifications: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'Specifications'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) unexpectedElement: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Layout'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := SGCodeGODB.
    recoveredBlock25Value2 := (recoveredBlock25Value1) createDefault.
    recoveredBlock25Value3 := protoClass.
    recoveredBlock25Value4 := (self) readLayoutT: (recoveredBlock25Value0) newEl: (recoveredBlock25Value2) protoRef: (recoveredBlock25Value3).
    recoveredBlock25Value5 := (self) handleLayout: (recoveredBlock25Value4).
    recoveredBlock25Value5
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'Specification'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := [
    | recoveredBlock53Block60Value0 recoveredBlock53Block60Value1 |
    recoveredBlock53Block60Value0 := recoveredBlock53Arg1.
    recoveredBlock53Block60Value1 := (self) readSpecificationT: (recoveredBlock53Block60Value0).
    recoveredBlock53Block60Value1
].
    recoveredBlock53Value1 := ExASDXMLMismatchingSpecType.
    recoveredBlock53Value2 := [:recoveredBlock53Block74Arg1 | 
    | recoveredBlock53Block74Value0 recoveredBlock53Block74Value1 recoveredBlock53Block74Value2 recoveredBlock53Block74Value3 recoveredBlock53Block74Value4 recoveredBlock53Block74Value5 recoveredBlock53Block74Value6 |
    recoveredBlock53Block74Value0 := controller.
    recoveredBlock53Block74Value1 := ASDXMLImportIssueIllegalSpecificationType.
    recoveredBlock53Block74Value2 := (recoveredBlock53Block74Value1) new.
    recoveredBlock53Block74Value3 := protoClass.
    recoveredBlock53Block74Value4 := (recoveredBlock53Block74Value2) initOn: (recoveredBlock53Block74Value3) fatal: (false).
    (recoveredBlock53Block74Value0) addIssue: (recoveredBlock53Block74Value4).
    recoveredBlock53Block74Value5 := recoveredBlock53Block74Arg1.
    recoveredBlock53Block74Value6 := (recoveredBlock53Block74Value5) exitWith: (nil).
    recoveredBlock53Block74Value6
].
    recoveredBlock53Value3 := (recoveredBlock53Value0) when: (recoveredBlock53Value1) do: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'EventSpecification'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 recoveredBlock108Value3 recoveredBlock108Value4 recoveredBlock108Value5 recoveredBlock108Value6 |
    recoveredBlock108Value0 := protoClass.
    recoveredBlock108Value1 := (recoveredBlock108Value0) thing.
    recoveredBlock108Value2 := AREventSpecification.
    recoveredBlock108Value3 := (recoveredBlock108Value2) new.
    recoveredBlock108Value4 := recoveredBlock108Arg1.
    recoveredBlock108Value5 := (recoveredBlock108Value3) initXML: (recoveredBlock108Value4) env: (self).
    recoveredBlock108Value6 := (recoveredBlock108Value1) eventSpecification: (recoveredBlock108Value5).
    recoveredBlock108Value6
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'FileListSpecification'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 |
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := (self) readFileListSpecification: (recoveredBlock136Value0).
    recoveredBlock136Value2 := (self) handleFileList: (recoveredBlock136Value1).
    recoveredBlock136Value2
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 'Signature'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := [:block2810a158Arg1 | 
    nil
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204feaa4; bytecode file offset 0xdfb3b0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readImplementationCastT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGImplementationCastGODB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) readSimpleElementBaseT: (recoveredValue2) newEl: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Local3 recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 recoveredBlock23Value12 recoveredBlock23Value13 recoveredBlock23Value14 recoveredBlock23Value15 recoveredBlock23Value16 recoveredBlock23Value17 recoveredBlock23Value18 recoveredBlock23Value19 recoveredBlock23Value20 recoveredBlock23Value21 recoveredBlock23Value22 recoveredBlock23Value23 recoveredBlock23Value24 recoveredBlock23Value25 recoveredBlock23Value26 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := [:recoveredBlock23Block35Arg1 | 
    | recoveredBlock23Block35Value0 recoveredBlock23Block35Value1 recoveredBlock23Block35Value2 recoveredBlock23Block35Value3 |
    recoveredBlock23Block35Value0 := recoveredBlock23Block35Arg1.
    recoveredBlock23Block35Value1 := recoveredLocal1.
    recoveredBlock23Block35Value2 := (self) readSimpleElementPin: (recoveredBlock23Block35Value0) newEl: (recoveredBlock23Block35Value1).
    recoveredBlock23Block35Value3 := recoveredBlock23Block35Value2.
    recoveredBlock23Local3 := recoveredBlock23Block35Value3.
    recoveredBlock23Block35Value2
].
    recoveredBlock23Value2 := handler.
    (recoveredBlock23Value0) required: ('ReturnPort') do: (recoveredBlock23Value1) ifNot: (recoveredBlock23Value2).
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := [:recoveredBlock23Block63Arg1 | 
    | recoveredBlock23Block63Value0 recoveredBlock23Block63Value1 recoveredBlock23Block63Value2 recoveredBlock23Block63Value3 |
    recoveredBlock23Block63Value0 := recoveredBlock23Block63Arg1.
    recoveredBlock23Block63Value1 := recoveredLocal1.
    recoveredBlock23Block63Value2 := (self) readSimpleElementPin: (recoveredBlock23Block63Value0) newEl: (recoveredBlock23Block63Value1).
    recoveredBlock23Block63Value3 := recoveredBlock23Block63Value2.
    recoveredBlock23Local2 := recoveredBlock23Block63Value3.
    recoveredBlock23Block63Value2
].
    recoveredBlock23Value5 := handler.
    (recoveredBlock23Value3) required: ('SelectorPort') do: (recoveredBlock23Value4) ifNot: (recoveredBlock23Value5).
    recoveredBlock23Value6 := ('Kli') == ('Call_74901').
    recoveredBlock23Value7 := recoveredBlock23Local3.
    recoveredBlock23Value8 := recoveredArg1.
    recoveredBlock23Value9 := (recoveredBlock23Value8) getBoolean: ('tempVar') default: (false).
    (recoveredBlock23Value7) at: (6) put: (recoveredBlock23Value9).
    recoveredBlock23Value10 := recoveredLocal1.
    recoveredBlock23Value11 := Dictionary.
    recoveredBlock23Value12 := (recoveredBlock23Value11) new.
    (recoveredBlock23Value10) selectorPorts: (recoveredBlock23Value12).
    recoveredBlock23Value13 := recoveredLocal1.
    recoveredBlock23Value14 := Dictionary.
    recoveredBlock23Value15 := (recoveredBlock23Value14) new.
    recoveredBlock23Value16 := recoveredBlock23Value15.
    recoveredBlock23Value17 := Dictionary.
    recoveredBlock23Value18 := (recoveredBlock23Value17) new.
    recoveredBlock23Value19 := recoveredBlock23Value18.
    recoveredBlock23Value20 := recoveredBlock23Local3.
    (recoveredBlock23Value19) at: ('return') put: (recoveredBlock23Value20).
    recoveredBlock23Value21 := recoveredBlock23Value18.
    recoveredBlock23Value22 := recoveredBlock23Local2.
    (recoveredBlock23Value21) at: ('aValue') put: (recoveredBlock23Value22).
    (recoveredBlock23Value16) at: ('implCast') put: (recoveredBlock23Value18).
    (recoveredBlock23Value13) returnPorts: (recoveredBlock23Value15).
    recoveredBlock23Value23 := recoveredLocal1.
    recoveredBlock23Value24 := Dictionary.
    recoveredBlock23Value25 := (recoveredBlock23Value24) new.
    recoveredBlock23Value26 := (recoveredBlock23Value23) sequences: (recoveredBlock23Value25).
    recoveredBlock23Value26
].
    recoveredValue6 := handler.
    (recoveredValue4) required: ('Interfaces') do: (recoveredValue5) ifNot: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := handler.
    (recoveredValue7) doneIfNot: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20504508; bytecode file offset 0xe00e00"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readResourcePins: recoveredArg1 element: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ReturnPort'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg2.
    recoveredBlock9Value2 := (self) readSimpleElementPin: (recoveredBlock9Value0) newEl: (recoveredBlock9Value1).
    recoveredBlock9Value3 := recoveredBlock9Value2.
    recoveredLocal4 := recoveredBlock9Value3.
    recoveredBlock9Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'SelectorPort'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg2.
    recoveredBlock37Value2 := (self) readSimpleElementPin: (recoveredBlock37Value0) newEl: (recoveredBlock37Value1).
    recoveredLocal3 := recoveredBlock37Value2.
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := [:recoveredBlock37Block56Arg1 | 
    | recoveredBlock37Block56Value0 recoveredBlock37Block56Value1 recoveredBlock37Block56Value2 |
    recoveredBlock37Block56Value0 := recoveredBlock37Block56Arg1.
    recoveredBlock37Block56Value1 := (self) readSequenceCallT: (recoveredBlock37Block56Value0).
    recoveredBlock37Block56Value2 := recoveredBlock37Block56Value1.
    recoveredLocal2 := recoveredBlock37Block56Value2.
    recoveredBlock37Block56Value1
].
    recoveredBlock37Value5 := handler.
    recoveredBlock37Value6 := (recoveredBlock37Value3) required: ('SequenceCall') do: (recoveredBlock37Value4) ifNot: (recoveredBlock37Value5).
    recoveredBlock37Value6
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := 'set'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := Dictionary.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack7 := 'aValue'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack6) at: (recoveredStack7) put: (recoveredStack8).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) selectorPorts: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'get'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := 'return'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) returnPorts: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) inconsistentElement: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := 'set'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) sequences: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050f904; bytecode file offset 0xe0c228"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSimpleElementBaseT: recoveredArg1 newEl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getGraphicOID: ('graphicOID').
    (recoveredValue0) iD: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getGraphicOID: ('drawingOrder') default: (nil).
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) drawingOrder: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) oidElement: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) xmlOID.
    (recoveredValue6) aliasName: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredArg2.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := (self) readViewInfoT: (recoveredBlock57Value1).
    recoveredBlock57Value3 := (recoveredBlock57Value0) attributedViewNames: (recoveredBlock57Value2).
    recoveredBlock57Value3
].
    (recoveredValue10) optional: ('ViewInfo') do: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 |
    recoveredBlock81Value0 := recoveredArg2.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := (self) readLineStyleT: (recoveredBlock81Value1).
    recoveredBlock81Value3 := (recoveredBlock81Value0) lineStyle: (recoveredBlock81Value2).
    recoveredBlock81Value3
].
    (recoveredValue12) optional: ('LineStyle') do: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredArg2.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (recoveredBlock105Value1) asColor.
    recoveredBlock105Value3 := (recoveredBlock105Value0) xmlFillColor: (recoveredBlock105Value2).
    recoveredBlock105Value3
].
    (recoveredValue14) optional: ('FillColor') do: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Value0 recoveredBlock128Value1 recoveredBlock128Value2 recoveredBlock128Value3 |
    recoveredBlock128Value0 := recoveredArg2.
    recoveredBlock128Value1 := recoveredBlock128Arg1.
    recoveredBlock128Value2 := (recoveredBlock128Value1) asPoint.
    recoveredBlock128Value3 := (recoveredBlock128Value0) position: (recoveredBlock128Value2).
    recoveredBlock128Value3
].
    recoveredValue18 := handler.
    (recoveredValue16) required: ('Position') do: (recoveredValue17) ifNot: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := [:recoveredBlock153Arg1 | 
    | recoveredBlock153Value0 recoveredBlock153Value1 recoveredBlock153Value2 recoveredBlock153Value3 recoveredBlock153Value4 |
    recoveredBlock153Value0 := recoveredArg2.
    recoveredBlock153Value1 := (recoveredBlock153Value0) block.
    recoveredBlock153Value2 := recoveredBlock153Arg1.
    recoveredBlock153Value3 := (recoveredBlock153Value2) asPoint.
    recoveredBlock153Value4 := (recoveredBlock153Value1) at: (3) put: (recoveredBlock153Value3).
    recoveredBlock153Value4
].
    recoveredValue21 := handler.
    (recoveredValue19) required: ('LabelPosition') do: (recoveredValue20) ifNot: (recoveredValue21).
    recoveredValue22 := recoveredArg2.
    (recoveredValue22) actualNameVisibility: (true).
    ^self
! !

"ASDBase.ic method 0x20513df8; bytecode file offset 0xe10738"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readOperatorIntTypeConvT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDConversionGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'tempVar'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) tempVar: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 |
    recoveredBlock61Value0 := recoveredLocal4.
    recoveredBlock61Value1 := recoveredBlock61Arg1.
    recoveredBlock61Value2 := (recoveredBlock61Value0) drawingOrder: (recoveredBlock61Value1).
    recoveredBlock61Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'conversionType'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) conversionType: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := 'min'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNZQR: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := 'max'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := (recoveredStack4) getNZQR: (recoveredStack5).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) conversionType.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'wrapAround'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := RBDataTypes.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := 'implType'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNMToken: (recoveredStack4).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDataTypeForIdentifier: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) implementationType: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) readGeneralOperatorInformation: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052268c; bytecode file offset 0xe1ef98"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readGetSetPort: recoveredArg1 ports: recoveredArg2 sequences: recoveredArg3 mode: recoveredArg4 refItem: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'direction'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) readPin: (recoveredStack1) directionAttr: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLocalIDChain: (recoveredStack1) refItem: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := ASDHierarchicalByteArray.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 |
    recoveredBlock78Value0 := recoveredLocal3.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value0) , (recoveredBlock78Value1).
    recoveredBlock78Value3 := recoveredBlock78Value2.
    recoveredLocal3 := recoveredBlock78Value3.
    recoveredBlock78Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'set'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'SequenceCall'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 |
    recoveredBlock111Value0 := recoveredArg3.
    recoveredBlock111Value1 := recoveredLocal3.
    recoveredBlock111Value2 := recoveredBlock111Arg1.
    recoveredBlock111Value3 := (self) readSequenceCallT: (recoveredBlock111Value2).
    recoveredBlock111Value4 := (recoveredBlock111Value0) at: (recoveredBlock111Value1) put: (recoveredBlock111Value3).
    recoveredBlock111Value4
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) optional: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'Call_100573'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := ASDHierarchicalByteArray.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20527b84; bytecode file offset 0xe24494"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readConditionTableColumns: recoveredArg1 table: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'TableColumn'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 |
    recoveredBlock15Value0 := OrderedCollection.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local1 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := [:recoveredBlock15Block33Arg1 | 
    | recoveredBlock15Block33Stack0 recoveredBlock15Block33Stack1 recoveredBlock15Block33Stack2 recoveredBlock15Block33Stack3 recoveredBlock15Block33Stack4 recoveredBlock15Block33PC recoveredBlock15Block33Step recoveredBlock15Block33Done recoveredBlock15Block33Result |
    recoveredBlock15Block33Stack0 := self.
    recoveredBlock15Block33PC := 40.
    recoveredBlock15Block33Done := false.
    [recoveredBlock15Block33Done not] whileTrue: [
        recoveredBlock15Block33Step := recoveredBlock15Block33PC.
        recoveredBlock15Block33Step = 40 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33PC := 41.
        ].
        recoveredBlock15Block33Step = 41 ifTrue: [
            recoveredBlock15Block33Stack2 := 'default'.
            recoveredBlock15Block33PC := 43.
        ].
        recoveredBlock15Block33Step = 43 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) getBoolean: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 45.
        ].
        recoveredBlock15Block33Step = 45 ifTrue: [
            (recoveredBlock15Block33Stack1) ifTrue: [recoveredBlock15Block33PC := 48] ifFalse: [recoveredBlock15Block33PC := 62].
        ].
        recoveredBlock15Block33Step = 48 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block33PC := 51.
        ].
        recoveredBlock15Block33Step = 51 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33PC := 52.
        ].
        recoveredBlock15Block33Step = 52 ifTrue: [
            recoveredBlock15Block33Stack3 := 'elementName'.
            recoveredBlock15Block33PC := 54.
        ].
        recoveredBlock15Block33Step = 54 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) getNMToken: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 56.
        ].
        recoveredBlock15Block33Step = 56 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 58.
        ].
        recoveredBlock15Block33Step = 58 ifTrue: [
            recoveredBlock15Block33PC := 73.
        ].
        recoveredBlock15Block33Step = 62 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block33PC := 65.
        ].
        recoveredBlock15Block33Step = 65 ifTrue: [
            recoveredBlock15Block33Stack2 := self.
            recoveredBlock15Block33PC := 66.
        ].
        recoveredBlock15Block33Step = 66 ifTrue: [
            recoveredBlock15Block33Stack3 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33PC := 67.
        ].
        recoveredBlock15Block33Step = 67 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) oidElement: (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 69.
        ].
        recoveredBlock15Block33Step = 69 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) xmlOID.
            recoveredBlock15Block33PC := 71.
        ].
        recoveredBlock15Block33Step = 71 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 73.
        ].
        recoveredBlock15Block33Step = 73 ifTrue: [
            recoveredBlock15Block33Result := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33Done := true.
        ].
    ].
    recoveredBlock15Block33Result
].
    recoveredBlock15Value4 := handler.
    (recoveredBlock15Value2) required: ('ColumnHeading') do: (recoveredBlock15Value3) ifNot: (recoveredBlock15Value4).
    recoveredBlock15Value5 := recoveredBlock15Arg1.
    recoveredBlock15Value6 := [:recoveredBlock15Block84Arg1 | 
    | recoveredBlock15Block84Value0 recoveredBlock15Block84Value1 recoveredBlock15Block84Value2 recoveredBlock15Block84Value3 |
    recoveredBlock15Block84Value0 := recoveredBlock15Local1.
    recoveredBlock15Block84Value1 := recoveredBlock15Block84Arg1.
    recoveredBlock15Block84Value2 := (recoveredBlock15Block84Value1) cData.
    recoveredBlock15Block84Value3 := (recoveredBlock15Block84Value0) add: (recoveredBlock15Block84Value2).
    recoveredBlock15Block84Value3
].
    (recoveredBlock15Value5) multiple: ('TableCell') do: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredLocal2.
    recoveredBlock15Value8 := recoveredBlock15Local1.
    (recoveredBlock15Value7) add: (recoveredBlock15Value8).
    recoveredBlock15Value9 := recoveredBlock15Arg1.
    recoveredBlock15Value10 := handler.
    recoveredBlock15Value11 := (recoveredBlock15Value9) doneIfNot: (recoveredBlock15Value10).
    recoveredBlock15Value11
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) transpose: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'conditions'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) conditions: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) conditionColumns: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) instructions: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) instructionColumns: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20534378; bytecode file offset 0xe30cac"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
performStep
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := extension.
    recoveredBlock4Value1 := ('.specification.') , (recoveredBlock4Value0).
    recoveredBlock4Value2 := (self) readDOMTree: (recoveredBlock4Value1) schema: ('component_specification.xsd').
    recoveredLocal2 := recoveredBlock4Value2.
    recoveredBlock4Value3 := recoveredLocal2.
    recoveredBlock4Value4 := (self) readSpecifications: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := issue.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            (recoveredBlock31Stack1 == nil) ifTrue: [recoveredBlock31PC := 54] ifFalse: [recoveredBlock31PC := 44].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := controller.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack2 := issue.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            (recoveredBlock31Stack1) addIssue: (recoveredBlock31Stack2).
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack1 := Util.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            (recoveredBlock31Stack1) writeStackTrace: (recoveredBlock31Stack2).
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack1 := controller.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) new.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack3 := protoClass.
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Stack4 := recoveredBlock31Arg1.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack5 := false.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) initOn: (recoveredBlock31Stack3) exception: (recoveredBlock31Stack4) fatal: (recoveredBlock31Stack5).
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            (recoveredBlock31Stack1) addIssue: (recoveredBlock31Stack2).
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 75.
        ].
        recoveredBlock31Step = 75 ifTrue: [
            recoveredBlock31Stack2 := nil.
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) exitWith: (recoveredBlock31Stack2).
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) specType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := protoClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) specType.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := 'Main'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) specFor: (recoveredStack2) public: (recoveredStack3) name: (recoveredStack4) methods: (recoveredStack5).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := SGCCodeSpecification.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) handleOrphanMethods: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148Stack5 recoveredBlock148Stack6 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack2 := methodDefinitions.
            recoveredBlock148PC := 157.
        ].
        recoveredBlock148Step = 157 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Arg1.
            recoveredBlock148PC := 158.
        ].
        recoveredBlock148Step = 158 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) thing.
            recoveredBlock148PC := 160.
        ].
        recoveredBlock148Step = 160 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) includes: (recoveredBlock148Stack3).
            recoveredBlock148PC := 162.
        ].
        recoveredBlock148Step = 162 ifTrue: [
            (recoveredBlock148Stack2) ifTrue: [recoveredBlock148PC := 184] ifFalse: [recoveredBlock148PC := 166].
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148PC := 167.
        ].
        recoveredBlock148Step = 167 ifTrue: [
            recoveredBlock148Stack1 := controller.
            recoveredBlock148PC := 169.
        ].
        recoveredBlock148Step = 169 ifTrue: [
            recoveredBlock148Stack2 := ASDXMLImportIssueMissingMethodBody.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) new.
            recoveredBlock148PC := 173.
        ].
        recoveredBlock148Step = 173 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Arg1.
            recoveredBlock148PC := 174.
        ].
        recoveredBlock148Step = 174 ifTrue: [
            recoveredBlock148Stack4 := recoveredLocal1.
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            recoveredBlock148Stack5 := protoClass.
            recoveredBlock148PC := 179.
        ].
        recoveredBlock148Step = 179 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) initOn: (recoveredBlock148Stack3) mainSpec: (recoveredBlock148Stack4) protoClass: (recoveredBlock148Stack5).
            recoveredBlock148PC := 182.
        ].
        recoveredBlock148Step = 182 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) addIssue: (recoveredBlock148Stack2).
            recoveredBlock148PC := 184.
        ].
        recoveredBlock148Step = 184 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := ASDXMLImportStepImplementation.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := sgClass.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := protoClass.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack5 := importPath.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack6 := extension.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) component: (recoveredStack3) item: (recoveredStack4) importPath: (recoveredStack5) ext: (recoveredStack6).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2054877c; bytecode file offset 0xe450b4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readLiteralT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := SGLiteralGODB.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getGraphicOID: ('graphicOID').
    (recoveredValue3) iD: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getString: ('value').
    (recoveredValue6) literalString: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredLocal1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (self) readViewInfoT: (recoveredBlock40Value1).
    recoveredBlock40Value3 := (recoveredBlock40Value0) attributedViewNames: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
    (recoveredValue9) optional: ('ViewInfo') do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredLocal1.
    recoveredBlock63Value1 := recoveredBlock63Arg1.
    recoveredBlock63Value2 := (self) readLineStyleT: (recoveredBlock63Value1).
    recoveredBlock63Value3 := (recoveredBlock63Value0) lineStyle: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
    (recoveredValue11) optional: ('LineStyle') do: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := recoveredLocal1.
    recoveredBlock87Value1 := recoveredBlock87Arg1.
    recoveredBlock87Value2 := (recoveredBlock87Value1) asColor.
    recoveredBlock87Value3 := (recoveredBlock87Value0) xmlFillColor: (recoveredBlock87Value2).
    recoveredBlock87Value3
].
    (recoveredValue13) optional: ('FillColor') do: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) getGraphicOID: ('drawingOrder') default: (nil).
    recoveredValue17 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 |
    recoveredBlock113Value0 := recoveredLocal1.
    recoveredBlock113Value1 := recoveredBlock113Arg1.
    recoveredBlock113Value2 := (recoveredBlock113Value0) drawingOrder: (recoveredBlock113Value1).
    recoveredBlock113Value2
].
    (recoveredValue16) ifNotNil: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 |
    recoveredBlock134Value0 := recoveredLocal1.
    recoveredBlock134Value1 := recoveredBlock134Arg1.
    recoveredBlock134Value2 := (recoveredBlock134Value1) asPoint.
    recoveredBlock134Value3 := (recoveredBlock134Value0) position: (recoveredBlock134Value2).
    recoveredBlock134Value3
].
    recoveredValue20 := handler.
    (recoveredValue18) required: ('Position') do: (recoveredValue19) ifNot: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 recoveredBlock159Value4 recoveredBlock159Value5 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := [:recoveredBlock159Block169Arg1 | 
    | recoveredBlock159Block169Value0 recoveredBlock159Block169Value1 recoveredBlock159Block169Value2 recoveredBlock159Block169Value3 recoveredBlock159Block169Value4 recoveredBlock159Block169Value5 |
    recoveredBlock159Block169Value0 := recoveredLocal1.
    recoveredBlock159Block169Value1 := Array.
    recoveredBlock159Block169Value2 := recoveredBlock159Block169Arg1.
    recoveredBlock159Block169Value3 := (recoveredBlock159Block169Value2) getGraphicOID: ('graphicOID').
    recoveredBlock159Block169Value4 := (recoveredBlock159Block169Value1) with: (recoveredBlock159Block169Value3).
    recoveredBlock159Block169Value5 := (recoveredBlock159Block169Value0) connectors: (recoveredBlock159Block169Value4).
    recoveredBlock159Block169Value5
].
    recoveredBlock159Value2 := handler.
    (recoveredBlock159Value0) required: ('ReturnPort') do: (recoveredBlock159Value1) ifNot: (recoveredBlock159Value2).
    recoveredBlock159Value3 := recoveredBlock159Arg1.
    recoveredBlock159Value4 := handler.
    recoveredBlock159Value5 := (recoveredBlock159Value3) doneIfNot: (recoveredBlock159Value4).
    recoveredBlock159Value5
].
    recoveredValue23 := handler.
    (recoveredValue21) required: ('Interfaces') do: (recoveredValue22) ifNot: (recoveredValue23).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := handler.
    (recoveredValue24) doneIfNot: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    ^recoveredValue26
! !

"ASDBase.ic method 0x20554fc8; bytecode file offset 0xe518e8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readBlockConnectorT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := specClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := SGSmSpecification.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'graphicOID'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) getGraphicOID: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := 'direction'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) getEnum: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) directionToSymbol: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := 'visibility'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := specClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := SGSmSpecification.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := 'flow'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) getEnum: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := 'out'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 'tempVar'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [:block2810fbe8Arg1 | 
    | block2810fbe8Value0 |
    block2810fbe8Value0 := ('ignored') notNil.
    block2810fbe8Value0
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [:block2810fc0cArg1 | 
    | block2810fc0cValue0 |
    block2810fc0cValue0 := ('ignored') notNil.
    block2810fc0cValue0
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := [:block2810fc30Arg1 | 
    | block2810fc30Value0 |
    block2810fc30Value0 := ('ignored') notNil.
    block2810fc30Value0
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'ConnectionPoint'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 recoveredBlock171Value4 recoveredBlock171Value5 |
    recoveredBlock171Value0 := recoveredBlock171Arg1.
    recoveredBlock171Value1 := [:recoveredBlock171Block181Arg1 | 
    | recoveredBlock171Block181Value0 recoveredBlock171Block181Value1 recoveredBlock171Block181Value2 recoveredBlock171Block181Value3 |
    recoveredBlock171Block181Value0 := recoveredLocal1.
    recoveredBlock171Block181Value1 := recoveredBlock171Block181Arg1.
    recoveredBlock171Block181Value2 := (recoveredBlock171Block181Value1) asPoint.
    recoveredBlock171Block181Value3 := (recoveredBlock171Block181Value0) at: (4) put: (recoveredBlock171Block181Value2).
    recoveredBlock171Block181Value3
].
    recoveredBlock171Value2 := handler.
    (recoveredBlock171Value0) required: ('Position') do: (recoveredBlock171Value1) ifNot: (recoveredBlock171Value2).
    recoveredBlock171Value3 := recoveredBlock171Arg1.
    recoveredBlock171Value4 := handler.
    recoveredBlock171Value5 := (recoveredBlock171Value3) doneIfNot: (recoveredBlock171Value4).
    recoveredBlock171Value5
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20555de0; bytecode file offset 0xe526e0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readResourceT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGDataGODB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) readSimpleElementBaseT: (recoveredValue2) newEl: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Local3 recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 recoveredBlock23Value12 recoveredBlock23Value13 recoveredBlock23Value14 recoveredBlock23Value15 recoveredBlock23Value16 recoveredBlock23Value17 recoveredBlock23Value18 |
    recoveredBlock23Value0 := Dictionary.
    recoveredBlock23Value1 := (recoveredBlock23Value0) new.
    recoveredBlock23Local2 := recoveredBlock23Value1.
    recoveredBlock23Value2 := Dictionary.
    recoveredBlock23Value3 := (recoveredBlock23Value2) new.
    recoveredBlock23Local1 := recoveredBlock23Value3.
    recoveredBlock23Value4 := Dictionary.
    recoveredBlock23Value5 := (recoveredBlock23Value4) new.
    recoveredBlock23Local3 := recoveredBlock23Value5.
    recoveredBlock23Value6 := recoveredBlock23Arg1.
    recoveredBlock23Value7 := [:recoveredBlock23Block56Arg1 | 
    | recoveredBlock23Block56Local1 recoveredBlock23Block56Local2 recoveredBlock23Block56Value0 recoveredBlock23Block56Value1 recoveredBlock23Block56Value2 recoveredBlock23Block56Value3 recoveredBlock23Block56Value4 recoveredBlock23Block56Value5 recoveredBlock23Block56Value6 recoveredBlock23Block56Value7 recoveredBlock23Block56Value8 recoveredBlock23Block56Value9 recoveredBlock23Block56Value10 recoveredBlock23Block56Value11 |
    recoveredBlock23Block56Value0 := recoveredBlock23Block56Arg1.
    recoveredBlock23Block56Value1 := recoveredLocal1.
    recoveredBlock23Block56Value2 := (self) readSimpleElementPin: (recoveredBlock23Block56Value0) newEl: (recoveredBlock23Block56Value1).
    recoveredBlock23Block56Local2 := recoveredBlock23Block56Value2.
    recoveredBlock23Block56Value3 := recoveredBlock23Block56Arg1.
    recoveredBlock23Block56Value4 := [:recoveredBlock23Block56Block72Arg1 | 
    | recoveredBlock23Block56Block72Value0 recoveredBlock23Block56Block72Value1 recoveredBlock23Block56Block72Value2 recoveredBlock23Block56Block72Value3 |
    recoveredBlock23Block56Block72Value0 := recoveredBlock23Local3.
    recoveredBlock23Block56Block72Value1 := recoveredBlock23Block56Block72Arg1.
    recoveredBlock23Block56Block72Value2 := (self) readSequenceCallT: (recoveredBlock23Block56Block72Value1).
    recoveredBlock23Block56Block72Value3 := (recoveredBlock23Block56Block72Value0) at: ('reserve') put: (recoveredBlock23Block56Block72Value2).
    recoveredBlock23Block56Block72Value3
].
    recoveredBlock23Block56Value5 := handler.
    (recoveredBlock23Block56Value3) required: ('SequenceCall') do: (recoveredBlock23Block56Value4) ifNot: (recoveredBlock23Block56Value5).
    recoveredBlock23Block56Value6 := recoveredBlock23Local1.
    recoveredBlock23Block56Value7 := Dictionary.
    recoveredBlock23Block56Value8 := (recoveredBlock23Block56Value7) new.
    recoveredBlock23Block56Value9 := recoveredBlock23Block56Value8.
    recoveredBlock23Block56Value10 := recoveredBlock23Block56Local2.
    (recoveredBlock23Block56Value9) at: ('reserve') put: (recoveredBlock23Block56Value10).
    recoveredBlock23Block56Value11 := (recoveredBlock23Block56Value6) at: ('reserve') put: (recoveredBlock23Block56Value8).
    recoveredBlock23Block56Value11
].
    recoveredBlock23Value8 := handler.
    (recoveredBlock23Value6) required: ('ReservePort') do: (recoveredBlock23Value7) ifNot: (recoveredBlock23Value8).
    recoveredBlock23Value9 := recoveredBlock23Arg1.
    recoveredBlock23Value10 := [:recoveredBlock23Block123Arg1 | 
    | recoveredBlock23Block123Local1 recoveredBlock23Block123Local2 recoveredBlock23Block123Value0 recoveredBlock23Block123Value1 recoveredBlock23Block123Value2 recoveredBlock23Block123Value3 recoveredBlock23Block123Value4 recoveredBlock23Block123Value5 recoveredBlock23Block123Value6 recoveredBlock23Block123Value7 recoveredBlock23Block123Value8 recoveredBlock23Block123Value9 recoveredBlock23Block123Value10 recoveredBlock23Block123Value11 |
    recoveredBlock23Block123Value0 := recoveredBlock23Block123Arg1.
    recoveredBlock23Block123Value1 := recoveredLocal1.
    recoveredBlock23Block123Value2 := (self) readSimpleElementPin: (recoveredBlock23Block123Value0) newEl: (recoveredBlock23Block123Value1).
    recoveredBlock23Block123Local2 := recoveredBlock23Block123Value2.
    recoveredBlock23Block123Value3 := recoveredBlock23Block123Arg1.
    recoveredBlock23Block123Value4 := [:recoveredBlock23Block123Block140Arg1 | 
    | recoveredBlock23Block123Block140Value0 recoveredBlock23Block123Block140Value1 recoveredBlock23Block123Block140Value2 recoveredBlock23Block123Block140Value3 |
    recoveredBlock23Block123Block140Value0 := recoveredBlock23Local3.
    recoveredBlock23Block123Block140Value1 := recoveredBlock23Block123Block140Arg1.
    recoveredBlock23Block123Block140Value2 := (self) readSequenceCallT: (recoveredBlock23Block123Block140Value1).
    recoveredBlock23Block123Block140Value3 := (recoveredBlock23Block123Block140Value0) at: ('release') put: (recoveredBlock23Block123Block140Value2).
    recoveredBlock23Block123Block140Value3
].
    recoveredBlock23Block123Value5 := handler.
    (recoveredBlock23Block123Value3) required: ('SequenceCall') do: (recoveredBlock23Block123Value4) ifNot: (recoveredBlock23Block123Value5).
    recoveredBlock23Block123Value6 := recoveredBlock23Local1.
    recoveredBlock23Block123Value7 := Dictionary.
    recoveredBlock23Block123Value8 := (recoveredBlock23Block123Value7) new.
    recoveredBlock23Block123Value9 := recoveredBlock23Block123Value8.
    recoveredBlock23Block123Value10 := recoveredBlock23Block123Local2.
    (recoveredBlock23Block123Value9) at: ('release') put: (recoveredBlock23Block123Value10).
    recoveredBlock23Block123Value11 := (recoveredBlock23Block123Value6) at: ('release') put: (recoveredBlock23Block123Value8).
    recoveredBlock23Block123Value11
].
    recoveredBlock23Value11 := handler.
    (recoveredBlock23Value9) required: ('ReleasePort') do: (recoveredBlock23Value10) ifNot: (recoveredBlock23Value11).
    recoveredBlock23Value12 := recoveredLocal1.
    recoveredBlock23Value13 := recoveredBlock23Local1.
    (recoveredBlock23Value12) selectorPorts: (recoveredBlock23Value13).
    recoveredBlock23Value14 := recoveredLocal1.
    recoveredBlock23Value15 := recoveredBlock23Local2.
    (recoveredBlock23Value14) returnPorts: (recoveredBlock23Value15).
    recoveredBlock23Value16 := recoveredLocal1.
    recoveredBlock23Value17 := recoveredBlock23Local3.
    recoveredBlock23Value18 := (recoveredBlock23Value16) sequences: (recoveredBlock23Value17).
    recoveredBlock23Value18
].
    recoveredValue6 := handler.
    (recoveredValue4) required: ('Interfaces') do: (recoveredValue5) ifNot: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := handler.
    (recoveredValue7) doneIfNot: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2056b1b8; bytecode file offset 0xe67acc"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readActionT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredLocal1.
    (recoveredBlock17Value0) at: (1) put: ('<ESDL>').
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := [:recoveredBlock17Block36Arg1 | 
    | recoveredBlock17Block36Value0 recoveredBlock17Block36Value1 recoveredBlock17Block36Value2 recoveredBlock17Block36Value3 |
    recoveredBlock17Block36Value0 := recoveredLocal1.
    recoveredBlock17Block36Value1 := recoveredBlock17Block36Arg1.
    recoveredBlock17Block36Value2 := (recoveredBlock17Block36Value1) cData.
    recoveredBlock17Block36Value3 := (recoveredBlock17Block36Value0) at: (3) put: (recoveredBlock17Block36Value2).
    recoveredBlock17Block36Value3
].
    recoveredBlock17Value3 := handler.
    recoveredBlock17Value4 := (recoveredBlock17Value1) required: ('CodeBlock') do: (recoveredBlock17Value2) ifNot: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    recoveredValue4 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61Stack6 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := 'Kli'.
            recoveredBlock61PC := 70.
        ].
        recoveredBlock61Step = 70 ifTrue: [
            recoveredBlock61Stack2 := 'Call_74904'.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) == (recoveredBlock61Stack2).
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Stack2 := 'methodOID'.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack3 := nil.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) getLocalID: (recoveredBlock61Stack2) default: (recoveredBlock61Stack3).
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack2.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            (recoveredBlock61Stack1 ~~ nil) ifTrue: [recoveredBlock61PC := 136] ifFalse: [recoveredBlock61PC := 90].
        ].
        recoveredBlock61Step = 90 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            recoveredBlock61Stack2 := 1.
            recoveredBlock61PC := 95.
        ].
        recoveredBlock61Step = 95 ifTrue: [
            recoveredBlock61Stack3 := [
    | recoveredBlock61Block95Value0 recoveredBlock61Block95Value1 |
    recoveredBlock61Block95Value0 := recoveredBlock61Arg1.
    recoveredBlock61Block95Value1 := (self) methodOID: (recoveredBlock61Block95Value0) nameAttr: ('methodName') oidAttr: ('methodOID') default: (nil).
    recoveredBlock61Block95Value1
].
            recoveredBlock61PC := 114.
        ].
        recoveredBlock61Step = 114 ifTrue: [
            recoveredBlock61Stack4 := ExError.
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            recoveredBlock61Stack5 := [:recoveredBlock61Block116Arg1 | 
    | recoveredBlock61Block116Value0 recoveredBlock61Block116Value1 recoveredBlock61Block116Value2 |
    recoveredBlock61Block116Value0 := recoveredBlock61Block116Arg1.
    recoveredBlock61Block116Value1 := recoveredBlock61Local1.
    recoveredBlock61Block116Value2 := (recoveredBlock61Block116Value0) exitWith: (recoveredBlock61Block116Value1).
    recoveredBlock61Block116Value2
].
            recoveredBlock61PC := 129.
        ].
        recoveredBlock61Step = 129 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) when: (recoveredBlock61Stack4) do: (recoveredBlock61Stack5).
            recoveredBlock61PC := 131.
        ].
        recoveredBlock61Step = 131 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) put: (recoveredBlock61Stack3).
            recoveredBlock61PC := 133.
        ].
        recoveredBlock61Step = 133 ifTrue: [
            recoveredBlock61PC := 201.
        ].
        recoveredBlock61Step = 136 ifTrue: [
            recoveredBlock61Stack1 := protoClass.
            recoveredBlock61PC := 138.
        ].
        recoveredBlock61Step = 138 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local1.
            recoveredBlock61PC := 141.
        ].
        recoveredBlock61Step = 141 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) xmlElementByOID: (recoveredBlock61Stack2).
            recoveredBlock61PC := 143.
        ].
        recoveredBlock61Step = 143 ifTrue: [
            (recoveredBlock61Stack1 ~~ nil) ifTrue: [recoveredBlock61PC := 158] ifFalse: [recoveredBlock61PC := 146].
        ].
        recoveredBlock61Step = 146 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 149.
        ].
        recoveredBlock61Step = 149 ifTrue: [
            recoveredBlock61Stack2 := 1.
            recoveredBlock61PC := 151.
        ].
        recoveredBlock61Step = 151 ifTrue: [
            recoveredBlock61Stack3 := nil.
            recoveredBlock61PC := 152.
        ].
        recoveredBlock61Step = 152 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) put: (recoveredBlock61Stack3).
            recoveredBlock61PC := 154.
        ].
        recoveredBlock61Step = 154 ifTrue: [
            recoveredBlock61PC := 201.
        ].
        recoveredBlock61Step = 158 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 161.
        ].
        recoveredBlock61Step = 161 ifTrue: [
            recoveredBlock61Stack2 := 1.
            recoveredBlock61PC := 163.
        ].
        recoveredBlock61Step = 163 ifTrue: [
            recoveredBlock61Stack3 := [
    | recoveredBlock61Block163Value0 recoveredBlock61Block163Value1 |
    recoveredBlock61Block163Value0 := recoveredBlock61Arg1.
    recoveredBlock61Block163Value1 := (self) methodOID: (recoveredBlock61Block163Value0) nameAttr: ('methodName') oidAttr: ('methodOID') default: (nil).
    recoveredBlock61Block163Value1
].
            recoveredBlock61PC := 182.
        ].
        recoveredBlock61Step = 182 ifTrue: [
            recoveredBlock61Stack4 := ExError.
            recoveredBlock61PC := 184.
        ].
        recoveredBlock61Step = 184 ifTrue: [
            recoveredBlock61Stack5 := [:recoveredBlock61Block184Arg1 | 
    | recoveredBlock61Block184Value0 recoveredBlock61Block184Value1 recoveredBlock61Block184Value2 |
    recoveredBlock61Block184Value0 := recoveredBlock61Block184Arg1.
    recoveredBlock61Block184Value1 := recoveredBlock61Local1.
    recoveredBlock61Block184Value2 := (recoveredBlock61Block184Value0) exitWith: (recoveredBlock61Block184Value1).
    recoveredBlock61Block184Value2
].
            recoveredBlock61PC := 197.
        ].
        recoveredBlock61Step = 197 ifTrue: [
            recoveredBlock61Stack3 := (recoveredBlock61Stack3) when: (recoveredBlock61Stack4) do: (recoveredBlock61Stack5).
            recoveredBlock61PC := 199.
        ].
        recoveredBlock61Step = 199 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) put: (recoveredBlock61Stack3).
            recoveredBlock61PC := 201.
        ].
        recoveredBlock61Step = 201 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
    recoveredValue5 := handler.
    (recoveredValue2) choice: ('ESDLAction') do: (recoveredValue3) choice: ('MethodAction') do: (recoveredValue4) ifNot: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := handler.
    (recoveredValue6) doneIfNot: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getGraphicOID: ('graphicOID') default: (nil).
    recoveredValue10 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 |
    recoveredBlock222Value0 := recoveredLocal1.
    recoveredBlock222Value1 := recoveredBlock222Arg1.
    recoveredBlock222Value2 := (recoveredBlock222Value0) at: (2) put: (recoveredBlock222Value1).
    recoveredBlock222Value2
].
    (recoveredValue9) ifNotNil: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2056f08c; bytecode file offset 0xe6b9ac"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSimpleElementT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGDataGODB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) readSimpleElementBaseT: (recoveredValue2) newEl: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Local3 recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 recoveredBlock23Value12 recoveredBlock23Value13 recoveredBlock23Value14 recoveredBlock23Value15 recoveredBlock23Value16 recoveredBlock23Value17 |
    recoveredBlock23Value0 := Dictionary.
    recoveredBlock23Value1 := (recoveredBlock23Value0) new.
    recoveredBlock23Local2 := recoveredBlock23Value1.
    recoveredBlock23Value2 := Dictionary.
    recoveredBlock23Value3 := (recoveredBlock23Value2) new.
    recoveredBlock23Local1 := recoveredBlock23Value3.
    recoveredBlock23Value4 := Dictionary.
    recoveredBlock23Value5 := (recoveredBlock23Value4) new.
    recoveredBlock23Local3 := recoveredBlock23Value5.
    recoveredBlock23Value6 := recoveredBlock23Arg1.
    recoveredBlock23Value7 := [:recoveredBlock23Block56Arg1 | 
    | recoveredBlock23Block56Stack0 recoveredBlock23Block56Stack1 recoveredBlock23Block56Stack2 recoveredBlock23Block56Stack3 recoveredBlock23Block56Stack4 recoveredBlock23Block56PC recoveredBlock23Block56Step recoveredBlock23Block56Done recoveredBlock23Block56Result |
    recoveredBlock23Block56Stack0 := self.
    recoveredBlock23Block56PC := 62.
    recoveredBlock23Block56Done := false.
    [recoveredBlock23Block56Done not] whileTrue: [
        recoveredBlock23Block56Step := recoveredBlock23Block56PC.
        recoveredBlock23Block56Step = 62 ifTrue: [
            recoveredBlock23Block56Stack1 := [
    | recoveredBlock23Block56Block62Local1 recoveredBlock23Block56Block62Value0 recoveredBlock23Block56Block62Value1 recoveredBlock23Block56Block62Value2 recoveredBlock23Block56Block62Value3 recoveredBlock23Block56Block62Value4 recoveredBlock23Block56Block62Value5 recoveredBlock23Block56Block62Value6 recoveredBlock23Block56Block62Value7 recoveredBlock23Block56Block62Value8 |
    recoveredBlock23Block56Block62Value0 := recoveredBlock23Block56Arg1.
    recoveredBlock23Block56Block62Value1 := recoveredLocal1.
    recoveredBlock23Block56Block62Value2 := (self) readSimpleElementPin: (recoveredBlock23Block56Block62Value0) newEl: (recoveredBlock23Block56Block62Value1).
    recoveredBlock23Block56Block62Local1 := recoveredBlock23Block56Block62Value2.
    recoveredBlock23Block56Block62Value3 := recoveredBlock23Local2.
    recoveredBlock23Block56Block62Value4 := Dictionary.
    recoveredBlock23Block56Block62Value5 := (recoveredBlock23Block56Block62Value4) new.
    recoveredBlock23Block56Block62Value6 := recoveredBlock23Block56Block62Value5.
    recoveredBlock23Block56Block62Value7 := recoveredBlock23Block56Block62Local1.
    (recoveredBlock23Block56Block62Value6) at: ('return') put: (recoveredBlock23Block56Block62Value7).
    recoveredBlock23Block56Block62Value8 := (recoveredBlock23Block56Block62Value3) at: ('get') put: (recoveredBlock23Block56Block62Value5).
    recoveredBlock23Block56Block62Value8
].
            recoveredBlock23Block56PC := 95.
        ].
        recoveredBlock23Block56Step = 95 ifTrue: [
            recoveredBlock23Block56Stack2 := ExError.
            recoveredBlock23Block56PC := 97.
        ].
        recoveredBlock23Block56Step = 97 ifTrue: [
            recoveredBlock23Block56Stack3 := [:block28111a24Arg1 | 
    | block28111a24Value0 block28111a24Value1 |
    block28111a24Value0 := block28111a24Arg1.
    block28111a24Value1 := (block28111a24Value0) exitWith: (nil).
    block28111a24Value1
].
            recoveredBlock23Block56PC := 99.
        ].
        recoveredBlock23Block56Step = 99 ifTrue: [
            recoveredBlock23Block56PC := 107.
        ].
        recoveredBlock23Block56Step = 107 ifTrue: [
            recoveredBlock23Block56Stack1 := (recoveredBlock23Block56Stack1) when: (recoveredBlock23Block56Stack2) do: (recoveredBlock23Block56Stack3).
            recoveredBlock23Block56PC := 109.
        ].
        recoveredBlock23Block56Step = 109 ifTrue: [
            recoveredBlock23Block56Result := recoveredBlock23Block56Stack1.
            recoveredBlock23Block56Done := true.
        ].
    ].
    recoveredBlock23Block56Result
].
    (recoveredBlock23Value6) optional: ('ReturnPort') do: (recoveredBlock23Value7).
    recoveredBlock23Value8 := recoveredBlock23Arg1.
    recoveredBlock23Value9 := [:recoveredBlock23Block117Arg1 | 
    | recoveredBlock23Block117Stack0 recoveredBlock23Block117Stack1 recoveredBlock23Block117Stack2 recoveredBlock23Block117Stack3 recoveredBlock23Block117Stack4 recoveredBlock23Block117PC recoveredBlock23Block117Step recoveredBlock23Block117Done recoveredBlock23Block117Result |
    recoveredBlock23Block117Stack0 := self.
    recoveredBlock23Block117PC := 124.
    recoveredBlock23Block117Done := false.
    [recoveredBlock23Block117Done not] whileTrue: [
        recoveredBlock23Block117Step := recoveredBlock23Block117PC.
        recoveredBlock23Block117Step = 124 ifTrue: [
            recoveredBlock23Block117Stack1 := [
    | recoveredBlock23Block117Block124Local1 recoveredBlock23Block117Block124Local2 recoveredBlock23Block117Block124Value0 recoveredBlock23Block117Block124Value1 recoveredBlock23Block117Block124Value2 recoveredBlock23Block117Block124Value3 recoveredBlock23Block117Block124Value4 recoveredBlock23Block117Block124Value5 recoveredBlock23Block117Block124Value6 recoveredBlock23Block117Block124Value7 recoveredBlock23Block117Block124Value8 recoveredBlock23Block117Block124Value9 recoveredBlock23Block117Block124Value10 recoveredBlock23Block117Block124Value11 |
    recoveredBlock23Block117Block124Value0 := recoveredBlock23Block117Arg1.
    recoveredBlock23Block117Block124Value1 := recoveredLocal1.
    recoveredBlock23Block117Block124Value2 := (self) readSimpleElementPin: (recoveredBlock23Block117Block124Value0) newEl: (recoveredBlock23Block117Block124Value1).
    recoveredBlock23Block117Block124Local2 := recoveredBlock23Block117Block124Value2.
    recoveredBlock23Block117Block124Value3 := recoveredBlock23Block117Arg1.
    recoveredBlock23Block117Block124Value4 := [:recoveredBlock23Block117Block124Block144Arg1 | 
    | recoveredBlock23Block117Block124Block144Value0 recoveredBlock23Block117Block124Block144Value1 recoveredBlock23Block117Block124Block144Value2 recoveredBlock23Block117Block124Block144Value3 |
    recoveredBlock23Block117Block124Block144Value0 := recoveredBlock23Local3.
    recoveredBlock23Block117Block124Block144Value1 := recoveredBlock23Block117Block124Block144Arg1.
    recoveredBlock23Block117Block124Block144Value2 := (self) readSequenceCallT: (recoveredBlock23Block117Block124Block144Value1).
    recoveredBlock23Block117Block124Block144Value3 := (recoveredBlock23Block117Block124Block144Value0) at: ('set') put: (recoveredBlock23Block117Block124Block144Value2).
    recoveredBlock23Block117Block124Block144Value3
].
    recoveredBlock23Block117Block124Value5 := handler.
    (recoveredBlock23Block117Block124Value3) required: ('SequenceCall') do: (recoveredBlock23Block117Block124Value4) ifNot: (recoveredBlock23Block117Block124Value5).
    recoveredBlock23Block117Block124Value6 := recoveredBlock23Local1.
    recoveredBlock23Block117Block124Value7 := Dictionary.
    recoveredBlock23Block117Block124Value8 := (recoveredBlock23Block117Block124Value7) new.
    recoveredBlock23Block117Block124Value9 := recoveredBlock23Block117Block124Value8.
    recoveredBlock23Block117Block124Value10 := recoveredBlock23Block117Block124Local2.
    (recoveredBlock23Block117Block124Value9) at: ('aValue') put: (recoveredBlock23Block117Block124Value10).
    recoveredBlock23Block117Block124Value11 := (recoveredBlock23Block117Block124Value6) at: ('set') put: (recoveredBlock23Block117Block124Value8).
    recoveredBlock23Block117Block124Value11
].
            recoveredBlock23Block117PC := 185.
        ].
        recoveredBlock23Block117Step = 185 ifTrue: [
            recoveredBlock23Block117Stack2 := ExError.
            recoveredBlock23Block117PC := 187.
        ].
        recoveredBlock23Block117Step = 187 ifTrue: [
            recoveredBlock23Block117Stack3 := [:block28111a48Arg1 | 
    | block28111a48Value0 block28111a48Value1 |
    block28111a48Value0 := block28111a48Arg1.
    block28111a48Value1 := (block28111a48Value0) exitWith: (nil).
    block28111a48Value1
].
            recoveredBlock23Block117PC := 189.
        ].
        recoveredBlock23Block117Step = 189 ifTrue: [
            recoveredBlock23Block117PC := 197.
        ].
        recoveredBlock23Block117Step = 197 ifTrue: [
            recoveredBlock23Block117Stack1 := (recoveredBlock23Block117Stack1) when: (recoveredBlock23Block117Stack2) do: (recoveredBlock23Block117Stack3).
            recoveredBlock23Block117PC := 199.
        ].
        recoveredBlock23Block117Step = 199 ifTrue: [
            recoveredBlock23Block117Result := recoveredBlock23Block117Stack1.
            recoveredBlock23Block117Done := true.
        ].
    ].
    recoveredBlock23Block117Result
].
    recoveredBlock23Value10 := handler.
    (recoveredBlock23Value8) required: ('SelectorPort') do: (recoveredBlock23Value9) ifNot: (recoveredBlock23Value10).
    recoveredBlock23Value11 := recoveredLocal1.
    recoveredBlock23Value12 := recoveredBlock23Local1.
    (recoveredBlock23Value11) selectorPorts: (recoveredBlock23Value12).
    recoveredBlock23Value13 := recoveredLocal1.
    recoveredBlock23Value14 := recoveredBlock23Local2.
    (recoveredBlock23Value13) returnPorts: (recoveredBlock23Value14).
    recoveredBlock23Value15 := recoveredLocal1.
    recoveredBlock23Value16 := recoveredBlock23Local3.
    recoveredBlock23Value17 := (recoveredBlock23Value15) sequences: (recoveredBlock23Value16).
    recoveredBlock23Value17
].
    recoveredValue6 := handler.
    (recoveredValue4) required: ('Interfaces') do: (recoveredValue5) ifNot: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := handler.
    (recoveredValue7) doneIfNot: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20570aac; bytecode file offset 0xe6d3e4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readConnectionT: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGConnectionGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (self) readViewInfoT: (recoveredBlock16Value1).
    recoveredBlock16Value3 := (recoveredBlock16Value0) attributedViewNames: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [:block28111c40Arg1 | 
    | block28111c40Value0 |
    block28111c40Value0 := ('ignored') notNil.
    block28111c40Value0
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredLocal1.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (recoveredBlock58Value0) drawingOrder: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'Start'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal1.
            recoveredBlock78PC := 87.
        ].
        recoveredBlock78Step = 87 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack3 := 'graphicOID'.
            recoveredBlock78PC := 90.
        ].
        recoveredBlock78Step = 90 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) getGraphicOID: (recoveredBlock78Stack3).
            recoveredBlock78PC := 92.
        ].
        recoveredBlock78Step = 92 ifTrue: [
            (recoveredBlock78Stack1) startConnector: (recoveredBlock78Stack2).
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack2 := 'Position'.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack3 := [:block28111c64Arg1 | 
    | block28111c64Value0 |
    block28111c64Value0 := ('ignored') notNil.
    block28111c64Value0
].
            recoveredBlock78PC := 99.
        ].
        recoveredBlock78Step = 99 ifTrue: [
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78Stack4 := handler.
            recoveredBlock78PC := 108.
        ].
        recoveredBlock78Step = 108 ifTrue: [
            (recoveredBlock78Stack1) required: (recoveredBlock78Stack2) do: (recoveredBlock78Stack3) ifNot: (recoveredBlock78Stack4).
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 112.
        ].
        recoveredBlock78Step = 112 ifTrue: [
            recoveredBlock78Stack2 := handler.
            recoveredBlock78PC := 114.
        ].
        recoveredBlock78Step = 114 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) doneIfNot: (recoveredBlock78Stack2).
            recoveredBlock78PC := 116.
        ].
        recoveredBlock78Step = 116 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'End'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127Stack5 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := recoveredLocal1.
            recoveredBlock127PC := 137.
        ].
        recoveredBlock127Step = 137 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 138.
        ].
        recoveredBlock127Step = 138 ifTrue: [
            recoveredBlock127Stack3 := 'graphicOID'.
            recoveredBlock127PC := 140.
        ].
        recoveredBlock127Step = 140 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) getGraphicOID: (recoveredBlock127Stack3).
            recoveredBlock127PC := 142.
        ].
        recoveredBlock127Step = 142 ifTrue: [
            (recoveredBlock127Stack1) endConnector: (recoveredBlock127Stack2).
            recoveredBlock127PC := 144.
        ].
        recoveredBlock127Step = 144 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 145.
        ].
        recoveredBlock127Step = 145 ifTrue: [
            recoveredBlock127Stack2 := 'Position'.
            recoveredBlock127PC := 147.
        ].
        recoveredBlock127Step = 147 ifTrue: [
            recoveredBlock127Stack3 := [:block28111c88Arg1 | 
    | block28111c88Value0 |
    block28111c88Value0 := ('ignored') notNil.
    block28111c88Value0
].
            recoveredBlock127PC := 149.
        ].
        recoveredBlock127Step = 149 ifTrue: [
            recoveredBlock127PC := 156.
        ].
        recoveredBlock127Step = 156 ifTrue: [
            recoveredBlock127Stack4 := handler.
            recoveredBlock127PC := 158.
        ].
        recoveredBlock127Step = 158 ifTrue: [
            (recoveredBlock127Stack1) required: (recoveredBlock127Stack2) do: (recoveredBlock127Stack3) ifNot: (recoveredBlock127Stack4).
            recoveredBlock127PC := 161.
        ].
        recoveredBlock127Step = 161 ifTrue: [
            recoveredBlock127Stack1 := recoveredBlock127Arg1.
            recoveredBlock127PC := 162.
        ].
        recoveredBlock127Step = 162 ifTrue: [
            recoveredBlock127Stack2 := handler.
            recoveredBlock127PC := 164.
        ].
        recoveredBlock127Step = 164 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) doneIfNot: (recoveredBlock127Stack2).
            recoveredBlock127PC := 166.
        ].
        recoveredBlock127Step = 166 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'ConnectionLine'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Local1 recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 recoveredBlock177Value3 recoveredBlock177Value4 recoveredBlock177Value5 recoveredBlock177Value6 recoveredBlock177Value7 recoveredBlock177Value8 recoveredBlock177Value9 |
    recoveredBlock177Value0 := OrderedCollection.
    recoveredBlock177Value1 := (recoveredBlock177Value0) new.
    recoveredBlock177Local1 := recoveredBlock177Value1.
    recoveredBlock177Value2 := recoveredBlock177Arg1.
    recoveredBlock177Value3 := [:recoveredBlock177Block195Arg1 | 
    | recoveredBlock177Block195Value0 recoveredBlock177Block195Value1 recoveredBlock177Block195Value2 recoveredBlock177Block195Value3 |
    recoveredBlock177Block195Value0 := recoveredBlock177Local1.
    recoveredBlock177Block195Value1 := recoveredBlock177Block195Arg1.
    recoveredBlock177Block195Value2 := (recoveredBlock177Block195Value1) asPoint.
    recoveredBlock177Block195Value3 := (recoveredBlock177Block195Value0) add: (recoveredBlock177Block195Value2).
    recoveredBlock177Block195Value3
].
    (recoveredBlock177Value2) multiple: ('BendPoint') do: (recoveredBlock177Value3).
    recoveredBlock177Value4 := recoveredLocal1.
    recoveredBlock177Value5 := recoveredBlock177Local1.
    recoveredBlock177Value6 := (recoveredBlock177Value5) asArray.
    (recoveredBlock177Value4) xmlSetBends: (recoveredBlock177Value6).
    recoveredBlock177Value7 := recoveredBlock177Arg1.
    recoveredBlock177Value8 := handler.
    recoveredBlock177Value9 := (recoveredBlock177Value7) doneIfNot: (recoveredBlock177Value8).
    recoveredBlock177Value9
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20578aa0; bytecode file offset 0xe753c4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSequenceCallT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'graphicOID'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) getGraphicOID: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := 'connectOID'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) getGraphicOID: (recoveredStack4) default: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 'userVisibility'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 'blockCall'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBoolean: (recoveredStack4) default: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := 'sequenceNumber'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNNInt: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'startAtomic'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := 'endAtomic'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := #(nil 'start' 'end' 'startend').
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'methodOID'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock178Value0 recoveredBlock178Value1 |
    recoveredBlock178Value0 := recoveredArg1.
    recoveredBlock178Value1 := (self) methodOID: (recoveredBlock178Value0) nameAttr: ('methodName') oidAttr: ('methodOID') default: (nil).
    recoveredBlock178Value1
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := ExError.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := [:recoveredBlock198Arg1 | 
    | recoveredBlock198Value0 recoveredBlock198Value1 recoveredBlock198Value2 |
    recoveredBlock198Value0 := recoveredBlock198Arg1.
    recoveredBlock198Value1 := recoveredLocal1.
    recoveredBlock198Value2 := (recoveredBlock198Value0) exitWith: (recoveredBlock198Value1).
    recoveredBlock198Value2
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) when: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 recoveredBlock220Value3 |
    recoveredBlock220Value0 := recoveredLocal5.
    recoveredBlock220Value1 := recoveredBlock220Arg1.
    recoveredBlock220Value2 := (recoveredBlock220Value1) asPoint.
    recoveredBlock220Value3 := (recoveredBlock220Value0) at: (3) put: (recoveredBlock220Value2).
    recoveredBlock220Value3
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2059886c; bytecode file offset 0xe951b4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readJunctionT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGJunctionGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (self) readViewInfoT: (recoveredBlock35Value1).
    recoveredBlock35Value3 := (recoveredBlock35Value0) attributedViewNames: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 |
    recoveredBlock59Value0 := recoveredLocal1.
    recoveredBlock59Value1 := recoveredBlock59Arg1.
    recoveredBlock59Value2 := (self) readLineStyleT: (recoveredBlock59Value1).
    recoveredBlock59Value3 := (recoveredBlock59Value0) at: (3) put: (recoveredBlock59Value2).
    recoveredBlock59Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := RBAreaStyle.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := 'FillColor'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := [:block28114f4cArg1 | 
    | block28114f4cValue0 block28114f4cValue1 |
    block28114f4cValue0 := block28114f4cArg1.
    block28114f4cValue1 := (block28114f4cValue0) asColor.
    block28114f4cValue1
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) optional: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) color: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Value0 recoveredBlock117Value1 recoveredBlock117Value2 recoveredBlock117Value3 |
    recoveredBlock117Value0 := recoveredLocal2.
    recoveredBlock117Value1 := recoveredBlock117Arg1.
    recoveredBlock117Value2 := (recoveredBlock117Value1) asSize.
    recoveredBlock117Value3 := (recoveredBlock117Value0) size: (recoveredBlock117Value2).
    recoveredBlock117Value3
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 |
    recoveredBlock143Value0 := recoveredLocal2.
    recoveredBlock143Value1 := recoveredBlock143Arg1.
    recoveredBlock143Value2 := (recoveredBlock143Value1) asPoint.
    recoveredBlock143Value3 := (recoveredBlock143Value0) position: (recoveredBlock143Value2).
    recoveredBlock143Value3
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'Interfaces'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Local1 recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 recoveredBlock169Value3 recoveredBlock169Value4 recoveredBlock169Value5 recoveredBlock169Value6 recoveredBlock169Value7 recoveredBlock169Value8 |
    recoveredBlock169Value0 := Dictionary.
    recoveredBlock169Value1 := (recoveredBlock169Value0) new.
    recoveredBlock169Local1 := recoveredBlock169Value1.
    recoveredBlock169Value2 := recoveredBlock169Arg1.
    recoveredBlock169Value3 := [:recoveredBlock169Block188Arg1 | 
    | recoveredBlock169Block188Local1 recoveredBlock169Block188Value0 recoveredBlock169Block188Value1 recoveredBlock169Block188Value2 recoveredBlock169Block188Value3 recoveredBlock169Block188Value4 recoveredBlock169Block188Value5 |
    recoveredBlock169Block188Value0 := recoveredBlock169Block188Arg1.
    recoveredBlock169Block188Value1 := (recoveredBlock169Block188Value0) getGraphicOID: ('graphicOID').
    recoveredBlock169Block188Local1 := recoveredBlock169Block188Value1.
    recoveredBlock169Block188Value2 := recoveredBlock169Block188Arg1.
    recoveredBlock169Block188Value3 := [:recoveredBlock169Block188Block209Arg1 | 
    | recoveredBlock169Block188Block209Value0 recoveredBlock169Block188Block209Value1 recoveredBlock169Block188Block209Value2 recoveredBlock169Block188Block209Value3 recoveredBlock169Block188Block209Value4 |
    recoveredBlock169Block188Block209Value0 := recoveredBlock169Local1.
    recoveredBlock169Block188Block209Value1 := recoveredBlock169Block188Local1.
    recoveredBlock169Block188Block209Value2 := recoveredBlock169Block188Block209Arg1.
    recoveredBlock169Block188Block209Value3 := (recoveredBlock169Block188Block209Value2) asPoint.
    recoveredBlock169Block188Block209Value4 := (recoveredBlock169Block188Block209Value0) at: (recoveredBlock169Block188Block209Value1) put: (recoveredBlock169Block188Block209Value3).
    recoveredBlock169Block188Block209Value4
].
    recoveredBlock169Block188Value4 := handler.
    recoveredBlock169Block188Value5 := (recoveredBlock169Block188Value2) required: ('Position') do: (recoveredBlock169Block188Value3) ifNot: (recoveredBlock169Block188Value4).
    recoveredBlock169Block188Value5
].
    (recoveredBlock169Value2) multiple: ('Connector') do: (recoveredBlock169Value3).
    recoveredBlock169Value4 := recoveredBlock169Arg1.
    recoveredBlock169Value5 := handler.
    (recoveredBlock169Value4) doneIfNot: (recoveredBlock169Value5).
    recoveredBlock169Value6 := recoveredLocal2.
    recoveredBlock169Value7 := recoveredBlock169Local1.
    recoveredBlock169Value8 := (recoveredBlock169Value6) dynamicConnectors: (recoveredBlock169Value7).
    recoveredBlock169Value8
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'Icon'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [:block28114f70Arg1 | 
    | block28114f70Value0 |
    block28114f70Value0 := ('ignored') notNil.
    block28114f70Value0
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ae76c; bytecode file offset 0xeab0a8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readTableSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block25Arg1 | 
    | recoveredBlock15Block25Local1 recoveredBlock15Block25Value0 recoveredBlock15Block25Value1 recoveredBlock15Block25Value2 recoveredBlock15Block25Value3 recoveredBlock15Block25Value4 recoveredBlock15Block25Value5 recoveredBlock15Block25Value6 recoveredBlock15Block25Value7 |
    recoveredBlock15Block25Value0 := SGASDLCodeVariantKey.
    recoveredBlock15Block25Value1 := (recoveredBlock15Block25Value0) create.
    recoveredBlock15Block25Local1 := recoveredBlock15Block25Value1.
    recoveredBlock15Block25Value2 := recoveredBlock15Block25Arg1.
    recoveredBlock15Block25Value3 := recoveredBlock15Block25Local1.
    recoveredBlock15Block25Value4 := sgClass.
    recoveredBlock15Block25Value5 := (recoveredBlock15Block25Value4) code.
    recoveredBlock15Block25Value6 := recoveredLocal2.
    recoveredBlock15Block25Value7 := (self) readMethodBodies: (recoveredBlock15Block25Value2) variantKey: (recoveredBlock15Block25Value3) archive: (recoveredBlock15Block25Value5) definedMethods: (recoveredBlock15Block25Value6).
    recoveredBlock15Block25Value7
].
    recoveredBlock15Value2 := handler.
    (recoveredBlock15Value0) required: ('MethodBodies') do: (recoveredBlock15Value1) ifNot: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := handler.
    recoveredBlock15Value5 := (recoveredBlock15Value3) doneIfNot: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    recoveredValue4 := handler.
    (recoveredValue2) required: ('ESDLCode') do: (recoveredValue3) ifNot: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Local1 recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71Stack5 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := ConditionalTable.
            recoveredBlock71PC := 80.
        ].
        recoveredBlock71Step = 80 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) new.
            recoveredBlock71PC := 81.
        ].
        recoveredBlock71Step = 81 ifTrue: [
            recoveredBlock71Local1 := recoveredBlock71Stack1.
            recoveredBlock71PC := 84.
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 87.
        ].
        recoveredBlock71Step = 87 ifTrue: [
            recoveredBlock71Stack2 := sgClass.
            recoveredBlock71PC := 89.
        ].
        recoveredBlock71Step = 89 ifTrue: [
            (recoveredBlock71Stack1) item: (recoveredBlock71Stack2).
            recoveredBlock71PC := 91.
        ].
        recoveredBlock71Step = 91 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 94.
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71Stack2 := 'ConditionColumns'.
            recoveredBlock71PC := 96.
        ].
        recoveredBlock71Step = 96 ifTrue: [
            recoveredBlock71Stack3 := [:recoveredBlock71Block96Arg1 | 
    | recoveredBlock71Block96Value0 recoveredBlock71Block96Value1 recoveredBlock71Block96Value2 |
    recoveredBlock71Block96Value0 := recoveredBlock71Block96Arg1.
    recoveredBlock71Block96Value1 := recoveredBlock71Local1.
    recoveredBlock71Block96Value2 := (self) readConditionTableColumns: (recoveredBlock71Block96Value0) table: (recoveredBlock71Block96Value1) type: ('conditions').
    recoveredBlock71Block96Value2
].
            recoveredBlock71PC := 112.
        ].
        recoveredBlock71Step = 112 ifTrue: [
            recoveredBlock71Stack4 := handler.
            recoveredBlock71PC := 114.
        ].
        recoveredBlock71Step = 114 ifTrue: [
            (recoveredBlock71Stack1) required: (recoveredBlock71Stack2) do: (recoveredBlock71Stack3) ifNot: (recoveredBlock71Stack4).
            recoveredBlock71PC := 117.
        ].
        recoveredBlock71Step = 117 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 120.
        ].
        recoveredBlock71Step = 120 ifTrue: [
            recoveredBlock71Stack2 := 'InstructionColumns'.
            recoveredBlock71PC := 122.
        ].
        recoveredBlock71Step = 122 ifTrue: [
            recoveredBlock71Stack3 := [:recoveredBlock71Block122Arg1 | 
    | recoveredBlock71Block122Value0 recoveredBlock71Block122Value1 recoveredBlock71Block122Value2 |
    recoveredBlock71Block122Value0 := recoveredBlock71Block122Arg1.
    recoveredBlock71Block122Value1 := recoveredBlock71Local1.
    recoveredBlock71Block122Value2 := (self) readConditionTableColumns: (recoveredBlock71Block122Value0) table: (recoveredBlock71Block122Value1) type: ('instructions').
    recoveredBlock71Block122Value2
].
            recoveredBlock71PC := 138.
        ].
        recoveredBlock71Step = 138 ifTrue: [
            recoveredBlock71Stack4 := handler.
            recoveredBlock71PC := 140.
        ].
        recoveredBlock71Step = 140 ifTrue: [
            (recoveredBlock71Stack1) required: (recoveredBlock71Stack2) do: (recoveredBlock71Stack3) ifNot: (recoveredBlock71Stack4).
            recoveredBlock71PC := 143.
        ].
        recoveredBlock71Step = 143 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 146.
        ].
        recoveredBlock71Step = 146 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) conditions.
            recoveredBlock71PC := 148.
        ].
        recoveredBlock71Step = 148 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) size.
            recoveredBlock71PC := 150.
        ].
        recoveredBlock71Step = 150 ifTrue: [
            recoveredBlock71Stack2 := 0.
            recoveredBlock71PC := 152.
        ].
        recoveredBlock71Step = 152 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) > (recoveredBlock71Stack2).
            recoveredBlock71PC := 153.
        ].
        recoveredBlock71Step = 153 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 156] ifFalse: [recoveredBlock71PC := 168].
        ].
        recoveredBlock71Step = 156 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 159.
        ].
        recoveredBlock71Step = 159 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Local1.
            recoveredBlock71PC := 162.
        ].
        recoveredBlock71Step = 162 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) conditions.
            recoveredBlock71PC := 164.
        ].
        recoveredBlock71Step = 164 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) size.
            recoveredBlock71PC := 166.
        ].
        recoveredBlock71Step = 166 ifTrue: [
            (recoveredBlock71Stack1) rows: (recoveredBlock71Stack2).
            recoveredBlock71PC := 168.
        ].
        recoveredBlock71Step = 168 ifTrue: [
            recoveredBlock71Stack1 := SGConditionalTableSpecification.
            recoveredBlock71PC := 170.
        ].
        recoveredBlock71Step = 170 ifTrue: [
            recoveredBlock71Stack2 := recoveredArg2.
            recoveredBlock71PC := 173.
        ].
        recoveredBlock71Step = 173 ifTrue: [
            recoveredBlock71Stack3 := recoveredArg3.
            recoveredBlock71PC := 176.
        ].
        recoveredBlock71Step = 176 ifTrue: [
            recoveredBlock71Stack4 := recoveredLocal2.
            recoveredBlock71PC := 179.
        ].
        recoveredBlock71Step = 179 ifTrue: [
            recoveredBlock71Stack4 := (recoveredBlock71Stack4) asArray.
            recoveredBlock71PC := 181.
        ].
        recoveredBlock71Step = 181 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) specFor: (recoveredBlock71Stack1) public: (recoveredBlock71Stack2) name: (recoveredBlock71Stack3) methods: (recoveredBlock71Stack4).
            recoveredBlock71PC := 184.
        ].
        recoveredBlock71Step = 184 ifTrue: [
            recoveredLocal1 := recoveredBlock71Stack0.
            recoveredBlock71PC := 187.
        ].
        recoveredBlock71Step = 187 ifTrue: [
            recoveredBlock71Stack0 := recoveredLocal1.
            recoveredBlock71PC := 190.
        ].
        recoveredBlock71Step = 190 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 193.
        ].
        recoveredBlock71Step = 193 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) conditionalTable: (recoveredBlock71Stack1).
            recoveredBlock71PC := 195.
        ].
        recoveredBlock71Step = 195 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack0.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
    recoveredValue7 := [:recoveredBlock198Arg1 | 
    | recoveredBlock198Local1 recoveredBlock198Value0 recoveredBlock198Value1 recoveredBlock198Value2 recoveredBlock198Value3 recoveredBlock198Value4 recoveredBlock198Value5 recoveredBlock198Value6 recoveredBlock198Value7 recoveredBlock198Value8 recoveredBlock198Value9 recoveredBlock198Value10 recoveredBlock198Value11 recoveredBlock198Value12 recoveredBlock198Value13 recoveredBlock198Value14 recoveredBlock198Value15 recoveredBlock198Value16 |
    recoveredBlock198Value0 := BooleanTable.
    recoveredBlock198Value1 := (recoveredBlock198Value0) new.
    recoveredBlock198Local1 := recoveredBlock198Value1.
    recoveredBlock198Value2 := recoveredBlock198Arg1.
    recoveredBlock198Value3 := [:recoveredBlock198Block215Arg1 | 
    | recoveredBlock198Block215Value0 recoveredBlock198Block215Value1 recoveredBlock198Block215Value2 |
    recoveredBlock198Block215Value0 := recoveredBlock198Block215Arg1.
    recoveredBlock198Block215Value1 := recoveredBlock198Local1.
    recoveredBlock198Block215Value2 := (self) readBooleanTableColumns: (recoveredBlock198Block215Value0) table: (recoveredBlock198Block215Value1) inOut: ('in').
    recoveredBlock198Block215Value2
].
    recoveredBlock198Value4 := handler.
    (recoveredBlock198Value2) required: ('InputColumns') do: (recoveredBlock198Value3) ifNot: (recoveredBlock198Value4).
    recoveredBlock198Value5 := recoveredBlock198Arg1.
    recoveredBlock198Value6 := [:recoveredBlock198Block242Arg1 | 
    | recoveredBlock198Block242Value0 recoveredBlock198Block242Value1 recoveredBlock198Block242Value2 |
    recoveredBlock198Block242Value0 := recoveredBlock198Block242Arg1.
    recoveredBlock198Block242Value1 := recoveredBlock198Local1.
    recoveredBlock198Block242Value2 := (self) readBooleanTableColumns: (recoveredBlock198Block242Value0) table: (recoveredBlock198Block242Value1) inOut: ('out').
    recoveredBlock198Block242Value2
].
    recoveredBlock198Value7 := handler.
    (recoveredBlock198Value5) required: ('OutputColumns') do: (recoveredBlock198Value6) ifNot: (recoveredBlock198Value7).
    recoveredBlock198Value8 := SGBooleanTableSpecification.
    recoveredBlock198Value9 := recoveredArg2.
    recoveredBlock198Value10 := recoveredArg3.
    recoveredBlock198Value11 := recoveredLocal2.
    recoveredBlock198Value12 := (recoveredBlock198Value11) asArray.
    recoveredBlock198Value13 := (self) specFor: (recoveredBlock198Value8) public: (recoveredBlock198Value9) name: (recoveredBlock198Value10) methods: (recoveredBlock198Value12).
    recoveredLocal1 := recoveredBlock198Value13.
    recoveredBlock198Value14 := recoveredLocal1.
    recoveredBlock198Value15 := recoveredBlock198Local1.
    recoveredBlock198Value16 := (recoveredBlock198Value14) booleanTable: (recoveredBlock198Value15).
    recoveredBlock198Value16
].
    recoveredValue8 := handler.
    (recoveredValue5) choice: ('ConditionalTable') do: (recoveredValue6) choice: ('BooleanTable') do: (recoveredValue7) ifNot: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := handler.
    (recoveredValue9) doneIfNot: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x205bb3ec; bytecode file offset 0xeb7d38"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readGeneralOperatorInformation: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (self) readViewInfoT: (recoveredBlock9Value1).
    recoveredBlock9Value3 := (recoveredBlock9Value0) attributedViewNames: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    (recoveredValue0) optional: ('ViewInfo') do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := recoveredArg2.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (self) readLineStyleT: (recoveredBlock31Value1).
    recoveredBlock31Value3 := (recoveredBlock31Value0) lineStyle: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
    (recoveredValue2) optional: ('LineStyle') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := recoveredArg2.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := (recoveredBlock55Value1) asColor.
    recoveredBlock55Value3 := (recoveredBlock55Value0) xmlFillColor: (recoveredBlock55Value2).
    recoveredBlock55Value3
].
    (recoveredValue4) optional: ('FillColor') do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 |
    recoveredBlock78Value0 := recoveredArg2.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value1) asPoint.
    recoveredBlock78Value3 := (recoveredBlock78Value0) position: (recoveredBlock78Value2).
    recoveredBlock78Value3
].
    recoveredValue8 := handler.
    (recoveredValue6) required: ('Position') do: (recoveredValue7) ifNot: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 recoveredBlock103Value4 recoveredBlock103Value5 |
    recoveredBlock103Value0 := recoveredBlock103Arg1.
    recoveredBlock103Value1 := [:recoveredBlock103Block113Arg1 | 
    | recoveredBlock103Block113Local1 recoveredBlock103Block113Local2 recoveredBlock103Block113Local3 recoveredBlock103Block113Stack0 recoveredBlock103Block113Stack1 recoveredBlock103Block113Stack2 recoveredBlock103Block113Stack3 recoveredBlock103Block113Stack4 recoveredBlock103Block113PC recoveredBlock103Block113Step recoveredBlock103Block113Done recoveredBlock103Block113Result |
    recoveredBlock103Block113Stack0 := self.
    recoveredBlock103Block113PC := 120.
    recoveredBlock103Block113Done := false.
    [recoveredBlock103Block113Done not] whileTrue: [
        recoveredBlock103Block113Step := recoveredBlock103Block113PC.
        recoveredBlock103Block113Step = 120 ifTrue: [
            recoveredBlock103Block113Stack1 := ASDXMLIndexedTable.
            recoveredBlock103Block113PC := 122.
        ].
        recoveredBlock103Block113Step = 122 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) new.
            recoveredBlock103Block113PC := 124.
        ].
        recoveredBlock103Block113Step = 124 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) init.
            recoveredBlock103Block113PC := 126.
        ].
        recoveredBlock103Block113Step = 126 ifTrue: [
            recoveredBlock103Block113Local3 := recoveredBlock103Block113Stack1.
            recoveredBlock103Block113PC := 129.
        ].
        recoveredBlock103Block113Step = 129 ifTrue: [
            recoveredBlock103Block113Stack1 := ASDXMLIndexedTable.
            recoveredBlock103Block113PC := 131.
        ].
        recoveredBlock103Block113Step = 131 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) new.
            recoveredBlock103Block113PC := 133.
        ].
        recoveredBlock103Block113Step = 133 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) init.
            recoveredBlock103Block113PC := 135.
        ].
        recoveredBlock103Block113Step = 135 ifTrue: [
            recoveredBlock103Block113Local2 := recoveredBlock103Block113Stack1.
            recoveredBlock103Block113PC := 138.
        ].
        recoveredBlock103Block113Step = 138 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredBlock103Block113Arg1.
            recoveredBlock103Block113PC := 141.
        ].
        recoveredBlock103Block113Step = 141 ifTrue: [
            recoveredBlock103Block113Stack2 := 'graphicOID'.
            recoveredBlock103Block113PC := 143.
        ].
        recoveredBlock103Block113Step = 143 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) getGraphicOID: (recoveredBlock103Block113Stack2).
            recoveredBlock103Block113PC := 145.
        ].
        recoveredBlock103Block113Step = 145 ifTrue: [
            recoveredBlock103Block113Local1 := recoveredBlock103Block113Stack1.
            recoveredBlock103Block113PC := 148.
        ].
        recoveredBlock103Block113Step = 148 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredBlock103Block113Arg1.
            recoveredBlock103Block113PC := 151.
        ].
        recoveredBlock103Block113Step = 151 ifTrue: [
            recoveredBlock103Block113Stack2 := 'SelectorPort'.
            recoveredBlock103Block113PC := 153.
        ].
        recoveredBlock103Block113Step = 153 ifTrue: [
            recoveredBlock103Block113Stack3 := [:recoveredBlock103Block113Block153Arg1 | 
    | recoveredBlock103Block113Block153Local1 recoveredBlock103Block113Block153Value0 recoveredBlock103Block113Block153Value1 recoveredBlock103Block113Block153Value2 recoveredBlock103Block113Block153Value3 recoveredBlock103Block113Block153Value4 recoveredBlock103Block113Block153Value5 recoveredBlock103Block113Block153Value6 |
    recoveredBlock103Block113Block153Value0 := recoveredBlock103Block113Block153Arg1.
    recoveredBlock103Block113Block153Value1 := (recoveredBlock103Block113Block153Value0) getNNInt: ('index').
    recoveredBlock103Block113Block153Local1 := recoveredBlock103Block113Block153Value1.
    recoveredBlock103Block113Block153Value2 := recoveredBlock103Block113Local3.
    recoveredBlock103Block113Block153Value3 := recoveredBlock103Block113Block153Local1.
    recoveredBlock103Block113Block153Value4 := recoveredBlock103Block113Block153Arg1.
    recoveredBlock103Block113Block153Value5 := (recoveredBlock103Block113Block153Value4) getGraphicOID: ('graphicOID').
    recoveredBlock103Block113Block153Value6 := (recoveredBlock103Block113Block153Value2) at: (recoveredBlock103Block113Block153Value3) put: (recoveredBlock103Block113Block153Value5).
    recoveredBlock103Block113Block153Value6
].
            recoveredBlock103Block113PC := 178.
        ].
        recoveredBlock103Block113Step = 178 ifTrue: [
            (recoveredBlock103Block113Stack1) multiple: (recoveredBlock103Block113Stack2) do: (recoveredBlock103Block113Stack3).
            recoveredBlock103Block113PC := 180.
        ].
        recoveredBlock103Block113Step = 180 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredBlock103Block113Arg1.
            recoveredBlock103Block113PC := 183.
        ].
        recoveredBlock103Block113Step = 183 ifTrue: [
            recoveredBlock103Block113Stack2 := 'InputPort'.
            recoveredBlock103Block113PC := 185.
        ].
        recoveredBlock103Block113Step = 185 ifTrue: [
            recoveredBlock103Block113Stack3 := [:recoveredBlock103Block113Block185Arg1 | 
    | recoveredBlock103Block113Block185Local1 recoveredBlock103Block113Block185Local2 recoveredBlock103Block113Block185Value0 recoveredBlock103Block113Block185Value1 recoveredBlock103Block113Block185Value2 recoveredBlock103Block113Block185Value3 recoveredBlock103Block113Block185Value4 recoveredBlock103Block113Block185Value5 recoveredBlock103Block113Block185Value6 recoveredBlock103Block113Block185Value7 recoveredBlock103Block113Block185Value8 recoveredBlock103Block113Block185Value9 recoveredBlock103Block113Block185Value10 |
    recoveredBlock103Block113Block185Value0 := recoveredBlock103Block113Block185Arg1.
    recoveredBlock103Block113Block185Value1 := (recoveredBlock103Block113Block185Value0) getNNInt: ('index').
    recoveredBlock103Block113Block185Local2 := recoveredBlock103Block113Block185Value1.
    recoveredBlock103Block113Block185Value2 := recoveredBlock103Block113Local3.
    recoveredBlock103Block113Block185Value3 := recoveredBlock103Block113Block185Local2.
    recoveredBlock103Block113Block185Value4 := recoveredBlock103Block113Block185Arg1.
    recoveredBlock103Block113Block185Value5 := (recoveredBlock103Block113Block185Value4) getGraphicOID: ('graphicOID').
    (recoveredBlock103Block113Block185Value2) at: (recoveredBlock103Block113Block185Value3) put: (recoveredBlock103Block113Block185Value5).
    recoveredBlock103Block113Block185Value6 := recoveredBlock103Block113Local2.
    recoveredBlock103Block113Block185Value7 := recoveredBlock103Block113Block185Local2.
    recoveredBlock103Block113Block185Value8 := recoveredBlock103Block113Block185Arg1.
    recoveredBlock103Block113Block185Value9 := (recoveredBlock103Block113Block185Value8) getString: ('name').
    recoveredBlock103Block113Block185Value10 := (recoveredBlock103Block113Block185Value6) at: (recoveredBlock103Block113Block185Value7) put: (recoveredBlock103Block113Block185Value9).
    recoveredBlock103Block113Block185Value10
].
            recoveredBlock103Block113PC := 221.
        ].
        recoveredBlock103Block113Step = 221 ifTrue: [
            (recoveredBlock103Block113Stack1) multiple: (recoveredBlock103Block113Stack2) do: (recoveredBlock103Block113Stack3).
            recoveredBlock103Block113PC := 223.
        ].
        recoveredBlock103Block113Step = 223 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredBlock103Block113Arg1.
            recoveredBlock103Block113PC := 226.
        ].
        recoveredBlock103Block113Step = 226 ifTrue: [
            recoveredBlock103Block113Stack2 := handler.
            recoveredBlock103Block113PC := 228.
        ].
        recoveredBlock103Block113Step = 228 ifTrue: [
            (recoveredBlock103Block113Stack1) doneIfNot: (recoveredBlock103Block113Stack2).
            recoveredBlock103Block113PC := 230.
        ].
        recoveredBlock103Block113Step = 230 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredArg2.
            recoveredBlock103Block113PC := 233.
        ].
        recoveredBlock103Block113Step = 233 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) class.
            recoveredBlock103Block113PC := 235.
        ].
        recoveredBlock103Block113Step = 235 ifTrue: [
            recoveredBlock103Block113Stack2 := SGSwitchGODB.
            recoveredBlock103Block113PC := 237.
        ].
        recoveredBlock103Block113Step = 237 ifTrue: [
            (recoveredBlock103Block113Stack1 ~~ recoveredBlock103Block113Stack2) ifTrue: [recoveredBlock103Block113PC := 256] ifFalse: [recoveredBlock103Block113PC := 240].
        ].
        recoveredBlock103Block113Step = 240 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredArg2.
            recoveredBlock103Block113PC := 243.
        ].
        recoveredBlock103Block113Step = 243 ifTrue: [
            recoveredBlock103Block113Stack2 := recoveredBlock103Block113Local3.
            recoveredBlock103Block113PC := 246.
        ].
        recoveredBlock103Block113Step = 246 ifTrue: [
            recoveredBlock103Block113Stack3 := recoveredBlock103Block113Local1.
            recoveredBlock103Block113PC := 249.
        ].
        recoveredBlock103Block113Step = 249 ifTrue: [
            recoveredBlock103Block113Stack2 := (recoveredBlock103Block113Stack2) asArrayWithTrailingObj: (recoveredBlock103Block113Stack3).
            recoveredBlock103Block113PC := 251.
        ].
        recoveredBlock103Block113Step = 251 ifTrue: [
            (recoveredBlock103Block113Stack1) connectors: (recoveredBlock103Block113Stack2).
            recoveredBlock103Block113PC := 253.
        ].
        recoveredBlock103Block113Step = 253 ifTrue: [
            recoveredBlock103Block113PC := 269.
        ].
        recoveredBlock103Block113Step = 256 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredArg2.
            recoveredBlock103Block113PC := 259.
        ].
        recoveredBlock103Block113Step = 259 ifTrue: [
            recoveredBlock103Block113Stack2 := recoveredBlock103Block113Local3.
            recoveredBlock103Block113PC := 262.
        ].
        recoveredBlock103Block113Step = 262 ifTrue: [
            recoveredBlock103Block113Stack3 := recoveredBlock103Block113Local1.
            recoveredBlock103Block113PC := 265.
        ].
        recoveredBlock103Block113Step = 265 ifTrue: [
            recoveredBlock103Block113Stack2 := (recoveredBlock103Block113Stack2) asArrayWithLeadingObj: (recoveredBlock103Block113Stack3).
            recoveredBlock103Block113PC := 267.
        ].
        recoveredBlock103Block113Step = 267 ifTrue: [
            (recoveredBlock103Block113Stack1) connectors: (recoveredBlock103Block113Stack2).
            recoveredBlock103Block113PC := 269.
        ].
        recoveredBlock103Block113Step = 269 ifTrue: [
            recoveredBlock103Block113Stack1 := nil.
            recoveredBlock103Block113PC := 270.
        ].
        recoveredBlock103Block113Step = 270 ifTrue: [
            recoveredBlock103Block113Stack2 := recoveredBlock103Block113Local2.
            recoveredBlock103Block113PC := 273.
        ].
        recoveredBlock103Block113Step = 273 ifTrue: [
            recoveredBlock103Block113Stack2 := (recoveredBlock103Block113Stack2) size.
            recoveredBlock103Block113PC := 275.
        ].
        recoveredBlock103Block113Step = 275 ifTrue: [
            recoveredBlock103Block113Stack3 := 0.
            recoveredBlock103Block113PC := 277.
        ].
        recoveredBlock103Block113Step = 277 ifTrue: [
            recoveredBlock103Block113Stack2 := (recoveredBlock103Block113Stack2) > (recoveredBlock103Block113Stack3).
            recoveredBlock103Block113PC := 278.
        ].
        recoveredBlock103Block113Step = 278 ifTrue: [
            (recoveredBlock103Block113Stack2) ifTrue: [recoveredBlock103Block113PC := 282] ifFalse: [recoveredBlock103Block113PC := 293].
        ].
        recoveredBlock103Block113Step = 282 ifTrue: [
            recoveredBlock103Block113PC := 283.
        ].
        recoveredBlock103Block113Step = 283 ifTrue: [
            recoveredBlock103Block113Stack1 := recoveredArg2.
            recoveredBlock103Block113PC := 286.
        ].
        recoveredBlock103Block113Step = 286 ifTrue: [
            recoveredBlock103Block113Stack2 := recoveredBlock103Block113Local2.
            recoveredBlock103Block113PC := 289.
        ].
        recoveredBlock103Block113Step = 289 ifTrue: [
            recoveredBlock103Block113Stack2 := (recoveredBlock103Block113Stack2) asArray.
            recoveredBlock103Block113PC := 291.
        ].
        recoveredBlock103Block113Step = 291 ifTrue: [
            recoveredBlock103Block113Stack1 := (recoveredBlock103Block113Stack1) inputs: (recoveredBlock103Block113Stack2).
            recoveredBlock103Block113PC := 293.
        ].
        recoveredBlock103Block113Step = 293 ifTrue: [
            recoveredBlock103Block113Result := recoveredBlock103Block113Stack1.
            recoveredBlock103Block113Done := true.
        ].
    ].
    recoveredBlock103Block113Result
].
    recoveredBlock103Value2 := handler.
    (recoveredBlock103Value0) required: ('ReturnPort') do: (recoveredBlock103Value1) ifNot: (recoveredBlock103Value2).
    recoveredBlock103Value3 := recoveredBlock103Arg1.
    recoveredBlock103Value4 := handler.
    recoveredBlock103Value5 := (recoveredBlock103Value3) doneIfNot: (recoveredBlock103Value4).
    recoveredBlock103Value5
].
    recoveredValue11 := handler.
    (recoveredValue9) required: ('Interfaces') do: (recoveredValue10) ifNot: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := handler.
    (recoveredValue12) doneIfNot: (recoveredValue13).
    recoveredValue14 := recoveredArg2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x205bdbc4; bytecode file offset 0xeba528"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readSpecificationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredStack18 recoveredStack19 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'public'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnum: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'public'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'Call_89448'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'UUID'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodsTimeStamp.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'TimeStamp'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [:block28117a78Arg1 | 
    nil
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'BlockDiagramSpecification'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 |
    recoveredBlock78Value0 := recoveredBlock78Arg1.
    recoveredBlock78Value1 := recoveredLocal3.
    recoveredBlock78Value2 := recoveredLocal4.
    recoveredBlock78Value3 := SGBdSpecification.
    recoveredBlock78Value4 := (self) readBlockDiagramSpecificationT: (recoveredBlock78Value0) public: (recoveredBlock78Value1) name: (recoveredBlock78Value2) class: (recoveredBlock78Value3).
    recoveredBlock78Value4
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 'TableSpecification'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 recoveredBlock99Value3 |
    recoveredBlock99Value0 := recoveredBlock99Arg1.
    recoveredBlock99Value1 := recoveredLocal3.
    recoveredBlock99Value2 := recoveredLocal4.
    recoveredBlock99Value3 := (self) readTableSpecificationT: (recoveredBlock99Value0) public: (recoveredBlock99Value1) name: (recoveredBlock99Value2).
    recoveredBlock99Value3
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack6 := 'ESDLSpecification'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack7 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 recoveredBlock119Value3 |
    recoveredBlock119Value0 := recoveredBlock119Arg1.
    recoveredBlock119Value1 := recoveredLocal3.
    recoveredBlock119Value2 := recoveredLocal4.
    recoveredBlock119Value3 := (self) readESDLSpecificationT: (recoveredBlock119Value0) public: (recoveredBlock119Value1) name: (recoveredBlock119Value2).
    recoveredBlock119Value3
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack8 := 'CCodeSpecification'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack9 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 |
    recoveredBlock139Value0 := recoveredBlock139Arg1.
    recoveredBlock139Value1 := recoveredLocal3.
    recoveredBlock139Value2 := recoveredLocal4.
    recoveredBlock139Value3 := (self) readCCodeSpecificationT: (recoveredBlock139Value0) public: (recoveredBlock139Value1) name: (recoveredBlock139Value2).
    recoveredBlock139Value3
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack10 := 'StateMachineSpecification'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack11 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := recoveredLocal3.
    recoveredBlock159Value2 := recoveredLocal4.
    recoveredBlock159Value3 := (self) readStateMachineSpecificationT: (recoveredBlock159Value0) public: (recoveredBlock159Value1) name: (recoveredBlock159Value2).
    recoveredBlock159Value3
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack12 := 'ProjectSpecification'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack13 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredLocal3.
    recoveredBlock179Value2 := recoveredLocal4.
    recoveredBlock179Value3 := (self) readProjectSpecificationT: (recoveredBlock179Value0) public: (recoveredBlock179Value1) name: (recoveredBlock179Value2).
    recoveredBlock179Value3
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack14 := 'AtomicSoftwareComponentSpecification'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack15 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 recoveredBlock199Value4 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := recoveredLocal3.
    recoveredBlock199Value2 := recoveredLocal4.
    recoveredBlock199Value3 := ARBdSpecification.
    recoveredBlock199Value4 := (self) readBlockDiagramSpecificationT: (recoveredBlock199Value0) public: (recoveredBlock199Value1) name: (recoveredBlock199Value2) class: (recoveredBlock199Value3).
    recoveredBlock199Value4
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack16 := 'MethodInterfaceSpecification'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack17 := [:recoveredBlock221Arg1 | 
    | recoveredBlock221Value0 recoveredBlock221Value1 recoveredBlock221Value2 recoveredBlock221Value3 |
    recoveredBlock221Value0 := recoveredBlock221Arg1.
    recoveredBlock221Value1 := recoveredLocal3.
    recoveredBlock221Value2 := recoveredLocal4.
    recoveredBlock221Value3 := (self) readMethodInterfaceSpecificationT: (recoveredBlock221Value0) public: (recoveredBlock221Value1) name: (recoveredBlock221Value2).
    recoveredBlock221Value3
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack18 := handler.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) choice: (recoveredStack2) do: (recoveredStack3) choice: (recoveredStack4) do: (recoveredStack5) choice: (recoveredStack6) do: (recoveredStack7) choice: (recoveredStack8) do: (recoveredStack9) choice: (recoveredStack10) do: (recoveredStack11) choice: (recoveredStack12) do: (recoveredStack13) choice: (recoveredStack14) do: (recoveredStack15) choice: (recoveredStack16) do: (recoveredStack17) ifNot: (recoveredStack18).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'CheckSum'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := [:block28117a9cArg1 | 
    | block28117a9cValue0 |
    block28117a9cValue0 := ('csIgnored') notNil.
    block28117a9cValue0
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'Call_89448'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 297] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlSpecByName: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 |
    recoveredBlock281Value0 := recoveredBlock281Arg1.
    recoveredBlock281Value1 := recoveredLocal2.
    recoveredBlock281Value2 := (recoveredBlock281Value0) uuid: (recoveredBlock281Value1).
    recoveredBlock281Value2
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := 'WorkspaceTimeStamps'.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamps.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := sgClass.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodsTimeStampKey.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e6a18; bytecode file offset 0xee338c"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readControlRteAccessT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := (LookupTable new) elementCount: (3); keyArray: (#(nil 'explicit_status' nil nil 'explicit' nil nil nil 'implicit' nil nil)); valueArray: (#(nil 'explicit_status' nil nil 'explicit' nil nil nil 'implicit' nil nil)); yourself.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString: ('access').
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := SGControlGODB.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue5) initialize.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := Dictionary.
    recoveredValue9 := (recoveredValue8) new.
    (recoveredValue7) sequences: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) oldFashion: (false).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) controlGOSymbol: ('ASDAccessOpGO').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) getGraphicOID: ('graphicOID').
    (recoveredValue12) iD: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) getBoolean: ('tempVar') default: (false).
    (recoveredValue15) tempVar: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 |
    recoveredBlock77Value0 := recoveredLocal1.
    recoveredBlock77Value1 := recoveredBlock77Arg1.
    recoveredBlock77Value2 := (self) readViewInfoT: (recoveredBlock77Value1).
    recoveredBlock77Value3 := (recoveredBlock77Value0) attributedViewNames: (recoveredBlock77Value2).
    recoveredBlock77Value3
].
    (recoveredValue18) optional: ('ViewInfo') do: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 |
    recoveredBlock101Value0 := recoveredLocal1.
    recoveredBlock101Value1 := recoveredBlock101Arg1.
    recoveredBlock101Value2 := (self) readLineStyleT: (recoveredBlock101Value1).
    recoveredBlock101Value3 := (recoveredBlock101Value0) lineStyle: (recoveredBlock101Value2).
    recoveredBlock101Value3
].
    (recoveredValue20) optional: ('LineStyle') do: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 |
    recoveredBlock125Value0 := recoveredLocal1.
    recoveredBlock125Value1 := recoveredBlock125Arg1.
    recoveredBlock125Value2 := (recoveredBlock125Value1) asColor.
    recoveredBlock125Value3 := (recoveredBlock125Value0) xmlFillColor: (recoveredBlock125Value2).
    recoveredBlock125Value3
].
    (recoveredValue22) optional: ('FillColor') do: (recoveredValue23).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 |
    recoveredBlock148Value0 := recoveredLocal1.
    recoveredBlock148Value1 := recoveredBlock148Arg1.
    recoveredBlock148Value2 := (recoveredBlock148Value1) asPoint.
    recoveredBlock148Value3 := (recoveredBlock148Value0) position: (recoveredBlock148Value2).
    recoveredBlock148Value3
].
    recoveredValue26 := handler.
    (recoveredValue24) required: ('Position') do: (recoveredValue25) ifNot: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := [:recoveredBlock173Arg1 | 
    | recoveredBlock173Local1 recoveredBlock173Local2 recoveredBlock173Local3 recoveredBlock173Local4 recoveredBlock173Stack0 recoveredBlock173Stack1 recoveredBlock173Stack2 recoveredBlock173Stack3 recoveredBlock173Stack4 recoveredBlock173PC recoveredBlock173Step recoveredBlock173Done recoveredBlock173Result |
    recoveredBlock173Stack0 := self.
    recoveredBlock173PC := 180.
    recoveredBlock173Done := false.
    [recoveredBlock173Done not] whileTrue: [
        recoveredBlock173Step := recoveredBlock173PC.
        recoveredBlock173Step = 180 ifTrue: [
            recoveredBlock173Stack1 := ASDXMLIndexedTable.
            recoveredBlock173PC := 182.
        ].
        recoveredBlock173Step = 182 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) new.
            recoveredBlock173PC := 184.
        ].
        recoveredBlock173Step = 184 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) init.
            recoveredBlock173PC := 186.
        ].
        recoveredBlock173Step = 186 ifTrue: [
            recoveredBlock173Local4 := recoveredBlock173Stack1.
            recoveredBlock173PC := 189.
        ].
        recoveredBlock173Step = 189 ifTrue: [
            recoveredBlock173Stack1 := ASDXMLIndexedTable.
            recoveredBlock173PC := 191.
        ].
        recoveredBlock173Step = 191 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) new.
            recoveredBlock173PC := 193.
        ].
        recoveredBlock173Step = 193 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) init.
            recoveredBlock173PC := 195.
        ].
        recoveredBlock173Step = 195 ifTrue: [
            recoveredBlock173Local3 := recoveredBlock173Stack1.
            recoveredBlock173PC := 198.
        ].
        recoveredBlock173Step = 198 ifTrue: [
            recoveredBlock173Stack1 := 0.
            recoveredBlock173PC := 200.
        ].
        recoveredBlock173Step = 200 ifTrue: [
            recoveredBlock173Local1 := recoveredBlock173Stack1.
            recoveredBlock173PC := 203.
        ].
        recoveredBlock173Step = 203 ifTrue: [
            recoveredBlock173Stack1 := recoveredBlock173Arg1.
            recoveredBlock173PC := 206.
        ].
        recoveredBlock173Step = 206 ifTrue: [
            recoveredBlock173Stack2 := 'ReturnPort'.
            recoveredBlock173PC := 208.
        ].
        recoveredBlock173Step = 208 ifTrue: [
            recoveredBlock173Stack3 := [:recoveredBlock173Block208Arg1 | 
    | recoveredBlock173Block208Local1 recoveredBlock173Block208Stack0 recoveredBlock173Block208Stack1 recoveredBlock173Block208Stack2 recoveredBlock173Block208Stack3 recoveredBlock173Block208Stack4 recoveredBlock173Block208Stack5 recoveredBlock173Block208PC recoveredBlock173Block208Step recoveredBlock173Block208Done recoveredBlock173Block208Result |
    recoveredBlock173Block208Stack0 := nil.
    recoveredBlock173Block208PC := 214.
    recoveredBlock173Block208Done := false.
    [recoveredBlock173Block208Done not] whileTrue: [
        recoveredBlock173Block208Step := recoveredBlock173Block208PC.
        recoveredBlock173Block208Step = 214 ifTrue: [
            recoveredBlock173Block208Stack1 := recoveredBlock173Local4.
            recoveredBlock173Block208PC := 217.
        ].
        recoveredBlock173Block208Step = 217 ifTrue: [
            recoveredBlock173Block208Stack2 := recoveredBlock173Local1.
            recoveredBlock173Block208PC := 220.
        ].
        recoveredBlock173Block208Step = 220 ifTrue: [
            recoveredBlock173Block208Stack3 := recoveredBlock173Block208Arg1.
            recoveredBlock173Block208PC := 223.
        ].
        recoveredBlock173Block208Step = 223 ifTrue: [
            recoveredBlock173Block208Stack4 := 'graphicOID'.
            recoveredBlock173Block208PC := 225.
        ].
        recoveredBlock173Block208Step = 225 ifTrue: [
            recoveredBlock173Block208Stack3 := (recoveredBlock173Block208Stack3) getGraphicOID: (recoveredBlock173Block208Stack4).
            recoveredBlock173Block208PC := 227.
        ].
        recoveredBlock173Block208Step = 227 ifTrue: [
            (recoveredBlock173Block208Stack1) at: (recoveredBlock173Block208Stack2) put: (recoveredBlock173Block208Stack3).
            recoveredBlock173Block208PC := 229.
        ].
        recoveredBlock173Block208Step = 229 ifTrue: [
            recoveredBlock173Block208Stack1 := recoveredBlock173Block208Arg1.
            recoveredBlock173Block208PC := 232.
        ].
        recoveredBlock173Block208Step = 232 ifTrue: [
            recoveredBlock173Block208Stack2 := 'label'.
            recoveredBlock173Block208PC := 234.
        ].
        recoveredBlock173Block208Step = 234 ifTrue: [
            recoveredBlock173Block208Stack3 := nil.
            recoveredBlock173Block208PC := 235.
        ].
        recoveredBlock173Block208Step = 235 ifTrue: [
            recoveredBlock173Block208Stack1 := (recoveredBlock173Block208Stack1) getString: (recoveredBlock173Block208Stack2) default: (recoveredBlock173Block208Stack3).
            recoveredBlock173Block208PC := 237.
        ].
        recoveredBlock173Block208Step = 237 ifTrue: [
            recoveredBlock173Block208Stack2 := recoveredBlock173Block208Stack1.
            recoveredBlock173Block208PC := 238.
        ].
        recoveredBlock173Block208Step = 238 ifTrue: [
            recoveredBlock173Block208Local1 := recoveredBlock173Block208Stack2.
            recoveredBlock173Block208PC := 241.
        ].
        recoveredBlock173Block208Step = 241 ifTrue: [
            (recoveredBlock173Block208Stack1 == nil) ifTrue: [recoveredBlock173Block208PC := 255] ifFalse: [recoveredBlock173Block208PC := 244].
        ].
        recoveredBlock173Block208Step = 244 ifTrue: [
            recoveredBlock173Block208Stack1 := recoveredBlock173Local3.
            recoveredBlock173Block208PC := 247.
        ].
        recoveredBlock173Block208Step = 247 ifTrue: [
            recoveredBlock173Block208Stack2 := recoveredBlock173Local1.
            recoveredBlock173Block208PC := 250.
        ].
        recoveredBlock173Block208Step = 250 ifTrue: [
            recoveredBlock173Block208Stack3 := recoveredBlock173Block208Local1.
            recoveredBlock173Block208PC := 253.
        ].
        recoveredBlock173Block208Step = 253 ifTrue: [
            (recoveredBlock173Block208Stack1) at: (recoveredBlock173Block208Stack2) put: (recoveredBlock173Block208Stack3).
            recoveredBlock173Block208PC := 255.
        ].
        recoveredBlock173Block208Step = 255 ifTrue: [
            recoveredBlock173Block208Stack1 := recoveredBlock173Block208Arg1.
            recoveredBlock173Block208PC := 258.
        ].
        recoveredBlock173Block208Step = 258 ifTrue: [
            recoveredBlock173Block208Stack2 := 'SelectorPort'.
            recoveredBlock173Block208PC := 260.
        ].
        recoveredBlock173Block208Step = 260 ifTrue: [
            recoveredBlock173Block208Stack3 := [:recoveredBlock173Block208Block260Arg1 | 
    | recoveredBlock173Block208Block260Stack0 recoveredBlock173Block208Block260Stack1 recoveredBlock173Block208Block260Stack2 recoveredBlock173Block208Block260Stack3 recoveredBlock173Block208Block260Stack4 recoveredBlock173Block208Block260Stack5 recoveredBlock173Block208Block260PC recoveredBlock173Block208Block260Step recoveredBlock173Block208Block260Done recoveredBlock173Block208Block260Result |
    recoveredBlock173Block208Block260Stack0 := nil.
    recoveredBlock173Block208Block260PC := 266.
    recoveredBlock173Block208Block260Done := false.
    [recoveredBlock173Block208Block260Done not] whileTrue: [
        recoveredBlock173Block208Block260Step := recoveredBlock173Block208Block260PC.
        recoveredBlock173Block208Block260Step = 266 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := recoveredBlock173Local1.
            recoveredBlock173Block208Block260PC := 269.
        ].
        recoveredBlock173Block208Block260Step = 269 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := (recoveredBlock173Block208Block260Stack1) + (1).
            recoveredBlock173Block208Block260PC := 270.
        ].
        recoveredBlock173Block208Block260Step = 270 ifTrue: [
            recoveredBlock173Local1 := recoveredBlock173Block208Block260Stack1.
            recoveredBlock173Block208Block260PC := 273.
        ].
        recoveredBlock173Block208Block260Step = 273 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := recoveredBlock173Local4.
            recoveredBlock173Block208Block260PC := 276.
        ].
        recoveredBlock173Block208Block260Step = 276 ifTrue: [
            recoveredBlock173Block208Block260Stack2 := recoveredBlock173Local1.
            recoveredBlock173Block208Block260PC := 279.
        ].
        recoveredBlock173Block208Block260Step = 279 ifTrue: [
            recoveredBlock173Block208Block260Stack3 := recoveredBlock173Block208Block260Arg1.
            recoveredBlock173Block208Block260PC := 280.
        ].
        recoveredBlock173Block208Block260Step = 280 ifTrue: [
            recoveredBlock173Block208Block260Stack4 := 'graphicOID'.
            recoveredBlock173Block208Block260PC := 282.
        ].
        recoveredBlock173Block208Block260Step = 282 ifTrue: [
            recoveredBlock173Block208Block260Stack3 := (recoveredBlock173Block208Block260Stack3) getGraphicOID: (recoveredBlock173Block208Block260Stack4).
            recoveredBlock173Block208Block260PC := 284.
        ].
        recoveredBlock173Block208Block260Step = 284 ifTrue: [
            (recoveredBlock173Block208Block260Stack1) at: (recoveredBlock173Block208Block260Stack2) put: (recoveredBlock173Block208Block260Stack3).
            recoveredBlock173Block208Block260PC := 286.
        ].
        recoveredBlock173Block208Block260Step = 286 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := nil.
            recoveredBlock173Block208Block260PC := 287.
        ].
        recoveredBlock173Block208Block260Step = 287 ifTrue: [
            recoveredBlock173Block208Block260Stack2 := recoveredBlock173Block208Block260Arg1.
            recoveredBlock173Block208Block260PC := 288.
        ].
        recoveredBlock173Block208Block260Step = 288 ifTrue: [
            recoveredBlock173Block208Block260Stack3 := 'label'.
            recoveredBlock173Block208Block260PC := 290.
        ].
        recoveredBlock173Block208Block260Step = 290 ifTrue: [
            recoveredBlock173Block208Block260Stack4 := nil.
            recoveredBlock173Block208Block260PC := 291.
        ].
        recoveredBlock173Block208Block260Step = 291 ifTrue: [
            recoveredBlock173Block208Block260Stack2 := (recoveredBlock173Block208Block260Stack2) getString: (recoveredBlock173Block208Block260Stack3) default: (recoveredBlock173Block208Block260Stack4).
            recoveredBlock173Block208Block260PC := 293.
        ].
        recoveredBlock173Block208Block260Step = 293 ifTrue: [
            recoveredBlock173Block208Block260Stack3 := recoveredBlock173Block208Block260Stack2.
            recoveredBlock173Block208Block260PC := 294.
        ].
        recoveredBlock173Block208Block260Step = 294 ifTrue: [
            recoveredBlock173Block208Local1 := recoveredBlock173Block208Block260Stack3.
            recoveredBlock173Block208Block260PC := 297.
        ].
        recoveredBlock173Block208Block260Step = 297 ifTrue: [
            (recoveredBlock173Block208Block260Stack2 == nil) ifTrue: [recoveredBlock173Block208Block260PC := 312] ifFalse: [recoveredBlock173Block208Block260PC := 300].
        ].
        recoveredBlock173Block208Block260Step = 300 ifTrue: [
            recoveredBlock173Block208Block260PC := 301.
        ].
        recoveredBlock173Block208Block260Step = 301 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := recoveredBlock173Local3.
            recoveredBlock173Block208Block260PC := 304.
        ].
        recoveredBlock173Block208Block260Step = 304 ifTrue: [
            recoveredBlock173Block208Block260Stack2 := recoveredBlock173Local1.
            recoveredBlock173Block208Block260PC := 307.
        ].
        recoveredBlock173Block208Block260Step = 307 ifTrue: [
            recoveredBlock173Block208Block260Stack3 := recoveredBlock173Block208Local1.
            recoveredBlock173Block208Block260PC := 310.
        ].
        recoveredBlock173Block208Block260Step = 310 ifTrue: [
            recoveredBlock173Block208Block260Stack1 := (recoveredBlock173Block208Block260Stack1) at: (recoveredBlock173Block208Block260Stack2) put: (recoveredBlock173Block208Block260Stack3).
            recoveredBlock173Block208Block260PC := 312.
        ].
        recoveredBlock173Block208Block260Step = 312 ifTrue: [
            recoveredBlock173Block208Block260Result := recoveredBlock173Block208Block260Stack1.
            recoveredBlock173Block208Block260Done := true.
        ].
    ].
    recoveredBlock173Block208Block260Result
].
            recoveredBlock173Block208PC := 313.
        ].
        recoveredBlock173Block208Step = 313 ifTrue: [
            (recoveredBlock173Block208Stack1) optional: (recoveredBlock173Block208Stack2) do: (recoveredBlock173Block208Stack3).
            recoveredBlock173Block208PC := 315.
        ].
        recoveredBlock173Block208Step = 315 ifTrue: [
            recoveredBlock173Block208Stack1 := recoveredBlock173Local1.
            recoveredBlock173Block208PC := 318.
        ].
        recoveredBlock173Block208Step = 318 ifTrue: [
            recoveredBlock173Block208Stack1 := (recoveredBlock173Block208Stack1) + (1).
            recoveredBlock173Block208PC := 319.
        ].
        recoveredBlock173Block208Step = 319 ifTrue: [
            recoveredBlock173Block208Stack2 := recoveredBlock173Block208Stack1.
            recoveredBlock173Block208PC := 320.
        ].
        recoveredBlock173Block208Step = 320 ifTrue: [
            recoveredBlock173Local1 := recoveredBlock173Block208Stack2.
            recoveredBlock173Block208PC := 323.
        ].
        recoveredBlock173Block208Step = 323 ifTrue: [
            recoveredBlock173Block208Result := recoveredBlock173Block208Stack1.
            recoveredBlock173Block208Done := true.
        ].
    ].
    recoveredBlock173Block208Result
].
            recoveredBlock173PC := 324.
        ].
        recoveredBlock173Step = 324 ifTrue: [
            (recoveredBlock173Stack1) multiple: (recoveredBlock173Stack2) do: (recoveredBlock173Stack3).
            recoveredBlock173PC := 326.
        ].
        recoveredBlock173Step = 326 ifTrue: [
            recoveredBlock173Stack1 := recoveredBlock173Arg1.
            recoveredBlock173PC := 329.
        ].
        recoveredBlock173Step = 329 ifTrue: [
            recoveredBlock173Stack2 := handler.
            recoveredBlock173PC := 331.
        ].
        recoveredBlock173Step = 331 ifTrue: [
            (recoveredBlock173Stack1) doneIfNot: (recoveredBlock173Stack2).
            recoveredBlock173PC := 333.
        ].
        recoveredBlock173Step = 333 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal1.
            recoveredBlock173PC := 336.
        ].
        recoveredBlock173Step = 336 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Local4.
            recoveredBlock173PC := 339.
        ].
        recoveredBlock173Step = 339 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) asArray.
            recoveredBlock173PC := 341.
        ].
        recoveredBlock173Step = 341 ifTrue: [
            (recoveredBlock173Stack1) connectors: (recoveredBlock173Stack2).
            recoveredBlock173PC := 343.
        ].
        recoveredBlock173Step = 343 ifTrue: [
            recoveredBlock173Stack1 := nil.
            recoveredBlock173PC := 344.
        ].
        recoveredBlock173Step = 344 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Local3.
            recoveredBlock173PC := 347.
        ].
        recoveredBlock173Step = 347 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) size.
            recoveredBlock173PC := 349.
        ].
        recoveredBlock173Step = 349 ifTrue: [
            recoveredBlock173Stack3 := 0.
            recoveredBlock173PC := 351.
        ].
        recoveredBlock173Step = 351 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) > (recoveredBlock173Stack3).
            recoveredBlock173PC := 352.
        ].
        recoveredBlock173Step = 352 ifTrue: [
            (recoveredBlock173Stack2) ifTrue: [recoveredBlock173PC := 356] ifFalse: [recoveredBlock173PC := 367].
        ].
        recoveredBlock173Step = 356 ifTrue: [
            recoveredBlock173PC := 357.
        ].
        recoveredBlock173Step = 357 ifTrue: [
            recoveredBlock173Stack1 := recoveredLocal1.
            recoveredBlock173PC := 360.
        ].
        recoveredBlock173Step = 360 ifTrue: [
            recoveredBlock173Stack2 := recoveredBlock173Local3.
            recoveredBlock173PC := 363.
        ].
        recoveredBlock173Step = 363 ifTrue: [
            recoveredBlock173Stack2 := (recoveredBlock173Stack2) asArray.
            recoveredBlock173PC := 365.
        ].
        recoveredBlock173Step = 365 ifTrue: [
            recoveredBlock173Stack1 := (recoveredBlock173Stack1) controlInfo: (recoveredBlock173Stack2).
            recoveredBlock173PC := 367.
        ].
        recoveredBlock173Step = 367 ifTrue: [
            recoveredBlock173Result := recoveredBlock173Stack1.
            recoveredBlock173Done := true.
        ].
    ].
    recoveredBlock173Result
].
    recoveredValue29 := handler.
    (recoveredValue27) required: ('Interfaces') do: (recoveredValue28) ifNot: (recoveredValue29).
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := Array.
    recoveredValue32 := recoveredLocal2.
    recoveredValue33 := (recoveredValue31) with: (recoveredValue32).
    (recoveredValue30) controlInfo: (recoveredValue33).
    recoveredValue34 := recoveredLocal1.
    ^recoveredValue34
! !

"ASDBase.ic method 0x20605884; bytecode file offset 0xf02208"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readState: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 'name'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNMToken: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'history'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) history: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 'startState'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) startState: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 |
    recoveredBlock82Value0 := recoveredLocal3.
    recoveredBlock82Value1 := recoveredBlock82Arg1.
    recoveredBlock82Value2 := (self) readViewInfoT: (recoveredBlock82Value1).
    recoveredBlock82Value3 := (recoveredBlock82Value0) attributedViewNames: (recoveredBlock82Value2).
    recoveredBlock82Value3
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredLocal1.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (self) readLineStyleT: (recoveredBlock105Value1).
    recoveredBlock105Value3 := (recoveredBlock105Value0) at: (3) put: (recoveredBlock105Value2).
    recoveredBlock105Value3
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) block.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := RBAreaStyle.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := 'FillColor'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := [:block2811cfb0Arg1 | 
    | block2811cfb0Value0 block2811cfb0Value1 |
    block2811cfb0Value0 := block2811cfb0Arg1.
    block2811cfb0Value1 := (block2811cfb0Value0) asColor.
    block2811cfb0Value1
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) optional: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) color: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 |
    recoveredBlock163Value0 := recoveredLocal3.
    recoveredBlock163Value1 := recoveredBlock163Arg1.
    recoveredBlock163Value2 := (recoveredBlock163Value1) asSize.
    recoveredBlock163Value3 := (recoveredBlock163Value0) size: (recoveredBlock163Value2).
    recoveredBlock163Value3
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Value0 recoveredBlock189Value1 recoveredBlock189Value2 recoveredBlock189Value3 |
    recoveredBlock189Value0 := recoveredLocal3.
    recoveredBlock189Value1 := recoveredBlock189Arg1.
    recoveredBlock189Value2 := (recoveredBlock189Value1) asPoint.
    recoveredBlock189Value3 := (recoveredBlock189Value0) position: (recoveredBlock189Value2).
    recoveredBlock189Value3
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'Interfaces'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Local1 recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 recoveredBlock215Value3 recoveredBlock215Value4 recoveredBlock215Value5 recoveredBlock215Value6 recoveredBlock215Value7 recoveredBlock215Value8 |
    recoveredBlock215Value0 := Dictionary.
    recoveredBlock215Value1 := (recoveredBlock215Value0) new.
    recoveredBlock215Local1 := recoveredBlock215Value1.
    recoveredBlock215Value2 := recoveredBlock215Arg1.
    recoveredBlock215Value3 := [:recoveredBlock215Block234Arg1 | 
    | recoveredBlock215Block234Local1 recoveredBlock215Block234Value0 recoveredBlock215Block234Value1 recoveredBlock215Block234Value2 recoveredBlock215Block234Value3 recoveredBlock215Block234Value4 recoveredBlock215Block234Value5 |
    recoveredBlock215Block234Value0 := recoveredBlock215Block234Arg1.
    recoveredBlock215Block234Value1 := (recoveredBlock215Block234Value0) getGraphicOID: ('graphicOID').
    recoveredBlock215Block234Local1 := recoveredBlock215Block234Value1.
    recoveredBlock215Block234Value2 := recoveredBlock215Block234Arg1.
    recoveredBlock215Block234Value3 := [:recoveredBlock215Block234Block255Arg1 | 
    | recoveredBlock215Block234Block255Value0 recoveredBlock215Block234Block255Value1 recoveredBlock215Block234Block255Value2 recoveredBlock215Block234Block255Value3 recoveredBlock215Block234Block255Value4 |
    recoveredBlock215Block234Block255Value0 := recoveredBlock215Local1.
    recoveredBlock215Block234Block255Value1 := recoveredBlock215Block234Local1.
    recoveredBlock215Block234Block255Value2 := recoveredBlock215Block234Block255Arg1.
    recoveredBlock215Block234Block255Value3 := (recoveredBlock215Block234Block255Value2) asPoint.
    recoveredBlock215Block234Block255Value4 := (recoveredBlock215Block234Block255Value0) at: (recoveredBlock215Block234Block255Value1) put: (recoveredBlock215Block234Block255Value3).
    recoveredBlock215Block234Block255Value4
].
    recoveredBlock215Block234Value4 := handler.
    recoveredBlock215Block234Value5 := (recoveredBlock215Block234Value2) required: ('Position') do: (recoveredBlock215Block234Value3) ifNot: (recoveredBlock215Block234Value4).
    recoveredBlock215Block234Value5
].
    (recoveredBlock215Value2) multiple: ('Connector') do: (recoveredBlock215Value3).
    recoveredBlock215Value4 := recoveredBlock215Arg1.
    recoveredBlock215Value5 := handler.
    (recoveredBlock215Value4) doneIfNot: (recoveredBlock215Value5).
    recoveredBlock215Value6 := recoveredLocal3.
    recoveredBlock215Value7 := recoveredBlock215Local1.
    recoveredBlock215Value8 := (recoveredBlock215Value6) dynamicConnectors: (recoveredBlock215Value7).
    recoveredBlock215Value8
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := 'Icon'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := [:block2811cfd4Arg1 | 
    | block2811cfd4Value0 |
    block2811cfd4Value0 := ('ignored') notNil.
    block2811cfd4Value0
].
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'Actions'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := [:recoveredBlock325Arg1 | 
    | recoveredBlock325Stack0 recoveredBlock325Stack1 recoveredBlock325Stack2 recoveredBlock325Stack3 recoveredBlock325Stack4 recoveredBlock325Stack5 recoveredBlock325Stack6 recoveredBlock325Stack7 recoveredBlock325PC recoveredBlock325Step recoveredBlock325Done recoveredBlock325Result |
    recoveredBlock325Stack0 := self.
    recoveredBlock325PC := 332.
    recoveredBlock325Done := false.
    [recoveredBlock325Done not] whileTrue: [
        recoveredBlock325Step := recoveredBlock325PC.
        recoveredBlock325Step = 332 ifTrue: [
            recoveredBlock325Stack1 := recoveredLocal2.
            recoveredBlock325PC := 335.
        ].
        recoveredBlock325Step = 335 ifTrue: [
            recoveredBlock325Stack2 := 2.
            recoveredBlock325PC := 337.
        ].
        recoveredBlock325Step = 337 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Arg1.
            recoveredBlock325PC := 338.
        ].
        recoveredBlock325Step = 338 ifTrue: [
            recoveredBlock325Stack4 := 'EntryAction'.
            recoveredBlock325PC := 340.
        ].
        recoveredBlock325Step = 340 ifTrue: [
            recoveredBlock325Stack5 := [:recoveredBlock325Block340Arg1 | 
    | recoveredBlock325Block340Value0 recoveredBlock325Block340Value1 |
    recoveredBlock325Block340Value0 := recoveredBlock325Block340Arg1.
    recoveredBlock325Block340Value1 := (self) readActionT: (recoveredBlock325Block340Value0).
    recoveredBlock325Block340Value1
].
            recoveredBlock325PC := 350.
        ].
        recoveredBlock325Step = 350 ifTrue: [
            recoveredBlock325Stack6 := [
    | block2811cff8Value0 block2811cff8Value1 |
    block2811cff8Value0 := Array.
    block2811cff8Value1 := (block2811cff8Value0) new: (3).
    block2811cff8Value1
].
            recoveredBlock325PC := 352.
        ].
        recoveredBlock325Step = 352 ifTrue: [
            recoveredBlock325PC := 362.
        ].
        recoveredBlock325Step = 362 ifTrue: [
            recoveredBlock325Stack3 := (recoveredBlock325Stack3) required: (recoveredBlock325Stack4) do: (recoveredBlock325Stack5) ifNot: (recoveredBlock325Stack6).
            recoveredBlock325PC := 365.
        ].
        recoveredBlock325Step = 365 ifTrue: [
            (recoveredBlock325Stack1) at: (recoveredBlock325Stack2) put: (recoveredBlock325Stack3).
            recoveredBlock325PC := 367.
        ].
        recoveredBlock325Step = 367 ifTrue: [
            recoveredBlock325Stack1 := recoveredLocal2.
            recoveredBlock325PC := 370.
        ].
        recoveredBlock325Step = 370 ifTrue: [
            recoveredBlock325Stack2 := 3.
            recoveredBlock325PC := 372.
        ].
        recoveredBlock325Step = 372 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Arg1.
            recoveredBlock325PC := 373.
        ].
        recoveredBlock325Step = 373 ifTrue: [
            recoveredBlock325Stack4 := 'StaticAction'.
            recoveredBlock325PC := 375.
        ].
        recoveredBlock325Step = 375 ifTrue: [
            recoveredBlock325Stack5 := [:recoveredBlock325Block375Arg1 | 
    | recoveredBlock325Block375Value0 recoveredBlock325Block375Value1 |
    recoveredBlock325Block375Value0 := recoveredBlock325Block375Arg1.
    recoveredBlock325Block375Value1 := (self) readActionT: (recoveredBlock325Block375Value0).
    recoveredBlock325Block375Value1
].
            recoveredBlock325PC := 386.
        ].
        recoveredBlock325Step = 386 ifTrue: [
            recoveredBlock325Stack6 := [
    | block2811d01cValue0 block2811d01cValue1 |
    block2811d01cValue0 := Array.
    block2811d01cValue1 := (block2811d01cValue0) new: (3).
    block2811d01cValue1
].
            recoveredBlock325PC := 388.
        ].
        recoveredBlock325Step = 388 ifTrue: [
            recoveredBlock325PC := 398.
        ].
        recoveredBlock325Step = 398 ifTrue: [
            recoveredBlock325Stack3 := (recoveredBlock325Stack3) required: (recoveredBlock325Stack4) do: (recoveredBlock325Stack5) ifNot: (recoveredBlock325Stack6).
            recoveredBlock325PC := 401.
        ].
        recoveredBlock325Step = 401 ifTrue: [
            (recoveredBlock325Stack1) at: (recoveredBlock325Stack2) put: (recoveredBlock325Stack3).
            recoveredBlock325PC := 403.
        ].
        recoveredBlock325Step = 403 ifTrue: [
            recoveredBlock325Stack1 := recoveredLocal2.
            recoveredBlock325PC := 406.
        ].
        recoveredBlock325Step = 406 ifTrue: [
            recoveredBlock325Stack2 := 4.
            recoveredBlock325PC := 408.
        ].
        recoveredBlock325Step = 408 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Arg1.
            recoveredBlock325PC := 409.
        ].
        recoveredBlock325Step = 409 ifTrue: [
            recoveredBlock325Stack4 := 'ExitAction'.
            recoveredBlock325PC := 411.
        ].
        recoveredBlock325Step = 411 ifTrue: [
            recoveredBlock325Stack5 := [:recoveredBlock325Block411Arg1 | 
    | recoveredBlock325Block411Value0 recoveredBlock325Block411Value1 |
    recoveredBlock325Block411Value0 := recoveredBlock325Block411Arg1.
    recoveredBlock325Block411Value1 := (self) readActionT: (recoveredBlock325Block411Value0).
    recoveredBlock325Block411Value1
].
            recoveredBlock325PC := 422.
        ].
        recoveredBlock325Step = 422 ifTrue: [
            recoveredBlock325Stack6 := [
    | block2811d040Value0 block2811d040Value1 |
    block2811d040Value0 := Array.
    block2811d040Value1 := (block2811d040Value0) new: (3).
    block2811d040Value1
].
            recoveredBlock325PC := 424.
        ].
        recoveredBlock325Step = 424 ifTrue: [
            recoveredBlock325PC := 434.
        ].
        recoveredBlock325Step = 434 ifTrue: [
            recoveredBlock325Stack3 := (recoveredBlock325Stack3) required: (recoveredBlock325Stack4) do: (recoveredBlock325Stack5) ifNot: (recoveredBlock325Stack6).
            recoveredBlock325PC := 437.
        ].
        recoveredBlock325Step = 437 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) at: (recoveredBlock325Stack2) put: (recoveredBlock325Stack3).
            recoveredBlock325PC := 439.
        ].
        recoveredBlock325Step = 439 ifTrue: [
            recoveredBlock325Result := recoveredBlock325Stack1.
            recoveredBlock325Done := true.
        ].
    ].
    recoveredBlock325Result
].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) stateInfo: (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20612890; bytecode file offset 0xf0f234"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readTransitionT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBezierConnectionGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) transitionInfo: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 'priority'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'triggerOID'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 |
    recoveredBlock87Value0 := recoveredArg1.
    recoveredBlock87Value1 := recoveredLocal1.
    recoveredBlock87Value2 := (self) methodOID: (recoveredBlock87Value0) nameAttr: ('triggerName') oidAttr: ('triggerOID') default: (recoveredBlock87Value1).
    recoveredBlock87Value2
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := ExError.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 |
    recoveredBlock110Value0 := recoveredBlock110Arg1.
    recoveredBlock110Value1 := recoveredLocal1.
    recoveredBlock110Value2 := (recoveredBlock110Value0) exitWith: (recoveredBlock110Value1).
    recoveredBlock110Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) when: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 |
    recoveredBlock132Value0 := recoveredLocal3.
    recoveredBlock132Value1 := recoveredBlock132Arg1.
    recoveredBlock132Value2 := (self) readViewInfoT: (recoveredBlock132Value1).
    recoveredBlock132Value3 := (recoveredBlock132Value0) attributedViewNames: (recoveredBlock132Value2).
    recoveredBlock132Value3
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := 'LineStyle'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Value0 recoveredBlock158Value1 |
    recoveredBlock158Value0 := recoveredBlock158Arg1.
    recoveredBlock158Value1 := (self) readLineStyleT: (recoveredBlock158Value0).
    recoveredBlock158Value1
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) required: (recoveredStack3) do: (recoveredStack4) ifNot: (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'Start'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Stack0 recoveredBlock180Stack1 recoveredBlock180Stack2 recoveredBlock180Stack3 recoveredBlock180Stack4 recoveredBlock180Stack5 recoveredBlock180PC recoveredBlock180Step recoveredBlock180Done recoveredBlock180Result |
    recoveredBlock180Stack0 := self.
    recoveredBlock180PC := 186.
    recoveredBlock180Done := false.
    [recoveredBlock180Done not] whileTrue: [
        recoveredBlock180Step := recoveredBlock180PC.
        recoveredBlock180Step = 186 ifTrue: [
            recoveredBlock180Stack1 := recoveredLocal3.
            recoveredBlock180PC := 189.
        ].
        recoveredBlock180Step = 189 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Arg1.
            recoveredBlock180PC := 190.
        ].
        recoveredBlock180Step = 190 ifTrue: [
            recoveredBlock180Stack3 := 'graphicOID'.
            recoveredBlock180PC := 192.
        ].
        recoveredBlock180Step = 192 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) getGraphicOID: (recoveredBlock180Stack3).
            recoveredBlock180PC := 194.
        ].
        recoveredBlock180Step = 194 ifTrue: [
            (recoveredBlock180Stack1) startConnector: (recoveredBlock180Stack2).
            recoveredBlock180PC := 196.
        ].
        recoveredBlock180Step = 196 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 197.
        ].
        recoveredBlock180Step = 197 ifTrue: [
            recoveredBlock180Stack2 := 'Position'.
            recoveredBlock180PC := 199.
        ].
        recoveredBlock180Step = 199 ifTrue: [
            recoveredBlock180Stack3 := [:block2811dcc4Arg1 | 
    | block2811dcc4Value0 |
    block2811dcc4Value0 := ('ignored') notNil.
    block2811dcc4Value0
].
            recoveredBlock180PC := 201.
        ].
        recoveredBlock180Step = 201 ifTrue: [
            recoveredBlock180PC := 208.
        ].
        recoveredBlock180Step = 208 ifTrue: [
            recoveredBlock180Stack4 := handler.
            recoveredBlock180PC := 210.
        ].
        recoveredBlock180Step = 210 ifTrue: [
            (recoveredBlock180Stack1) required: (recoveredBlock180Stack2) do: (recoveredBlock180Stack3) ifNot: (recoveredBlock180Stack4).
            recoveredBlock180PC := 213.
        ].
        recoveredBlock180Step = 213 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 214.
        ].
        recoveredBlock180Step = 214 ifTrue: [
            recoveredBlock180Stack2 := handler.
            recoveredBlock180PC := 216.
        ].
        recoveredBlock180Step = 216 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) doneIfNot: (recoveredBlock180Stack2).
            recoveredBlock180PC := 218.
        ].
        recoveredBlock180Step = 218 ifTrue: [
            recoveredBlock180Result := recoveredBlock180Stack1.
            recoveredBlock180Done := true.
        ].
    ].
    recoveredBlock180Result
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'End'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Stack0 recoveredBlock229Stack1 recoveredBlock229Stack2 recoveredBlock229Stack3 recoveredBlock229Stack4 recoveredBlock229Stack5 recoveredBlock229PC recoveredBlock229Step recoveredBlock229Done recoveredBlock229Result |
    recoveredBlock229Stack0 := self.
    recoveredBlock229PC := 236.
    recoveredBlock229Done := false.
    [recoveredBlock229Done not] whileTrue: [
        recoveredBlock229Step := recoveredBlock229PC.
        recoveredBlock229Step = 236 ifTrue: [
            recoveredBlock229Stack1 := recoveredLocal3.
            recoveredBlock229PC := 239.
        ].
        recoveredBlock229Step = 239 ifTrue: [
            recoveredBlock229Stack2 := recoveredBlock229Arg1.
            recoveredBlock229PC := 240.
        ].
        recoveredBlock229Step = 240 ifTrue: [
            recoveredBlock229Stack3 := 'graphicOID'.
            recoveredBlock229PC := 242.
        ].
        recoveredBlock229Step = 242 ifTrue: [
            recoveredBlock229Stack2 := (recoveredBlock229Stack2) getGraphicOID: (recoveredBlock229Stack3).
            recoveredBlock229PC := 244.
        ].
        recoveredBlock229Step = 244 ifTrue: [
            (recoveredBlock229Stack1) endConnector: (recoveredBlock229Stack2).
            recoveredBlock229PC := 246.
        ].
        recoveredBlock229Step = 246 ifTrue: [
            recoveredBlock229Stack1 := recoveredBlock229Arg1.
            recoveredBlock229PC := 247.
        ].
        recoveredBlock229Step = 247 ifTrue: [
            recoveredBlock229Stack2 := 'Position'.
            recoveredBlock229PC := 249.
        ].
        recoveredBlock229Step = 249 ifTrue: [
            recoveredBlock229Stack3 := [:block2811dce8Arg1 | 
    | block2811dce8Value0 |
    block2811dce8Value0 := ('ignored') notNil.
    block2811dce8Value0
].
            recoveredBlock229PC := 251.
        ].
        recoveredBlock229Step = 251 ifTrue: [
            recoveredBlock229PC := 258.
        ].
        recoveredBlock229Step = 258 ifTrue: [
            recoveredBlock229Stack4 := handler.
            recoveredBlock229PC := 260.
        ].
        recoveredBlock229Step = 260 ifTrue: [
            (recoveredBlock229Stack1) required: (recoveredBlock229Stack2) do: (recoveredBlock229Stack3) ifNot: (recoveredBlock229Stack4).
            recoveredBlock229PC := 263.
        ].
        recoveredBlock229Step = 263 ifTrue: [
            recoveredBlock229Stack1 := recoveredBlock229Arg1.
            recoveredBlock229PC := 264.
        ].
        recoveredBlock229Step = 264 ifTrue: [
            recoveredBlock229Stack2 := handler.
            recoveredBlock229PC := 266.
        ].
        recoveredBlock229Step = 266 ifTrue: [
            recoveredBlock229Stack1 := (recoveredBlock229Stack1) doneIfNot: (recoveredBlock229Stack2).
            recoveredBlock229PC := 268.
        ].
        recoveredBlock229Step = 268 ifTrue: [
            recoveredBlock229Result := recoveredBlock229Stack1.
            recoveredBlock229Done := true.
        ].
    ].
    recoveredBlock229Result
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 'ConnectionLine'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := [:recoveredBlock279Arg1 | 
    | recoveredBlock279Local1 recoveredBlock279Stack0 recoveredBlock279Stack1 recoveredBlock279Stack2 recoveredBlock279Stack3 recoveredBlock279Stack4 recoveredBlock279Stack5 recoveredBlock279PC recoveredBlock279Step recoveredBlock279Done recoveredBlock279Result |
    recoveredBlock279Stack0 := self.
    recoveredBlock279PC := 286.
    recoveredBlock279Done := false.
    [recoveredBlock279Done not] whileTrue: [
        recoveredBlock279Step := recoveredBlock279PC.
        recoveredBlock279Step = 286 ifTrue: [
            recoveredBlock279Stack1 := OrderedCollection.
            recoveredBlock279PC := 288.
        ].
        recoveredBlock279Step = 288 ifTrue: [
            recoveredBlock279Stack1 := (recoveredBlock279Stack1) new.
            recoveredBlock279PC := 289.
        ].
        recoveredBlock279Step = 289 ifTrue: [
            recoveredBlock279Local1 := recoveredBlock279Stack1.
            recoveredBlock279PC := 292.
        ].
        recoveredBlock279Step = 292 ifTrue: [
            recoveredBlock279Stack1 := recoveredBlock279Arg1.
            recoveredBlock279PC := 295.
        ].
        recoveredBlock279Step = 295 ifTrue: [
            recoveredBlock279Stack2 := 'BendPoint'.
            recoveredBlock279PC := 297.
        ].
        recoveredBlock279Step = 297 ifTrue: [
            recoveredBlock279Stack3 := [:recoveredBlock279Block297Arg1 | 
    | recoveredBlock279Block297Value0 recoveredBlock279Block297Value1 recoveredBlock279Block297Value2 recoveredBlock279Block297Value3 |
    recoveredBlock279Block297Value0 := recoveredBlock279Local1.
    recoveredBlock279Block297Value1 := recoveredBlock279Block297Arg1.
    recoveredBlock279Block297Value2 := (recoveredBlock279Block297Value1) asPoint.
    recoveredBlock279Block297Value3 := (recoveredBlock279Block297Value0) add: (recoveredBlock279Block297Value2).
    recoveredBlock279Block297Value3
].
            recoveredBlock279PC := 313.
        ].
        recoveredBlock279Step = 313 ifTrue: [
            (recoveredBlock279Stack1) multiple: (recoveredBlock279Stack2) do: (recoveredBlock279Stack3).
            recoveredBlock279PC := 315.
        ].
        recoveredBlock279Step = 315 ifTrue: [
            recoveredBlock279Stack1 := recoveredLocal3.
            recoveredBlock279PC := 318.
        ].
        recoveredBlock279Step = 318 ifTrue: [
            recoveredBlock279Stack2 := recoveredBlock279Local1.
            recoveredBlock279PC := 321.
        ].
        recoveredBlock279Step = 321 ifTrue: [
            recoveredBlock279Stack2 := (recoveredBlock279Stack2) asArray.
            recoveredBlock279PC := 323.
        ].
        recoveredBlock279Step = 323 ifTrue: [
            (recoveredBlock279Stack1) xmlSetBends: (recoveredBlock279Stack2).
            recoveredBlock279PC := 325.
        ].
        recoveredBlock279Step = 325 ifTrue: [
            recoveredBlock279Stack1 := recoveredLocal3.
            recoveredBlock279PC := 328.
        ].
        recoveredBlock279Step = 328 ifTrue: [
            recoveredBlock279Stack2 := recoveredBlock279Arg1.
            recoveredBlock279PC := 331.
        ].
        recoveredBlock279Step = 331 ifTrue: [
            recoveredBlock279Stack3 := 'connectionType'.
            recoveredBlock279PC := 333.
        ].
        recoveredBlock279Step = 333 ifTrue: [
            recoveredBlock279Stack4 := [
    'bezier'
].
            recoveredBlock279PC := 335.
        ].
        recoveredBlock279Step = 335 ifTrue: [
            recoveredBlock279PC := 341.
        ].
        recoveredBlock279Step = 341 ifTrue: [
            recoveredBlock279Stack2 := (recoveredBlock279Stack2) getAttribute: (recoveredBlock279Stack3) ifAbsent: (recoveredBlock279Stack4).
            recoveredBlock279PC := 343.
        ].
        recoveredBlock279Step = 343 ifTrue: [
            recoveredBlock279Stack2 := (recoveredBlock279Stack2) asAtom.
            recoveredBlock279PC := 345.
        ].
        recoveredBlock279Step = 345 ifTrue: [
            (recoveredBlock279Stack1) connectorType: (recoveredBlock279Stack2).
            recoveredBlock279PC := 347.
        ].
        recoveredBlock279Step = 347 ifTrue: [
            recoveredBlock279Stack1 := recoveredBlock279Arg1.
            recoveredBlock279PC := 350.
        ].
        recoveredBlock279Step = 350 ifTrue: [
            recoveredBlock279Stack2 := handler.
            recoveredBlock279PC := 352.
        ].
        recoveredBlock279Step = 352 ifTrue: [
            recoveredBlock279Stack1 := (recoveredBlock279Stack1) doneIfNot: (recoveredBlock279Stack2).
            recoveredBlock279PC := 354.
        ].
        recoveredBlock279Step = 354 ifTrue: [
            recoveredBlock279Result := recoveredBlock279Stack1.
            recoveredBlock279Done := true.
        ].
    ].
    recoveredBlock279Result
].
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := 'LabelPosition'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack5 := [:block2811dd30Arg1 | 
    | block2811dd30Value0 block2811dd30Value1 |
    block2811dd30Value0 := block2811dd30Arg1.
    block2811dd30Value1 := (block2811dd30Value0) asPoint.
    block2811dd30Value1
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack6 := handler.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := (recoveredStack3) required: (recoveredStack4) do: (recoveredStack5) ifNot: (recoveredStack6).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := 'Actions'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Stack0 recoveredBlock392Stack1 recoveredBlock392Stack2 recoveredBlock392Stack3 recoveredBlock392Stack4 recoveredBlock392Stack5 recoveredBlock392Stack6 recoveredBlock392Stack7 recoveredBlock392PC recoveredBlock392Step recoveredBlock392Done recoveredBlock392Result |
    recoveredBlock392Stack0 := self.
    recoveredBlock392PC := 398.
    recoveredBlock392Done := false.
    [recoveredBlock392Done not] whileTrue: [
        recoveredBlock392Step := recoveredBlock392PC.
        recoveredBlock392Step = 398 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal2.
            recoveredBlock392PC := 401.
        ].
        recoveredBlock392Step = 401 ifTrue: [
            recoveredBlock392Stack2 := 3.
            recoveredBlock392PC := 403.
        ].
        recoveredBlock392Step = 403 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Arg1.
            recoveredBlock392PC := 404.
        ].
        recoveredBlock392Step = 404 ifTrue: [
            recoveredBlock392Stack4 := 'Action'.
            recoveredBlock392PC := 406.
        ].
        recoveredBlock392Step = 406 ifTrue: [
            recoveredBlock392Stack5 := [:recoveredBlock392Block406Arg1 | 
    | recoveredBlock392Block406Value0 recoveredBlock392Block406Value1 |
    recoveredBlock392Block406Value0 := recoveredBlock392Block406Arg1.
    recoveredBlock392Block406Value1 := (self) readActionT: (recoveredBlock392Block406Value0).
    recoveredBlock392Block406Value1
].
            recoveredBlock392PC := 416.
        ].
        recoveredBlock392Step = 416 ifTrue: [
            recoveredBlock392Stack6 := [
    | block2811dd54Value0 block2811dd54Value1 |
    block2811dd54Value0 := Array.
    block2811dd54Value1 := (block2811dd54Value0) new: (3).
    block2811dd54Value1
].
            recoveredBlock392PC := 420.
        ].
        recoveredBlock392Step = 420 ifTrue: [
            recoveredBlock392PC := 431.
        ].
        recoveredBlock392Step = 431 ifTrue: [
            recoveredBlock392Stack3 := (recoveredBlock392Stack3) required: (recoveredBlock392Stack4) do: (recoveredBlock392Stack5) ifNot: (recoveredBlock392Stack6).
            recoveredBlock392PC := 434.
        ].
        recoveredBlock392Step = 434 ifTrue: [
            (recoveredBlock392Stack1) at: (recoveredBlock392Stack2) put: (recoveredBlock392Stack3).
            recoveredBlock392PC := 436.
        ].
        recoveredBlock392Step = 436 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal2.
            recoveredBlock392PC := 439.
        ].
        recoveredBlock392Step = 439 ifTrue: [
            recoveredBlock392Stack2 := 4.
            recoveredBlock392PC := 441.
        ].
        recoveredBlock392Step = 441 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Arg1.
            recoveredBlock392PC := 442.
        ].
        recoveredBlock392Step = 442 ifTrue: [
            recoveredBlock392Stack4 := 'Condition'.
            recoveredBlock392PC := 446.
        ].
        recoveredBlock392Step = 446 ifTrue: [
            recoveredBlock392Stack5 := [:recoveredBlock392Block446Arg1 | 
    | recoveredBlock392Block446Value0 recoveredBlock392Block446Value1 |
    recoveredBlock392Block446Value0 := recoveredBlock392Block446Arg1.
    recoveredBlock392Block446Value1 := (self) readActionT: (recoveredBlock392Block446Value0).
    recoveredBlock392Block446Value1
].
            recoveredBlock392PC := 456.
        ].
        recoveredBlock392Step = 456 ifTrue: [
            recoveredBlock392Stack6 := [
    | block2811dd78Value0 block2811dd78Value1 |
    block2811dd78Value0 := Array.
    block2811dd78Value1 := (block2811dd78Value0) new: (3).
    block2811dd78Value1
].
            recoveredBlock392PC := 460.
        ].
        recoveredBlock392Step = 460 ifTrue: [
            recoveredBlock392PC := 471.
        ].
        recoveredBlock392Step = 471 ifTrue: [
            recoveredBlock392Stack3 := (recoveredBlock392Stack3) required: (recoveredBlock392Stack4) do: (recoveredBlock392Stack5) ifNot: (recoveredBlock392Stack6).
            recoveredBlock392PC := 474.
        ].
        recoveredBlock392Step = 474 ifTrue: [
            (recoveredBlock392Stack1) at: (recoveredBlock392Stack2) put: (recoveredBlock392Stack3).
            recoveredBlock392PC := 476.
        ].
        recoveredBlock392Step = 476 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 477.
        ].
        recoveredBlock392Step = 477 ifTrue: [
            recoveredBlock392Stack2 := handler.
            recoveredBlock392PC := 479.
        ].
        recoveredBlock392Step = 479 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) doneIfNot: (recoveredBlock392Stack2).
            recoveredBlock392PC := 481.
        ].
        recoveredBlock392Step = 481 ifTrue: [
            recoveredBlock392Result := recoveredBlock392Stack1.
            recoveredBlock392Done := true.
        ].
    ].
    recoveredBlock392Result
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20616088; bytecode file offset 0xf12a50"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readHierarchyT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
    recoveredValue0 := SGGraphicsBlockDB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := SGHierarchyGODB.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getBoolean: ('nameVisibility') default: (true).
    (recoveredValue4) actualNameVisibility: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getNMToken: ('name') default: ('').
    (recoveredValue7) name: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) own.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) getGraphicOID: ('graphicOID').
    (recoveredValue11) at: (1) put: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (self) readViewInfoT: (recoveredBlock64Value1).
    recoveredBlock64Value3 := (recoveredBlock64Value0) attributedViewNames: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
    (recoveredValue14) optional: ('ViewInfo') do: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := recoveredLocal2.
    recoveredBlock87Value1 := recoveredBlock87Arg1.
    recoveredBlock87Value2 := (self) readLineStyleT: (recoveredBlock87Value1).
    recoveredBlock87Value3 := (recoveredBlock87Value0) lineStyle: (recoveredBlock87Value2).
    recoveredBlock87Value3
].
    (recoveredValue16) optional: ('LineStyle') do: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 |
    recoveredBlock111Value0 := recoveredLocal2.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value1) asColor.
    recoveredBlock111Value3 := (recoveredBlock111Value0) xmlFillColor: (recoveredBlock111Value2).
    recoveredBlock111Value3
].
    (recoveredValue18) optional: ('FillColor') do: (recoveredValue19).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 |
    recoveredBlock134Value0 := recoveredLocal2.
    recoveredBlock134Value1 := recoveredBlock134Arg1.
    recoveredBlock134Value2 := (recoveredBlock134Value1) asSize.
    recoveredBlock134Value3 := (recoveredBlock134Value0) size: (recoveredBlock134Value2).
    recoveredBlock134Value3
].
    recoveredValue22 := handler.
    (recoveredValue20) required: ('Size') do: (recoveredValue21) ifNot: (recoveredValue22).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 |
    recoveredBlock159Value0 := recoveredLocal2.
    recoveredBlock159Value1 := recoveredBlock159Arg1.
    recoveredBlock159Value2 := (recoveredBlock159Value1) asPoint.
    recoveredBlock159Value3 := (recoveredBlock159Value0) position: (recoveredBlock159Value2).
    recoveredBlock159Value3
].
    recoveredValue25 := handler.
    (recoveredValue23) required: ('Position') do: (recoveredValue24) ifNot: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) getGraphicOID: ('drawingOrder') default: (nil).
    recoveredValue28 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 |
    recoveredBlock188Value0 := recoveredLocal2.
    recoveredBlock188Value1 := recoveredBlock188Arg1.
    recoveredBlock188Value2 := (recoveredBlock188Value0) drawingOrder: (recoveredBlock188Value1).
    recoveredBlock188Value2
].
    (recoveredValue27) ifNotNil: (recoveredValue28).
    recoveredValue29 := Dictionary.
    recoveredValue30 := (recoveredValue29) new.
    recoveredLocal1 := recoveredValue30.
    recoveredValue31 := recoveredArg1.
    recoveredValue32 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 |
    recoveredBlock215Value0 := recoveredBlock215Arg1.
    recoveredBlock215Value1 := [:recoveredBlock215Block225Arg1 | 
    | recoveredBlock215Block225Local1 recoveredBlock215Block225Value0 recoveredBlock215Block225Value1 recoveredBlock215Block225Value2 recoveredBlock215Block225Value3 recoveredBlock215Block225Value4 recoveredBlock215Block225Value5 recoveredBlock215Block225Value6 recoveredBlock215Block225Value7 recoveredBlock215Block225Value8 |
    recoveredBlock215Block225Value0 := recoveredBlock215Block225Arg1.
    recoveredBlock215Block225Value1 := [:recoveredBlock215Block225Block235Arg1 | 
    | recoveredBlock215Block225Block235Value0 recoveredBlock215Block225Block235Value1 |
    recoveredBlock215Block225Block235Value0 := recoveredBlock215Block225Block235Arg1.
    recoveredBlock215Block225Block235Value1 := (self) readBlockConnectorT: (recoveredBlock215Block225Block235Value0).
    recoveredBlock215Block225Block235Value1
].
    recoveredBlock215Block225Value2 := handler.
    recoveredBlock215Block225Value3 := (recoveredBlock215Block225Value0) required: ('ExternalConnector') do: (recoveredBlock215Block225Value1) ifNot: (recoveredBlock215Block225Value2).
    recoveredBlock215Block225Local1 := recoveredBlock215Block225Value3.
    recoveredBlock215Block225Value4 := recoveredLocal1.
    recoveredBlock215Block225Value5 := recoveredBlock215Block225Arg1.
    recoveredBlock215Block225Value6 := (recoveredBlock215Block225Value5) getString: ('name').
    recoveredBlock215Block225Value7 := recoveredBlock215Block225Local1.
    recoveredBlock215Block225Value8 := (recoveredBlock215Block225Value4) at: (recoveredBlock215Block225Value6) put: (recoveredBlock215Block225Value7).
    recoveredBlock215Block225Value8
].
    recoveredBlock215Value2 := (recoveredBlock215Value0) multiple: ('BlockInterface') do: (recoveredBlock215Value1).
    recoveredBlock215Value2
].
    recoveredValue33 := handler.
    (recoveredValue31) required: ('Interfaces') do: (recoveredValue32) ifNot: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    recoveredValue35 := recoveredLocal1.
    (recoveredValue34) pins: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := [:recoveredBlock285Arg1 | 
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 recoveredBlock285Value3 |
    recoveredBlock285Value0 := recoveredLocal2.
    recoveredBlock285Value1 := recoveredBlock285Arg1.
    recoveredBlock285Value2 := (recoveredBlock285Value1) asPoint.
    recoveredBlock285Value3 := (recoveredBlock285Value0) namePosition: (recoveredBlock285Value2).
    recoveredBlock285Value3
].
    recoveredValue38 := handler.
    (recoveredValue36) required: ('LabelPosition') do: (recoveredValue37) ifNot: (recoveredValue38).
    recoveredValue39 := ('Kli') == ('XMLImport').
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := [:recoveredBlock317Arg1 | 
    | recoveredBlock317Local1 recoveredBlock317Local2 recoveredBlock317Value0 recoveredBlock317Value1 recoveredBlock317Value2 recoveredBlock317Value3 recoveredBlock317Value4 recoveredBlock317Value5 recoveredBlock317Value6 recoveredBlock317Value7 recoveredBlock317Value8 recoveredBlock317Value9 recoveredBlock317Value10 recoveredBlock317Value11 recoveredBlock317Value12 recoveredBlock317Value13 recoveredBlock317Value14 recoveredBlock317Value15 recoveredBlock317Value16 recoveredBlock317Value17 recoveredBlock317Value18 recoveredBlock317Value19 recoveredBlock317Value20 recoveredBlock317Value21 |
    recoveredBlock317Value0 := recoveredBlock317Arg1.
    recoveredBlock317Value1 := [:recoveredBlock317Block329Arg1 | 
    | recoveredBlock317Block329Value0 recoveredBlock317Block329Value1 recoveredBlock317Block329Value2 |
    recoveredBlock317Block329Value0 := recoveredBlock317Block329Arg1.
    recoveredBlock317Block329Value1 := (recoveredBlock317Block329Value0) cData.
    recoveredBlock317Block329Value2 := recoveredBlock317Block329Value1.
    recoveredBlock317Local1 := recoveredBlock317Block329Value2.
    recoveredBlock317Block329Value1
].
    recoveredBlock317Value2 := handler.
    (recoveredBlock317Value0) required: ('IconFile') do: (recoveredBlock317Value1) ifNot: (recoveredBlock317Value2).
    recoveredBlock317Value3 := ('Kli') == ('XMLImport').
    recoveredBlock317Value4 := recoveredLocal2.
    recoveredBlock317Value5 := CgWinBMPFileFormat.
    recoveredBlock317Value6 := (recoveredBlock317Value5) new.
    recoveredBlock317Value7 := (recoveredBlock317Value6) initialize.
    recoveredBlock317Value8 := Util.
    recoveredBlock317Value9 := controller.
    recoveredBlock317Value10 := (recoveredBlock317Value9) currentFile.
    recoveredBlock317Value11 := (recoveredBlock317Value10) pathName.
    recoveredBlock317Value12 := recoveredBlock317Local1.
    recoveredBlock317Value13 := (recoveredBlock317Value11) , (recoveredBlock317Value12).
    recoveredBlock317Value14 := (recoveredBlock317Value8) checkFileName: (recoveredBlock317Value13).
    recoveredBlock317Value15 := (recoveredBlock317Value7) loadFromFile: (recoveredBlock317Value14).
    (recoveredBlock317Value4) iconDBImage: (recoveredBlock317Value15).
    recoveredBlock317Value16 := recoveredBlock317Arg1.
    recoveredBlock317Value17 := [:recoveredBlock317Block394Arg1 | 
    | recoveredBlock317Block394Value0 recoveredBlock317Block394Value1 recoveredBlock317Block394Value2 recoveredBlock317Block394Value3 recoveredBlock317Block394Value4 recoveredBlock317Block394Value5 recoveredBlock317Block394Value6 recoveredBlock317Block394Value7 |
    recoveredBlock317Block394Value0 := recoveredLocal2.
    recoveredBlock317Block394Value1 := (recoveredBlock317Block394Value0) icon.
    recoveredBlock317Block394Value2 := recoveredBlock317Block394Arg1.
    recoveredBlock317Block394Value3 := (recoveredBlock317Block394Value2) getNNInt: ('x').
    recoveredBlock317Block394Value4 := recoveredBlock317Block394Arg1.
    recoveredBlock317Block394Value5 := (recoveredBlock317Block394Value4) getNNInt: ('y').
    recoveredBlock317Block394Value6 := (recoveredBlock317Block394Value3) @ (recoveredBlock317Block394Value5).
    recoveredBlock317Block394Value7 := (recoveredBlock317Block394Value1) at: (2) put: (recoveredBlock317Block394Value6).
    recoveredBlock317Block394Value7
].
    recoveredBlock317Value18 := handler.
    (recoveredBlock317Value16) required: ('Size') do: (recoveredBlock317Value17) ifNot: (recoveredBlock317Value18).
    recoveredBlock317Value19 := recoveredLocal2.
    recoveredBlock317Value20 := (recoveredBlock317Value19) icon.
    recoveredBlock317Value21 := (recoveredBlock317Value20) at: (3) put: (true).
    recoveredBlock317Value21
].
    (recoveredValue40) optional: ('Icon') do: (recoveredValue41).
    recoveredValue42 := recoveredArg1.
    recoveredValue43 := [:recoveredBlock464Arg1 | 
    | recoveredBlock464Value0 recoveredBlock464Value1 recoveredBlock464Value2 |
    recoveredBlock464Value0 := recoveredBlock464Arg1.
    recoveredBlock464Value1 := recoveredLocal3.
    recoveredBlock464Value2 := (self) readDiagramElements: (recoveredBlock464Value0) block: (recoveredBlock464Value1).
    recoveredBlock464Value2
].
    recoveredValue44 := handler.
    (recoveredValue42) required: ('Contents') do: (recoveredValue43) ifNot: (recoveredValue44).
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := handler.
    (recoveredValue45) doneIfNot: (recoveredValue46).
    recoveredValue47 := recoveredLocal3.
    recoveredValue48 := recoveredLocal2.
    (recoveredValue47) graphicBlock: (recoveredValue48).
    recoveredValue49 := recoveredLocal3.
    ^recoveredValue49
! !

"ASDBase.ic method 0x2061f100; bytecode file offset 0xf1bac8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readControlT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (8); keyArray: (#(nil nil 'Break' nil nil 'RteStatus' nil 'RteInvoke' nil 'IfThen' nil nil 'While' 'IfThenElse' 'Switch' nil nil 'RteAccess' nil nil nil nil)); valueArray: (#(nil nil 'SGBreakGO' nil nil 'ASDRteStatusGO' nil 'ASDInvokeOpGO' nil 'SGIfThenGO' nil nil 'SGWhileGO' 'SGIfThenElseGO' 'SGSwitchGO' nil nil 'ASDAccessOpGO' nil nil nil nil)); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'type'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGControlGODB.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) sequences: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) oldFashion: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) controlGOSymbol: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 |
    recoveredBlock68Value0 := recoveredLocal2.
    recoveredBlock68Value1 := recoveredBlock68Arg1.
    recoveredBlock68Value2 := (recoveredBlock68Value0) drawingOrder: (recoveredBlock68Value1).
    recoveredBlock68Value2
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'ASDAccessOpGO'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'tempVar'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) tempVar: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 |
    recoveredBlock110Value0 := recoveredLocal2.
    recoveredBlock110Value1 := recoveredBlock110Arg1.
    recoveredBlock110Value2 := (self) readViewInfoT: (recoveredBlock110Value1).
    recoveredBlock110Value3 := (recoveredBlock110Value0) attributedViewNames: (recoveredBlock110Value2).
    recoveredBlock110Value3
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 |
    recoveredBlock133Value0 := recoveredLocal2.
    recoveredBlock133Value1 := recoveredBlock133Arg1.
    recoveredBlock133Value2 := (self) readLineStyleT: (recoveredBlock133Value1).
    recoveredBlock133Value3 := (recoveredBlock133Value0) lineStyle: (recoveredBlock133Value2).
    recoveredBlock133Value3
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'FillColor'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 recoveredBlock157Value3 |
    recoveredBlock157Value0 := recoveredLocal2.
    recoveredBlock157Value1 := recoveredBlock157Arg1.
    recoveredBlock157Value2 := (recoveredBlock157Value1) asColor.
    recoveredBlock157Value3 := (recoveredBlock157Value0) xmlFillColor: (recoveredBlock157Value2).
    recoveredBlock157Value3
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 |
    recoveredBlock180Value0 := recoveredLocal2.
    recoveredBlock180Value1 := recoveredBlock180Arg1.
    recoveredBlock180Value2 := (recoveredBlock180Value1) asPoint.
    recoveredBlock180Value3 := (recoveredBlock180Value0) position: (recoveredBlock180Value2).
    recoveredBlock180Value3
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'Interfaces'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := [:recoveredBlock205Arg1 | 
    | recoveredBlock205Local1 recoveredBlock205Local2 recoveredBlock205Local3 recoveredBlock205Local4 recoveredBlock205Stack0 recoveredBlock205Stack1 recoveredBlock205Stack2 recoveredBlock205Stack3 recoveredBlock205Stack4 recoveredBlock205Stack5 recoveredBlock205PC recoveredBlock205Step recoveredBlock205Done recoveredBlock205Result |
    recoveredBlock205Stack0 := self.
    recoveredBlock205PC := 212.
    recoveredBlock205Done := false.
    [recoveredBlock205Done not] whileTrue: [
        recoveredBlock205Step := recoveredBlock205PC.
        recoveredBlock205Step = 212 ifTrue: [
            recoveredBlock205Stack1 := ASDXMLIndexedTable.
            recoveredBlock205PC := 214.
        ].
        recoveredBlock205Step = 214 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) new.
            recoveredBlock205PC := 216.
        ].
        recoveredBlock205Step = 216 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) init.
            recoveredBlock205PC := 218.
        ].
        recoveredBlock205Step = 218 ifTrue: [
            recoveredBlock205Local4 := recoveredBlock205Stack1.
            recoveredBlock205PC := 221.
        ].
        recoveredBlock205Step = 221 ifTrue: [
            recoveredBlock205Stack1 := ASDXMLIndexedTable.
            recoveredBlock205PC := 223.
        ].
        recoveredBlock205Step = 223 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) new.
            recoveredBlock205PC := 225.
        ].
        recoveredBlock205Step = 225 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) init.
            recoveredBlock205PC := 227.
        ].
        recoveredBlock205Step = 227 ifTrue: [
            recoveredBlock205Local3 := recoveredBlock205Stack1.
            recoveredBlock205PC := 230.
        ].
        recoveredBlock205Step = 230 ifTrue: [
            recoveredBlock205Stack1 := 0.
            recoveredBlock205PC := 232.
        ].
        recoveredBlock205Step = 232 ifTrue: [
            recoveredBlock205Local1 := recoveredBlock205Stack1.
            recoveredBlock205PC := 235.
        ].
        recoveredBlock205Step = 235 ifTrue: [
            recoveredBlock205Stack1 := recoveredBlock205Arg1.
            recoveredBlock205PC := 238.
        ].
        recoveredBlock205Step = 238 ifTrue: [
            recoveredBlock205Stack2 := 'SelectorPort'.
            recoveredBlock205PC := 240.
        ].
        recoveredBlock205Step = 240 ifTrue: [
            recoveredBlock205Stack3 := [:recoveredBlock205Block240Arg1 | 
    | recoveredBlock205Block240Value0 recoveredBlock205Block240Value1 recoveredBlock205Block240Value2 recoveredBlock205Block240Value3 recoveredBlock205Block240Value4 |
    recoveredBlock205Block240Value0 := recoveredBlock205Block240Arg1.
    recoveredBlock205Block240Value1 := (recoveredBlock205Block240Value0) getGraphicOID: ('graphicOID').
    recoveredBlock205Local2 := recoveredBlock205Block240Value1.
    recoveredBlock205Block240Value2 := recoveredBlock205Block240Arg1.
    recoveredBlock205Block240Value3 := [:recoveredBlock205Block240Block257Arg1 | 
    | recoveredBlock205Block240Block257Local1 recoveredBlock205Block240Block257Stack0 recoveredBlock205Block240Block257Stack1 recoveredBlock205Block240Block257Stack2 recoveredBlock205Block240Block257Stack3 recoveredBlock205Block240Block257Stack4 recoveredBlock205Block240Block257Stack5 recoveredBlock205Block240Block257PC recoveredBlock205Block240Block257Step recoveredBlock205Block240Block257Done recoveredBlock205Block240Block257Result |
    recoveredBlock205Block240Block257Stack0 := self.
    recoveredBlock205Block240Block257PC := 264.
    recoveredBlock205Block240Block257Done := false.
    [recoveredBlock205Block240Block257Done not] whileTrue: [
        recoveredBlock205Block240Block257Step := recoveredBlock205Block240Block257PC.
        recoveredBlock205Block240Block257Step = 264 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := 'Cond'.
            recoveredBlock205Block240Block257PC := 266.
        ].
        recoveredBlock205Block240Block257Step = 266 ifTrue: [
            recoveredBlock205Block240Block257Local1 := recoveredBlock205Block240Block257Stack1.
            recoveredBlock205Block240Block257PC := 267.
        ].
        recoveredBlock205Block240Block257Step = 267 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := recoveredLocal1.
            recoveredBlock205Block240Block257PC := 270.
        ].
        recoveredBlock205Block240Block257Step = 270 ifTrue: [
            recoveredBlock205Block240Block257Stack2 := 'SGBreakGO'.
            recoveredBlock205Block240Block257PC := 272.
        ].
        recoveredBlock205Block240Block257Step = 272 ifTrue: [
            (recoveredBlock205Block240Block257Stack1 ~~ recoveredBlock205Block240Block257Stack2) ifTrue: [recoveredBlock205Block240Block257PC := 279] ifFalse: [recoveredBlock205Block240Block257PC := 276].
        ].
        recoveredBlock205Block240Block257Step = 276 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := 'Break'.
            recoveredBlock205Block240Block257PC := 278.
        ].
        recoveredBlock205Block240Block257Step = 278 ifTrue: [
            recoveredBlock205Block240Block257Local1 := recoveredBlock205Block240Block257Stack1.
            recoveredBlock205Block240Block257PC := 279.
        ].
        recoveredBlock205Block240Block257Step = 279 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := recoveredLocal1.
            recoveredBlock205Block240Block257PC := 282.
        ].
        recoveredBlock205Block240Block257Step = 282 ifTrue: [
            recoveredBlock205Block240Block257Stack2 := 'ASDInvokeOpGO'.
            recoveredBlock205Block240Block257PC := 284.
        ].
        recoveredBlock205Block240Block257Step = 284 ifTrue: [
            (recoveredBlock205Block240Block257Stack1 ~~ recoveredBlock205Block240Block257Stack2) ifTrue: [recoveredBlock205Block240Block257PC := 291] ifFalse: [recoveredBlock205Block240Block257PC := 288].
        ].
        recoveredBlock205Block240Block257Step = 288 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := 'InvokeOp'.
            recoveredBlock205Block240Block257PC := 290.
        ].
        recoveredBlock205Block240Block257Step = 290 ifTrue: [
            recoveredBlock205Block240Block257Local1 := recoveredBlock205Block240Block257Stack1.
            recoveredBlock205Block240Block257PC := 291.
        ].
        recoveredBlock205Block240Block257Step = 291 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := recoveredLocal2.
            recoveredBlock205Block240Block257PC := 294.
        ].
        recoveredBlock205Block240Block257Step = 294 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := (recoveredBlock205Block240Block257Stack1) sequences.
            recoveredBlock205Block240Block257PC := 296.
        ].
        recoveredBlock205Block240Block257Step = 296 ifTrue: [
            recoveredBlock205Block240Block257Stack2 := recoveredBlock205Block240Block257Local1.
            recoveredBlock205Block240Block257PC := 297.
        ].
        recoveredBlock205Block240Block257Step = 297 ifTrue: [
            recoveredBlock205Block240Block257Stack3 := self.
            recoveredBlock205Block240Block257PC := 298.
        ].
        recoveredBlock205Block240Block257Step = 298 ifTrue: [
            recoveredBlock205Block240Block257Stack4 := recoveredBlock205Block240Block257Arg1.
            recoveredBlock205Block240Block257PC := 299.
        ].
        recoveredBlock205Block240Block257Step = 299 ifTrue: [
            recoveredBlock205Block240Block257Stack3 := (recoveredBlock205Block240Block257Stack3) readSequenceCallT: (recoveredBlock205Block240Block257Stack4).
            recoveredBlock205Block240Block257PC := 301.
        ].
        recoveredBlock205Block240Block257Step = 301 ifTrue: [
            recoveredBlock205Block240Block257Stack1 := (recoveredBlock205Block240Block257Stack1) at: (recoveredBlock205Block240Block257Stack2) put: (recoveredBlock205Block240Block257Stack3).
            recoveredBlock205Block240Block257PC := 303.
        ].
        recoveredBlock205Block240Block257Step = 303 ifTrue: [
            recoveredBlock205Block240Block257Result := recoveredBlock205Block240Block257Stack1.
            recoveredBlock205Block240Block257Done := true.
        ].
    ].
    recoveredBlock205Block240Block257Result
].
    recoveredBlock205Block240Value4 := (recoveredBlock205Block240Value2) optional: ('SequenceCall') do: (recoveredBlock205Block240Value3).
    recoveredBlock205Block240Value4
].
            recoveredBlock205PC := 307.
        ].
        recoveredBlock205Step = 307 ifTrue: [
            recoveredBlock205Stack4 := handler.
            recoveredBlock205PC := 309.
        ].
        recoveredBlock205Step = 309 ifTrue: [
            (recoveredBlock205Stack1) required: (recoveredBlock205Stack2) do: (recoveredBlock205Stack3) ifNot: (recoveredBlock205Stack4).
            recoveredBlock205PC := 312.
        ].
        recoveredBlock205Step = 312 ifTrue: [
            recoveredBlock205Stack1 := recoveredBlock205Arg1.
            recoveredBlock205PC := 315.
        ].
        recoveredBlock205Step = 315 ifTrue: [
            recoveredBlock205Stack2 := 'ReturnPort'.
            recoveredBlock205PC := 317.
        ].
        recoveredBlock205Step = 317 ifTrue: [
            recoveredBlock205Stack3 := [:recoveredBlock205Block317Arg1 | 
    | recoveredBlock205Block317Local1 recoveredBlock205Block317Stack0 recoveredBlock205Block317Stack1 recoveredBlock205Block317Stack2 recoveredBlock205Block317Stack3 recoveredBlock205Block317Stack4 recoveredBlock205Block317Stack5 recoveredBlock205Block317PC recoveredBlock205Block317Step recoveredBlock205Block317Done recoveredBlock205Block317Result |
    recoveredBlock205Block317Stack0 := nil.
    recoveredBlock205Block317PC := 324.
    recoveredBlock205Block317Done := false.
    [recoveredBlock205Block317Done not] whileTrue: [
        recoveredBlock205Block317Step := recoveredBlock205Block317PC.
        recoveredBlock205Block317Step = 324 ifTrue: [
            recoveredBlock205Block317Stack1 := recoveredBlock205Local4.
            recoveredBlock205Block317PC := 327.
        ].
        recoveredBlock205Block317Step = 327 ifTrue: [
            recoveredBlock205Block317Stack2 := recoveredBlock205Local1.
            recoveredBlock205Block317PC := 330.
        ].
        recoveredBlock205Block317Step = 330 ifTrue: [
            recoveredBlock205Block317Stack3 := recoveredBlock205Block317Arg1.
            recoveredBlock205Block317PC := 331.
        ].
        recoveredBlock205Block317Step = 331 ifTrue: [
            recoveredBlock205Block317Stack4 := 'graphicOID'.
            recoveredBlock205Block317PC := 333.
        ].
        recoveredBlock205Block317Step = 333 ifTrue: [
            recoveredBlock205Block317Stack3 := (recoveredBlock205Block317Stack3) getGraphicOID: (recoveredBlock205Block317Stack4).
            recoveredBlock205Block317PC := 335.
        ].
        recoveredBlock205Block317Step = 335 ifTrue: [
            (recoveredBlock205Block317Stack1) at: (recoveredBlock205Block317Stack2) put: (recoveredBlock205Block317Stack3).
            recoveredBlock205Block317PC := 337.
        ].
        recoveredBlock205Block317Step = 337 ifTrue: [
            recoveredBlock205Block317Stack1 := recoveredBlock205Block317Arg1.
            recoveredBlock205Block317PC := 338.
        ].
        recoveredBlock205Block317Step = 338 ifTrue: [
            recoveredBlock205Block317Stack2 := 'label'.
            recoveredBlock205Block317PC := 340.
        ].
        recoveredBlock205Block317Step = 340 ifTrue: [
            recoveredBlock205Block317Stack3 := nil.
            recoveredBlock205Block317PC := 341.
        ].
        recoveredBlock205Block317Step = 341 ifTrue: [
            recoveredBlock205Block317Stack1 := (recoveredBlock205Block317Stack1) getString: (recoveredBlock205Block317Stack2) default: (recoveredBlock205Block317Stack3).
            recoveredBlock205Block317PC := 343.
        ].
        recoveredBlock205Block317Step = 343 ifTrue: [
            recoveredBlock205Block317Stack2 := recoveredBlock205Block317Stack1.
            recoveredBlock205Block317PC := 344.
        ].
        recoveredBlock205Block317Step = 344 ifTrue: [
            recoveredBlock205Block317Local1 := recoveredBlock205Block317Stack2.
            recoveredBlock205Block317PC := 345.
        ].
        recoveredBlock205Block317Step = 345 ifTrue: [
            (recoveredBlock205Block317Stack1 == nil) ifTrue: [recoveredBlock205Block317PC := 357] ifFalse: [recoveredBlock205Block317PC := 348].
        ].
        recoveredBlock205Block317Step = 348 ifTrue: [
            recoveredBlock205Block317Stack1 := recoveredBlock205Local3.
            recoveredBlock205Block317PC := 351.
        ].
        recoveredBlock205Block317Step = 351 ifTrue: [
            recoveredBlock205Block317Stack2 := recoveredBlock205Local1.
            recoveredBlock205Block317PC := 354.
        ].
        recoveredBlock205Block317Step = 354 ifTrue: [
            recoveredBlock205Block317Stack3 := recoveredBlock205Block317Local1.
            recoveredBlock205Block317PC := 355.
        ].
        recoveredBlock205Block317Step = 355 ifTrue: [
            (recoveredBlock205Block317Stack1) at: (recoveredBlock205Block317Stack2) put: (recoveredBlock205Block317Stack3).
            recoveredBlock205Block317PC := 357.
        ].
        recoveredBlock205Block317Step = 357 ifTrue: [
            recoveredBlock205Block317Stack1 := recoveredBlock205Local1.
            recoveredBlock205Block317PC := 360.
        ].
        recoveredBlock205Block317Step = 360 ifTrue: [
            recoveredBlock205Block317Stack1 := (recoveredBlock205Block317Stack1) + (1).
            recoveredBlock205Block317PC := 361.
        ].
        recoveredBlock205Block317Step = 361 ifTrue: [
            recoveredBlock205Block317Stack2 := recoveredBlock205Block317Stack1.
            recoveredBlock205Block317PC := 362.
        ].
        recoveredBlock205Block317Step = 362 ifTrue: [
            recoveredBlock205Local1 := recoveredBlock205Block317Stack2.
            recoveredBlock205Block317PC := 365.
        ].
        recoveredBlock205Block317Step = 365 ifTrue: [
            recoveredBlock205Block317Result := recoveredBlock205Block317Stack1.
            recoveredBlock205Block317Done := true.
        ].
    ].
    recoveredBlock205Block317Result
].
            recoveredBlock205PC := 366.
        ].
        recoveredBlock205Step = 366 ifTrue: [
            (recoveredBlock205Stack1) multiple: (recoveredBlock205Stack2) do: (recoveredBlock205Stack3).
            recoveredBlock205PC := 368.
        ].
        recoveredBlock205Step = 368 ifTrue: [
            recoveredBlock205Stack1 := recoveredBlock205Arg1.
            recoveredBlock205PC := 371.
        ].
        recoveredBlock205Step = 371 ifTrue: [
            recoveredBlock205Stack2 := handler.
            recoveredBlock205PC := 373.
        ].
        recoveredBlock205Step = 373 ifTrue: [
            (recoveredBlock205Stack1) doneIfNot: (recoveredBlock205Stack2).
            recoveredBlock205PC := 375.
        ].
        recoveredBlock205Step = 375 ifTrue: [
            recoveredBlock205Stack1 := recoveredLocal2.
            recoveredBlock205PC := 378.
        ].
        recoveredBlock205Step = 378 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Local4.
            recoveredBlock205PC := 381.
        ].
        recoveredBlock205Step = 381 ifTrue: [
            recoveredBlock205Stack3 := recoveredBlock205Local2.
            recoveredBlock205PC := 384.
        ].
        recoveredBlock205Step = 384 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) asArrayWithLeadingObj: (recoveredBlock205Stack3).
            recoveredBlock205PC := 386.
        ].
        recoveredBlock205Step = 386 ifTrue: [
            (recoveredBlock205Stack1) connectors: (recoveredBlock205Stack2).
            recoveredBlock205PC := 388.
        ].
        recoveredBlock205Step = 388 ifTrue: [
            recoveredBlock205Stack1 := nil.
            recoveredBlock205PC := 389.
        ].
        recoveredBlock205Step = 389 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Local3.
            recoveredBlock205PC := 392.
        ].
        recoveredBlock205Step = 392 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) size.
            recoveredBlock205PC := 394.
        ].
        recoveredBlock205Step = 394 ifTrue: [
            recoveredBlock205Stack3 := 0.
            recoveredBlock205PC := 396.
        ].
        recoveredBlock205Step = 396 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) > (recoveredBlock205Stack3).
            recoveredBlock205PC := 397.
        ].
        recoveredBlock205Step = 397 ifTrue: [
            (recoveredBlock205Stack2) ifTrue: [recoveredBlock205PC := 400] ifFalse: [recoveredBlock205PC := 415].
        ].
        recoveredBlock205Step = 400 ifTrue: [
            recoveredBlock205PC := 401.
        ].
        recoveredBlock205Step = 401 ifTrue: [
            recoveredBlock205Stack1 := recoveredLocal2.
            recoveredBlock205PC := 404.
        ].
        recoveredBlock205Step = 404 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Local3.
            recoveredBlock205PC := 407.
        ].
        recoveredBlock205Step = 407 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) asArray.
            recoveredBlock205PC := 411.
        ].
        recoveredBlock205Step = 411 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) controlInfo: (recoveredBlock205Stack2).
            recoveredBlock205PC := 415.
        ].
        recoveredBlock205Step = 415 ifTrue: [
            recoveredBlock205Result := recoveredBlock205Stack1.
            recoveredBlock205Done := true.
        ].
    ].
    recoveredBlock205Result
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := 'SGSwitchGO'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 460].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := [:recoveredBlock438Arg1 | 
    | recoveredBlock438Value0 recoveredBlock438Value1 recoveredBlock438Value2 recoveredBlock438Value3 |
    recoveredBlock438Value0 := recoveredLocal2.
    recoveredBlock438Value1 := recoveredBlock438Arg1.
    recoveredBlock438Value2 := (recoveredBlock438Value1) asSize.
    recoveredBlock438Value3 := (recoveredBlock438Value0) lBlockSize: (recoveredBlock438Value2).
    recoveredBlock438Value3
].
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := 'SGIfThenGO'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 495].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectors.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 486] ifFalse: [recoveredPC := 495].
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := 'Inconsistent IfThen layout'.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) inconsistencyFound: (recoveredStack2).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := 'SGIfThenElseGO'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 506] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectors.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 522] ifFalse: [recoveredPC := 531].
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 'Inconsistent IfThenElse layout'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack1) inconsistencyFound: (recoveredStack2).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20623aec; bytecode file offset 0xf204d8"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readCCodeSpecificationT: recoveredArg1 public: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'CCode'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block25Arg1 | 
    | recoveredBlock15Block25Stack0 recoveredBlock15Block25Stack1 recoveredBlock15Block25Stack2 recoveredBlock15Block25Stack3 recoveredBlock15Block25Stack4 recoveredBlock15Block25Stack5 recoveredBlock15Block25Stack6 recoveredBlock15Block25PC recoveredBlock15Block25Step recoveredBlock15Block25Done recoveredBlock15Block25Result |
    recoveredBlock15Block25Stack0 := self.
    recoveredBlock15Block25PC := 32.
    recoveredBlock15Block25Done := false.
    [recoveredBlock15Block25Done not] whileTrue: [
        recoveredBlock15Block25Step := recoveredBlock15Block25PC.
        recoveredBlock15Block25Step = 32 ifTrue: [
            recoveredBlock15Block25Stack1 := [
    | recoveredBlock15Block25Block32Local1 recoveredBlock15Block25Block32Local2 recoveredBlock15Block25Block32Local3 recoveredBlock15Block25Block32Stack0 recoveredBlock15Block25Block32Stack1 recoveredBlock15Block25Block32Stack2 recoveredBlock15Block25Block32Stack3 recoveredBlock15Block25Block32Stack4 recoveredBlock15Block25Block32PC recoveredBlock15Block25Block32Step recoveredBlock15Block25Block32Done recoveredBlock15Block25Block32Result |
    recoveredBlock15Block25Block32Stack0 := self.
    recoveredBlock15Block25Block32PC := 38.
    recoveredBlock15Block25Block32Done := false.
    [recoveredBlock15Block25Block32Done not] whileTrue: [
        recoveredBlock15Block25Block32Step := recoveredBlock15Block25Block32PC.
        recoveredBlock15Block25Block32Step = 38 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 41.
        ].
        recoveredBlock15Block25Block32Step = 41 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := (recoveredBlock15Block25Block32Stack0) variantKeyFrom: (recoveredBlock15Block25Block32Stack1).
            recoveredBlock15Block25Block32PC := 43.
        ].
        recoveredBlock15Block25Block32Step = 43 ifTrue: [
            recoveredBlock15Block25Block32Local3 := recoveredBlock15Block25Block32Stack0.
            recoveredBlock15Block25Block32PC := 46.
        ].
        recoveredBlock15Block25Block32Step = 46 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := self.
            recoveredBlock15Block25Block32PC := 47.
        ].
        recoveredBlock15Block25Block32Step = 47 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 50.
        ].
        recoveredBlock15Block25Block32Step = 50 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := (recoveredBlock15Block25Block32Stack0) oidImpl: (recoveredBlock15Block25Block32Stack1).
            recoveredBlock15Block25Block32PC := 52.
        ].
        recoveredBlock15Block25Block32Step = 52 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := [:recoveredBlock15Block25Block32Block52Arg1 | 
    | recoveredBlock15Block25Block32Block52Local1 recoveredBlock15Block25Block32Block52Local2 recoveredBlock15Block25Block32Block52Stack0 recoveredBlock15Block25Block32Block52Stack1 recoveredBlock15Block25Block32Block52Stack2 recoveredBlock15Block25Block32Block52Stack3 recoveredBlock15Block25Block32Block52Stack4 recoveredBlock15Block25Block32Block52Stack5 recoveredBlock15Block25Block32Block52Stack6 recoveredBlock15Block25Block32Block52Stack7 recoveredBlock15Block25Block32Block52PC recoveredBlock15Block25Block32Block52Step recoveredBlock15Block25Block32Block52Done recoveredBlock15Block25Block32Block52Result |
    recoveredBlock15Block25Block32Block52Stack0 := self.
    recoveredBlock15Block25Block32Block52PC := 58.
    recoveredBlock15Block25Block32Block52Done := false.
    [recoveredBlock15Block25Block32Block52Done not] whileTrue: [
        recoveredBlock15Block25Block32Block52Step := recoveredBlock15Block25Block32Block52PC.
        recoveredBlock15Block25Block32Block52Step = 58 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := 'Kli'.
            recoveredBlock15Block25Block32Block52PC := 60.
        ].
        recoveredBlock15Block25Block32Block52Step = 60 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := 'Call_99272'.
            recoveredBlock15Block25Block32Block52PC := 62.
        ].
        recoveredBlock15Block25Block32Block52Step = 62 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := (recoveredBlock15Block25Block32Block52Stack1) == (recoveredBlock15Block25Block32Block52Stack2).
            recoveredBlock15Block25Block32Block52PC := 63.
        ].
        recoveredBlock15Block25Block32Block52Step = 63 ifTrue: [
            recoveredBlock15Block25Block32Block52PC := 64.
        ].
        recoveredBlock15Block25Block32Block52Step = 64 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := controller.
            recoveredBlock15Block25Block32Block52PC := 66.
        ].
        recoveredBlock15Block25Block32Block52Step = 66 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := recoveredBlock15Block25Block32Block52Arg1.
            recoveredBlock15Block25Block32Block52PC := 67.
        ].
        recoveredBlock15Block25Block32Block52Step = 67 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := (recoveredBlock15Block25Block32Block52Stack1) effectiveOID: (recoveredBlock15Block25Block32Block52Stack2).
            recoveredBlock15Block25Block32Block52PC := 69.
        ].
        recoveredBlock15Block25Block32Block52Step = 69 ifTrue: [
            recoveredBlock15Block25Block32Block52Local1 := recoveredBlock15Block25Block32Block52Stack1.
            recoveredBlock15Block25Block32Block52PC := 70.
        ].
        recoveredBlock15Block25Block32Block52Step = 70 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := recoveredBlock15Block25Block32Block52Local1.
            recoveredBlock15Block25Block32Block52PC := 71.
        ].
        recoveredBlock15Block25Block32Block52Step = 71 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) isImplAvailable: (recoveredBlock15Block25Block32Block52Stack1).
            recoveredBlock15Block25Block32Block52PC := 73.
        ].
        recoveredBlock15Block25Block32Block52Step = 73 ifTrue: [
            (recoveredBlock15Block25Block32Block52Stack0) ifTrue: [recoveredBlock15Block25Block32Block52PC := 76] ifFalse: [recoveredBlock15Block25Block32Block52PC := 124].
        ].
        recoveredBlock15Block25Block32Block52Step = 76 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := controller.
            recoveredBlock15Block25Block32Block52PC := 78.
        ].
        recoveredBlock15Block25Block32Block52Step = 78 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := recoveredBlock15Block25Block32Block52Local1.
            recoveredBlock15Block25Block32Block52PC := 79.
        ].
        recoveredBlock15Block25Block32Block52Step = 79 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) makeDBProxy: (recoveredBlock15Block25Block32Block52Stack1).
            recoveredBlock15Block25Block32Block52PC := 81.
        ].
        recoveredBlock15Block25Block32Block52Step = 81 ifTrue: [
            recoveredBlock15Block25Block32Block52Local2 := recoveredBlock15Block25Block32Block52Stack0.
            recoveredBlock15Block25Block32Block52PC := 82.
        ].
        recoveredBlock15Block25Block32Block52Step = 82 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := sgClass.
            recoveredBlock15Block25Block32Block52PC := 84.
        ].
        recoveredBlock15Block25Block32Block52Step = 84 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) handwrittenImplCode.
            recoveredBlock15Block25Block32Block52PC := 86.
        ].
        recoveredBlock15Block25Block32Block52Step = 86 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := recoveredBlock15Block25Block32Block52Local2.
            recoveredBlock15Block25Block32Block52PC := 87.
        ].
        recoveredBlock15Block25Block32Block52Step = 87 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := [].
            recoveredBlock15Block25Block32Block52PC := 89.
        ].
        recoveredBlock15Block25Block32Block52Step = 89 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) at: (recoveredBlock15Block25Block32Block52Stack1) ifAbsent: (recoveredBlock15Block25Block32Block52Stack2).
            recoveredBlock15Block25Block32Block52PC := 91.
        ].
        recoveredBlock15Block25Block32Block52Step = 91 ifTrue: [
            recoveredBlock15Block25Block32Local1 := recoveredBlock15Block25Block32Block52Stack0.
            recoveredBlock15Block25Block32Block52PC := 94.
        ].
        recoveredBlock15Block25Block32Block52Step = 94 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := nil.
            recoveredBlock15Block25Block32Block52PC := 95.
        ].
        recoveredBlock15Block25Block32Block52Step = 95 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := recoveredBlock15Block25Block32Local1.
            recoveredBlock15Block25Block32Block52PC := 98.
        ].
        recoveredBlock15Block25Block32Block52Step = 98 ifTrue: [
            (recoveredBlock15Block25Block32Block52Stack1 ~~ nil) ifTrue: [recoveredBlock15Block25Block32Block52PC := 120] ifFalse: [recoveredBlock15Block25Block32Block52PC := 102].
        ].
        recoveredBlock15Block25Block32Block52Step = 102 ifTrue: [
            recoveredBlock15Block25Block32Block52PC := 103.
        ].
        recoveredBlock15Block25Block32Block52Step = 103 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := SGCodeArchive.
            recoveredBlock15Block25Block32Block52PC := 105.
        ].
        recoveredBlock15Block25Block32Block52Step = 105 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) create.
            recoveredBlock15Block25Block32Block52PC := 107.
        ].
        recoveredBlock15Block25Block32Block52Step = 107 ifTrue: [
            recoveredBlock15Block25Block32Local1 := recoveredBlock15Block25Block32Block52Stack0.
            recoveredBlock15Block25Block32Block52PC := 110.
        ].
        recoveredBlock15Block25Block32Block52Step = 110 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := sgClass.
            recoveredBlock15Block25Block32Block52PC := 112.
        ].
        recoveredBlock15Block25Block32Block52Step = 112 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) handwrittenImplCode.
            recoveredBlock15Block25Block32Block52PC := 114.
        ].
        recoveredBlock15Block25Block32Block52Step = 114 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := recoveredBlock15Block25Block32Block52Local2.
            recoveredBlock15Block25Block32Block52PC := 115.
        ].
        recoveredBlock15Block25Block32Block52Step = 115 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := recoveredBlock15Block25Block32Local1.
            recoveredBlock15Block25Block32Block52PC := 118.
        ].
        recoveredBlock15Block25Block32Block52Step = 118 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) at: (recoveredBlock15Block25Block32Block52Stack1) put: (recoveredBlock15Block25Block32Block52Stack2).
            recoveredBlock15Block25Block32Block52PC := 120.
        ].
        recoveredBlock15Block25Block32Block52Step = 120 ifTrue: [
            recoveredBlock15Block25Block32Block52PC := 155.
        ].
        recoveredBlock15Block25Block32Block52Step = 124 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := controller.
            recoveredBlock15Block25Block32Block52PC := 126.
        ].
        recoveredBlock15Block25Block32Block52Step = 126 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := ASDXMLImportIssueMissingImplementation.
            recoveredBlock15Block25Block32Block52PC := 128.
        ].
        recoveredBlock15Block25Block32Block52Step = 128 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := (recoveredBlock15Block25Block32Block52Stack1) new.
            recoveredBlock15Block25Block32Block52PC := 129.
        ].
        recoveredBlock15Block25Block32Block52Step = 129 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := self.
            recoveredBlock15Block25Block32Block52PC := 130.
        ].
        recoveredBlock15Block25Block32Block52Step = 130 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack2 := (recoveredBlock15Block25Block32Block52Stack2) protoItem.
            recoveredBlock15Block25Block32Block52PC := 132.
        ].
        recoveredBlock15Block25Block32Block52Step = 132 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack3 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32Block52PC := 135.
        ].
        recoveredBlock15Block25Block32Block52Step = 135 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack4 := 'implementationName'.
            recoveredBlock15Block25Block32Block52PC := 137.
        ].
        recoveredBlock15Block25Block32Block52Step = 137 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack5 := '<undef>'.
            recoveredBlock15Block25Block32Block52PC := 139.
        ].
        recoveredBlock15Block25Block32Block52Step = 139 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack3 := (recoveredBlock15Block25Block32Block52Stack3) getNMToken: (recoveredBlock15Block25Block32Block52Stack4) default: (recoveredBlock15Block25Block32Block52Stack5).
            recoveredBlock15Block25Block32Block52PC := 141.
        ].
        recoveredBlock15Block25Block32Block52Step = 141 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack4 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32Block52PC := 144.
        ].
        recoveredBlock15Block25Block32Block52Step = 144 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack5 := 'implementationOID'.
            recoveredBlock15Block25Block32Block52PC := 146.
        ].
        recoveredBlock15Block25Block32Block52Step = 146 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack6 := '<undef>'.
            recoveredBlock15Block25Block32Block52PC := 148.
        ].
        recoveredBlock15Block25Block32Block52Step = 148 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack4 := (recoveredBlock15Block25Block32Block52Stack4) getString: (recoveredBlock15Block25Block32Block52Stack5) default: (recoveredBlock15Block25Block32Block52Stack6).
            recoveredBlock15Block25Block32Block52PC := 150.
        ].
        recoveredBlock15Block25Block32Block52Step = 150 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack1 := (recoveredBlock15Block25Block32Block52Stack1) initOn: (recoveredBlock15Block25Block32Block52Stack2) implName: (recoveredBlock15Block25Block32Block52Stack3) implOID: (recoveredBlock15Block25Block32Block52Stack4).
            recoveredBlock15Block25Block32Block52PC := 153.
        ].
        recoveredBlock15Block25Block32Block52Step = 153 ifTrue: [
            recoveredBlock15Block25Block32Block52Stack0 := (recoveredBlock15Block25Block32Block52Stack0) addIssue: (recoveredBlock15Block25Block32Block52Stack1).
            recoveredBlock15Block25Block32Block52PC := 155.
        ].
        recoveredBlock15Block25Block32Block52Step = 155 ifTrue: [
            recoveredBlock15Block25Block32Block52Result := recoveredBlock15Block25Block32Block52Stack0.
            recoveredBlock15Block25Block32Block52Done := true.
        ].
    ].
    recoveredBlock15Block25Block32Block52Result
].
            recoveredBlock15Block25Block32PC := 156.
        ].
        recoveredBlock15Block25Block32Step = 156 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [
    | recoveredBlock15Block25Block32Block156Value0 recoveredBlock15Block25Block32Block156Value1 recoveredBlock15Block25Block32Block156Value2 |
    recoveredBlock15Block25Block32Block156Value0 := sgClass.
    recoveredBlock15Block25Block32Block156Value1 := (recoveredBlock15Block25Block32Block156Value0) code.
    recoveredBlock15Block25Block32Block156Value2 := recoveredBlock15Block25Block32Block156Value1.
    recoveredBlock15Block25Block32Local1 := recoveredBlock15Block25Block32Block156Value2.
    recoveredBlock15Block25Block32Block156Value1
].
            recoveredBlock15Block25Block32PC := 171.
        ].
        recoveredBlock15Block25Block32Step = 171 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) ifNotNil: (recoveredBlock15Block25Block32Stack1) ifNil: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 173.
        ].
        recoveredBlock15Block25Block32Step = 173 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := nil.
            recoveredBlock15Block25Block32PC := 174.
        ].
        recoveredBlock15Block25Block32Step = 174 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Block32Local1.
            recoveredBlock15Block25Block32PC := 177.
        ].
        recoveredBlock15Block25Block32Step = 177 ifTrue: [
            (recoveredBlock15Block25Block32Stack1 == nil) ifTrue: [recoveredBlock15Block25Block32PC := 376] ifFalse: [recoveredBlock15Block25Block32PC := 180].
        ].
        recoveredBlock15Block25Block32Step = 180 ifTrue: [
            recoveredBlock15Block25Block32PC := 181.
        ].
        recoveredBlock15Block25Block32Step = 181 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := self.
            recoveredBlock15Block25Block32PC := 182.
        ].
        recoveredBlock15Block25Block32Step = 182 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Block32Local3.
            recoveredBlock15Block25Block32PC := 185.
        ].
        recoveredBlock15Block25Block32Step = 185 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := recoveredBlock15Block25Block32Local1.
            recoveredBlock15Block25Block32PC := 188.
        ].
        recoveredBlock15Block25Block32Step = 188 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := (recoveredBlock15Block25Block32Stack0) codeContainerFor: (recoveredBlock15Block25Block32Stack1) in: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 190.
        ].
        recoveredBlock15Block25Block32Step = 190 ifTrue: [
            recoveredBlock15Block25Block32Local2 := recoveredBlock15Block25Block32Stack0.
            recoveredBlock15Block25Block32PC := 193.
        ].
        recoveredBlock15Block25Block32Step = 193 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := nil.
            recoveredBlock15Block25Block32PC := 194.
        ].
        recoveredBlock15Block25Block32Step = 194 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Block32Local2.
            recoveredBlock15Block25Block32PC := 197.
        ].
        recoveredBlock15Block25Block32Step = 197 ifTrue: [
            (recoveredBlock15Block25Block32Stack1 == nil) ifTrue: [recoveredBlock15Block25Block32PC := 376] ifFalse: [recoveredBlock15Block25Block32PC := 200].
        ].
        recoveredBlock15Block25Block32Step = 200 ifTrue: [
            recoveredBlock15Block25Block32PC := 201.
        ].
        recoveredBlock15Block25Block32Step = 201 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := 'Kli'.
            recoveredBlock15Block25Block32PC := 203.
        ].
        recoveredBlock15Block25Block32Step = 203 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'Call_92561'.
            recoveredBlock15Block25Block32PC := 205.
        ].
        recoveredBlock15Block25Block32Step = 205 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := (recoveredBlock15Block25Block32Stack0) == (recoveredBlock15Block25Block32Stack1).
            recoveredBlock15Block25Block32PC := 206.
        ].
        recoveredBlock15Block25Block32Step = 206 ifTrue: [
            recoveredBlock15Block25Block32PC := 207.
        ].
        recoveredBlock15Block25Block32Step = 207 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 210.
        ].
        recoveredBlock15Block25Block32Step = 210 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'HeaderFile'.
            recoveredBlock15Block25Block32PC := 212.
        ].
        recoveredBlock15Block25Block32Step = 212 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [:recoveredBlock15Block25Block32Block212Arg1 | 
    | recoveredBlock15Block25Block32Block212Value0 recoveredBlock15Block25Block32Block212Value1 recoveredBlock15Block25Block32Block212Value2 recoveredBlock15Block25Block32Block212Value3 recoveredBlock15Block25Block32Block212Value4 recoveredBlock15Block25Block32Block212Value5 recoveredBlock15Block25Block32Block212Value6 |
    recoveredBlock15Block25Block32Block212Value0 := recoveredBlock15Block25Block32Local2.
    recoveredBlock15Block25Block32Block212Value1 := recoveredBlock15Block25Block32Block212Arg1.
    recoveredBlock15Block25Block32Block212Value2 := (recoveredBlock15Block25Block32Block212Value1) getBoolean: ('useGlobal').
    (recoveredBlock15Block25Block32Block212Value0) h2SourceBasic: (recoveredBlock15Block25Block32Block212Value2).
    recoveredBlock15Block25Block32Block212Value3 := ('Bfr') == ('Call_456716').
    recoveredBlock15Block25Block32Block212Value4 := recoveredBlock15Block25Block32Block212Arg1.
    recoveredBlock15Block25Block32Block212Value5 := [:recoveredBlock15Block25Block32Block212Block237Arg1 | 
    | recoveredBlock15Block25Block32Block212Block237Value0 recoveredBlock15Block25Block32Block212Block237Value1 recoveredBlock15Block25Block32Block212Block237Value2 recoveredBlock15Block25Block32Block212Block237Value3 |
    recoveredBlock15Block25Block32Block212Block237Value0 := recoveredBlock15Block25Block32Local2.
    recoveredBlock15Block25Block32Block212Block237Value1 := recoveredBlock15Block25Block32Block212Block237Arg1.
    recoveredBlock15Block25Block32Block212Block237Value2 := (self) readSourceFile: (recoveredBlock15Block25Block32Block212Block237Value1).
    recoveredBlock15Block25Block32Block212Block237Value3 := (recoveredBlock15Block25Block32Block212Block237Value0) xmlHSource: (recoveredBlock15Block25Block32Block212Block237Value2).
    recoveredBlock15Block25Block32Block212Block237Value3
].
    recoveredBlock15Block25Block32Block212Value6 := (recoveredBlock15Block25Block32Block212Value4) optional: ('File') do: (recoveredBlock15Block25Block32Block212Value5).
    recoveredBlock15Block25Block32Block212Value6
].
            recoveredBlock15Block25Block32PC := 257.
        ].
        recoveredBlock15Block25Block32Step = 257 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) optional: (recoveredBlock15Block25Block32Stack1) do: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 259.
        ].
        recoveredBlock15Block25Block32Step = 259 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 262.
        ].
        recoveredBlock15Block25Block32Step = 262 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'CodeFile'.
            recoveredBlock15Block25Block32PC := 264.
        ].
        recoveredBlock15Block25Block32Step = 264 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [:recoveredBlock15Block25Block32Block264Arg1 | 
    | recoveredBlock15Block25Block32Block264Value0 recoveredBlock15Block25Block32Block264Value1 recoveredBlock15Block25Block32Block264Value2 recoveredBlock15Block25Block32Block264Value3 |
    recoveredBlock15Block25Block32Block264Value0 := recoveredBlock15Block25Block32Local2.
    recoveredBlock15Block25Block32Block264Value1 := recoveredBlock15Block25Block32Block264Arg1.
    recoveredBlock15Block25Block32Block264Value2 := (self) readSourceFile: (recoveredBlock15Block25Block32Block264Value1).
    recoveredBlock15Block25Block32Block264Value3 := (recoveredBlock15Block25Block32Block264Value0) xmlCSource: (recoveredBlock15Block25Block32Block264Value2).
    recoveredBlock15Block25Block32Block264Value3
].
            recoveredBlock15Block25Block32PC := 280.
        ].
        recoveredBlock15Block25Block32Step = 280 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) optional: (recoveredBlock15Block25Block32Stack1) do: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 282.
        ].
        recoveredBlock15Block25Block32Step = 282 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 285.
        ].
        recoveredBlock15Block25Block32Step = 285 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'ObjectFile'.
            recoveredBlock15Block25Block32PC := 287.
        ].
        recoveredBlock15Block25Block32Step = 287 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [:recoveredBlock15Block25Block32Block287Arg1 | 
    | recoveredBlock15Block25Block32Block287Value0 recoveredBlock15Block25Block32Block287Value1 recoveredBlock15Block25Block32Block287Value2 recoveredBlock15Block25Block32Block287Value3 |
    recoveredBlock15Block25Block32Block287Value0 := recoveredBlock15Block25Block32Local2.
    recoveredBlock15Block25Block32Block287Value1 := recoveredBlock15Block25Block32Block287Arg1.
    recoveredBlock15Block25Block32Block287Value2 := (self) readSourceFile: (recoveredBlock15Block25Block32Block287Value1).
    recoveredBlock15Block25Block32Block287Value3 := (recoveredBlock15Block25Block32Block287Value0) xmlOSource: (recoveredBlock15Block25Block32Block287Value2).
    recoveredBlock15Block25Block32Block287Value3
].
            recoveredBlock15Block25Block32PC := 304.
        ].
        recoveredBlock15Block25Block32Step = 304 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) optional: (recoveredBlock15Block25Block32Stack1) do: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 306.
        ].
        recoveredBlock15Block25Block32Step = 306 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 309.
        ].
        recoveredBlock15Block25Block32Step = 309 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'HeaderBlock'.
            recoveredBlock15Block25Block32PC := 311.
        ].
        recoveredBlock15Block25Block32Step = 311 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [:recoveredBlock15Block25Block32Block311Arg1 | 
    | recoveredBlock15Block25Block32Block311Value0 recoveredBlock15Block25Block32Block311Value1 recoveredBlock15Block25Block32Block311Value2 recoveredBlock15Block25Block32Block311Value3 recoveredBlock15Block25Block32Block311Value4 recoveredBlock15Block25Block32Block311Value5 |
    recoveredBlock15Block25Block32Block311Value0 := recoveredBlock15Block25Block32Local2.
    recoveredBlock15Block25Block32Block311Value1 := recoveredBlock15Block25Block32Block311Arg1.
    recoveredBlock15Block25Block32Block311Value2 := recoveredBlock15Block25Block32Block311Arg1.
    recoveredBlock15Block25Block32Block311Value3 := (recoveredBlock15Block25Block32Block311Value2) cData.
    recoveredBlock15Block25Block32Block311Value4 := (recoveredBlock15Block25Block32Block311Value1) checkUTF8: (recoveredBlock15Block25Block32Block311Value3).
    recoveredBlock15Block25Block32Block311Value5 := (recoveredBlock15Block25Block32Block311Value0) xmlLocalHSource: (recoveredBlock15Block25Block32Block311Value4).
    recoveredBlock15Block25Block32Block311Value5
].
            recoveredBlock15Block25Block32PC := 330.
        ].
        recoveredBlock15Block25Block32Step = 330 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) optional: (recoveredBlock15Block25Block32Stack1) do: (recoveredBlock15Block25Block32Stack2).
            recoveredBlock15Block25Block32PC := 332.
        ].
        recoveredBlock15Block25Block32Step = 332 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 335.
        ].
        recoveredBlock15Block25Block32Step = 335 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := 'MethodBodies'.
            recoveredBlock15Block25Block32PC := 337.
        ].
        recoveredBlock15Block25Block32Step = 337 ifTrue: [
            recoveredBlock15Block25Block32Stack2 := [:recoveredBlock15Block25Block32Block337Arg1 | 
    | recoveredBlock15Block25Block32Block337Value0 recoveredBlock15Block25Block32Block337Value1 recoveredBlock15Block25Block32Block337Value2 recoveredBlock15Block25Block32Block337Value3 recoveredBlock15Block25Block32Block337Value4 |
    recoveredBlock15Block25Block32Block337Value0 := recoveredBlock15Block25Block32Block337Arg1.
    recoveredBlock15Block25Block32Block337Value1 := recoveredBlock15Block25Block32Local3.
    recoveredBlock15Block25Block32Block337Value2 := recoveredBlock15Block25Block32Local1.
    recoveredBlock15Block25Block32Block337Value3 := recoveredLocal2.
    recoveredBlock15Block25Block32Block337Value4 := (self) readMethodBodies: (recoveredBlock15Block25Block32Block337Value0) variantKey: (recoveredBlock15Block25Block32Block337Value1) archive: (recoveredBlock15Block25Block32Block337Value2) definedMethods: (recoveredBlock15Block25Block32Block337Value3).
    recoveredBlock15Block25Block32Block337Value4
].
            recoveredBlock15Block25Block32PC := 358.
        ].
        recoveredBlock15Block25Block32Step = 358 ifTrue: [
            recoveredBlock15Block25Block32Stack3 := handler.
            recoveredBlock15Block25Block32PC := 360.
        ].
        recoveredBlock15Block25Block32Step = 360 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) required: (recoveredBlock15Block25Block32Stack1) do: (recoveredBlock15Block25Block32Stack2) ifNot: (recoveredBlock15Block25Block32Stack3).
            recoveredBlock15Block25Block32PC := 363.
        ].
        recoveredBlock15Block25Block32Step = 363 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := recoveredBlock15Block25Arg1.
            recoveredBlock15Block25Block32PC := 366.
        ].
        recoveredBlock15Block25Block32Step = 366 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := handler.
            recoveredBlock15Block25Block32PC := 368.
        ].
        recoveredBlock15Block25Block32Step = 368 ifTrue: [
            (recoveredBlock15Block25Block32Stack0) doneIfNot: (recoveredBlock15Block25Block32Stack1).
            recoveredBlock15Block25Block32PC := 370.
        ].
        recoveredBlock15Block25Block32Step = 370 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := self.
            recoveredBlock15Block25Block32PC := 371.
        ].
        recoveredBlock15Block25Block32Step = 371 ifTrue: [
            recoveredBlock15Block25Block32Stack1 := recoveredBlock15Block25Block32Local2.
            recoveredBlock15Block25Block32PC := 374.
        ].
        recoveredBlock15Block25Block32Step = 374 ifTrue: [
            recoveredBlock15Block25Block32Stack0 := (recoveredBlock15Block25Block32Stack0) postProcessContainer: (recoveredBlock15Block25Block32Stack1).
            recoveredBlock15Block25Block32PC := 376.
        ].
        recoveredBlock15Block25Block32Step = 376 ifTrue: [
            recoveredBlock15Block25Block32Result := recoveredBlock15Block25Block32Stack0.
            recoveredBlock15Block25Block32Done := true.
        ].
    ].
    recoveredBlock15Block25Block32Result
].
            recoveredBlock15Block25PC := 377.
        ].
        recoveredBlock15Block25Step = 377 ifTrue: [
            recoveredBlock15Block25Stack2 := ElementNotFound.
            recoveredBlock15Block25PC := 379.
        ].
        recoveredBlock15Block25Step = 379 ifTrue: [
            recoveredBlock15Block25Stack3 := [:block2811eee8Arg1 | 
    | block2811eee8Value0 block2811eee8Value1 |
    block2811eee8Value0 := block2811eee8Arg1.
    block2811eee8Value1 := (block2811eee8Value0) exitWith: (nil).
    block2811eee8Value1
].
            recoveredBlock15Block25PC := 381.
        ].
        recoveredBlock15Block25Step = 381 ifTrue: [
            recoveredBlock15Block25PC := 389.
        ].
        recoveredBlock15Block25Step = 389 ifTrue: [
            recoveredBlock15Block25Stack4 := ShortNameNotFound.
            recoveredBlock15Block25PC := 391.
        ].
        recoveredBlock15Block25Step = 391 ifTrue: [
            recoveredBlock15Block25Stack5 := [:block2811ef0cArg1 | 
    | block2811ef0cValue0 block2811ef0cValue1 |
    block2811ef0cValue0 := block2811ef0cArg1.
    block2811ef0cValue1 := (block2811ef0cValue0) exitWith: (nil).
    block2811ef0cValue1
].
            recoveredBlock15Block25PC := 394.
        ].
        recoveredBlock15Block25Step = 394 ifTrue: [
            recoveredBlock15Block25PC := 403.
        ].
        recoveredBlock15Block25Step = 403 ifTrue: [
            recoveredBlock15Block25Stack1 := (recoveredBlock15Block25Stack1) when: (recoveredBlock15Block25Stack2) do: (recoveredBlock15Block25Stack3) when: (recoveredBlock15Block25Stack4) do: (recoveredBlock15Block25Stack5).
            recoveredBlock15Block25PC := 407.
        ].
        recoveredBlock15Block25Step = 407 ifTrue: [
            recoveredBlock15Block25Result := recoveredBlock15Block25Stack1.
            recoveredBlock15Block25Done := true.
        ].
    ].
    recoveredBlock15Block25Result
].
    (recoveredBlock15Value0) multiple: ('CodeVariant') do: (recoveredBlock15Value1).
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := handler.
    recoveredBlock15Value4 := (recoveredBlock15Value2) doneIfNot: (recoveredBlock15Value3).
    recoveredBlock15Value4
].
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := SGCCodeSpecification.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack4 := (recoveredStack4) asArray.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) specFor: (recoveredStack1) public: (recoveredStack2) name: (recoveredStack3) methods: (recoveredStack4).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := sgClass.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 464] ifFalse: [recoveredPC := 559].
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := 'ctOutputs'.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := [
    'direct'
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnum: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := 'direct'.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) setDirect: (recoveredStack1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNondirect.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 510] ifFalse: [recoveredPC := 559].
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack0 := sgClass.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElements.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := [:block2811ef54Arg1 | 
    | block2811ef54Value0 block2811ef54Value1 |
    block2811ef54Value0 := block2811ef54Arg1.
    block2811ef54Value1 := (block2811ef54Value0) isOutput.
    block2811ef54Value1
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := [:block2811ef78Arg1 | 
    | block2811ef78Value0 block2811ef78Value1 block2811ef78Value2 |
    block2811ef78Value0 := block2811ef78Arg1.
    (block2811ef78Value0) clearDirect.
    block2811ef78Value1 := block2811ef78Arg1.
    block2811ef78Value2 := (block2811ef78Value1) setNondirect.
    block2811ef78Value2
].
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206354f0; bytecode file offset 0xf31ea4"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readDiagramElements: recoveredArg1 block: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'DiagramElement'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack3 := 'ignore'.
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack4 := false.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) getBoolean: (recoveredBlock27Stack3) default: (recoveredBlock27Stack4).
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 559] ifFalse: [recoveredBlock27PC := 46].
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack1 := self.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack3 := [:block28120b08Arg1 | 
    nil
].
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) readCustomerDatas: (recoveredBlock27Stack2) storeBlock: (recoveredBlock27Stack3).
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack1 := [
    | recoveredBlock27Block63Value0 recoveredBlock27Block63Value1 recoveredBlock27Block63Value2 recoveredBlock27Block63Value3 recoveredBlock27Block63Value4 recoveredBlock27Block63Value5 recoveredBlock27Block63Value6 recoveredBlock27Block63Value7 recoveredBlock27Block63Value8 recoveredBlock27Block63Value9 recoveredBlock27Block63Value10 recoveredBlock27Block63Value11 recoveredBlock27Block63Value12 recoveredBlock27Block63Value13 recoveredBlock27Block63Value14 recoveredBlock27Block63Value15 recoveredBlock27Block63Value16 recoveredBlock27Block63Value17 recoveredBlock27Block63Value18 recoveredBlock27Block63Value19 recoveredBlock27Block63Value20 recoveredBlock27Block63Value21 recoveredBlock27Block63Value22 recoveredBlock27Block63Value23 recoveredBlock27Block63Value24 |
    recoveredBlock27Block63Value0 := recoveredBlock27Arg1.
    recoveredBlock27Block63Value1 := [:recoveredBlock27Block63Block75Arg1 | 
    | recoveredBlock27Block63Block75Value0 recoveredBlock27Block63Block75Value1 recoveredBlock27Block63Block75Value2 recoveredBlock27Block63Block75Value3 recoveredBlock27Block63Block75Value4 |
    recoveredBlock27Block63Block75Value0 := recoveredLocal3.
    recoveredBlock27Block63Block75Value1 := recoveredBlock27Block63Block75Arg1.
    recoveredBlock27Block63Block75Value2 := (self) readOperatorT: (recoveredBlock27Block63Block75Value1).
    recoveredBlock27Block63Block75Value3 := recoveredBlock27Block63Block75Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block75Value3.
    recoveredBlock27Block63Block75Value4 := (recoveredBlock27Block63Block75Value0) add: (recoveredBlock27Block63Block75Value2).
    recoveredBlock27Block63Block75Value4
].
    recoveredBlock27Block63Value2 := [:recoveredBlock27Block63Block98Arg1 | 
    | recoveredBlock27Block63Block98Value0 recoveredBlock27Block63Block98Value1 recoveredBlock27Block63Block98Value2 recoveredBlock27Block63Block98Value3 recoveredBlock27Block63Block98Value4 |
    recoveredBlock27Block63Block98Value0 := recoveredLocal3.
    recoveredBlock27Block63Block98Value1 := recoveredBlock27Block63Block98Arg1.
    recoveredBlock27Block63Block98Value2 := (self) readOperatorIntTypeConvT: (recoveredBlock27Block63Block98Value1).
    recoveredBlock27Block63Block98Value3 := recoveredBlock27Block63Block98Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block98Value3.
    recoveredBlock27Block63Block98Value4 := (recoveredBlock27Block63Block98Value0) add: (recoveredBlock27Block63Block98Value2).
    recoveredBlock27Block63Block98Value4
].
    recoveredBlock27Block63Value3 := [:recoveredBlock27Block63Block120Arg1 | 
    | recoveredBlock27Block63Block120Value0 recoveredBlock27Block63Block120Value1 recoveredBlock27Block63Block120Value2 recoveredBlock27Block63Block120Value3 recoveredBlock27Block63Block120Value4 |
    recoveredBlock27Block63Block120Value0 := recoveredLocal3.
    recoveredBlock27Block63Block120Value1 := recoveredBlock27Block63Block120Arg1.
    recoveredBlock27Block63Block120Value2 := (self) readOperatorAssertT: (recoveredBlock27Block63Block120Value1).
    recoveredBlock27Block63Block120Value3 := recoveredBlock27Block63Block120Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block120Value3.
    recoveredBlock27Block63Block120Value4 := (recoveredBlock27Block63Block120Value0) add: (recoveredBlock27Block63Block120Value2).
    recoveredBlock27Block63Block120Value4
].
    recoveredBlock27Block63Value4 := [:recoveredBlock27Block63Block142Arg1 | 
    | recoveredBlock27Block63Block142Value0 recoveredBlock27Block63Block142Value1 recoveredBlock27Block63Block142Value2 recoveredBlock27Block63Block142Value3 recoveredBlock27Block63Block142Value4 |
    recoveredBlock27Block63Block142Value0 := recoveredLocal3.
    recoveredBlock27Block63Block142Value1 := recoveredBlock27Block63Block142Arg1.
    recoveredBlock27Block63Block142Value2 := (self) readControlT: (recoveredBlock27Block63Block142Value1).
    recoveredBlock27Block63Block142Value3 := recoveredBlock27Block63Block142Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block142Value3.
    recoveredBlock27Block63Block142Value4 := (recoveredBlock27Block63Block142Value0) add: (recoveredBlock27Block63Block142Value2).
    recoveredBlock27Block63Block142Value4
].
    recoveredBlock27Block63Value5 := [:recoveredBlock27Block63Block164Arg1 | 
    | recoveredBlock27Block63Block164Value0 recoveredBlock27Block63Block164Value1 recoveredBlock27Block63Block164Value2 recoveredBlock27Block63Block164Value3 recoveredBlock27Block63Block164Value4 |
    recoveredBlock27Block63Block164Value0 := recoveredLocal3.
    recoveredBlock27Block63Block164Value1 := recoveredBlock27Block63Block164Arg1.
    recoveredBlock27Block63Block164Value2 := (self) readControlRteAccessT: (recoveredBlock27Block63Block164Value1).
    recoveredBlock27Block63Block164Value3 := recoveredBlock27Block63Block164Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block164Value3.
    recoveredBlock27Block63Block164Value4 := (recoveredBlock27Block63Block164Value0) add: (recoveredBlock27Block63Block164Value2).
    recoveredBlock27Block63Block164Value4
].
    recoveredBlock27Block63Value6 := [:recoveredBlock27Block63Block186Arg1 | 
    | recoveredBlock27Block63Block186Value0 recoveredBlock27Block63Block186Value1 recoveredBlock27Block63Block186Value2 recoveredBlock27Block63Block186Value3 recoveredBlock27Block63Block186Value4 |
    recoveredBlock27Block63Block186Value0 := recoveredLocal3.
    recoveredBlock27Block63Block186Value1 := recoveredBlock27Block63Block186Arg1.
    recoveredBlock27Block63Block186Value2 := (self) readControlRteInvokeT: (recoveredBlock27Block63Block186Value1).
    recoveredBlock27Block63Block186Value3 := recoveredBlock27Block63Block186Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block186Value3.
    recoveredBlock27Block63Block186Value4 := (recoveredBlock27Block63Block186Value0) add: (recoveredBlock27Block63Block186Value2).
    recoveredBlock27Block63Block186Value4
].
    recoveredBlock27Block63Value7 := [:recoveredBlock27Block63Block208Arg1 | 
    | recoveredBlock27Block63Block208Value0 recoveredBlock27Block63Block208Value1 recoveredBlock27Block63Block208Value2 recoveredBlock27Block63Block208Value3 recoveredBlock27Block63Block208Value4 |
    recoveredBlock27Block63Block208Value0 := recoveredLocal3.
    recoveredBlock27Block63Block208Value1 := recoveredBlock27Block63Block208Arg1.
    recoveredBlock27Block63Block208Value2 := (self) readLiteralT: (recoveredBlock27Block63Block208Value1).
    recoveredBlock27Block63Block208Value3 := recoveredBlock27Block63Block208Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block208Value3.
    recoveredBlock27Block63Block208Value4 := (recoveredBlock27Block63Block208Value0) add: (recoveredBlock27Block63Block208Value2).
    recoveredBlock27Block63Block208Value4
].
    recoveredBlock27Block63Value8 := [:recoveredBlock27Block63Block230Arg1 | 
    | recoveredBlock27Block63Block230Value0 recoveredBlock27Block63Block230Value1 recoveredBlock27Block63Block230Value2 recoveredBlock27Block63Block230Value3 recoveredBlock27Block63Block230Value4 |
    recoveredBlock27Block63Block230Value0 := recoveredLocal3.
    recoveredBlock27Block63Block230Value1 := recoveredBlock27Block63Block230Arg1.
    recoveredBlock27Block63Block230Value2 := (self) readSimpleElementT: (recoveredBlock27Block63Block230Value1).
    recoveredBlock27Block63Block230Value3 := recoveredBlock27Block63Block230Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block230Value3.
    recoveredBlock27Block63Block230Value4 := (recoveredBlock27Block63Block230Value0) add: (recoveredBlock27Block63Block230Value2).
    recoveredBlock27Block63Block230Value4
].
    recoveredBlock27Block63Value9 := [:recoveredBlock27Block63Block252Arg1 | 
    | recoveredBlock27Block63Block252Value0 recoveredBlock27Block63Block252Value1 recoveredBlock27Block63Block252Value2 recoveredBlock27Block63Block252Value3 recoveredBlock27Block63Block252Value4 |
    recoveredBlock27Block63Block252Value0 := recoveredLocal3.
    recoveredBlock27Block63Block252Value1 := recoveredBlock27Block63Block252Arg1.
    recoveredBlock27Block63Block252Value2 := (self) readResourceT: (recoveredBlock27Block63Block252Value1).
    recoveredBlock27Block63Block252Value3 := recoveredBlock27Block63Block252Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block252Value3.
    recoveredBlock27Block63Block252Value4 := (recoveredBlock27Block63Block252Value0) add: (recoveredBlock27Block63Block252Value2).
    recoveredBlock27Block63Block252Value4
].
    recoveredBlock27Block63Value10 := [:recoveredBlock27Block63Block274Arg1 | 
    | recoveredBlock27Block63Block274Value0 recoveredBlock27Block63Block274Value1 recoveredBlock27Block63Block274Value2 recoveredBlock27Block63Block274Value3 recoveredBlock27Block63Block274Value4 |
    recoveredBlock27Block63Block274Value0 := recoveredLocal3.
    recoveredBlock27Block63Block274Value1 := recoveredBlock27Block63Block274Arg1.
    recoveredBlock27Block63Block274Value2 := (self) readImplementationCastT: (recoveredBlock27Block63Block274Value1).
    recoveredBlock27Block63Block274Value3 := recoveredBlock27Block63Block274Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block274Value3.
    recoveredBlock27Block63Block274Value4 := (recoveredBlock27Block63Block274Value0) add: (recoveredBlock27Block63Block274Value2).
    recoveredBlock27Block63Block274Value4
].
    recoveredBlock27Block63Value11 := [:recoveredBlock27Block63Block296Arg1 | 
    | recoveredBlock27Block63Block296Value0 recoveredBlock27Block63Block296Value1 recoveredBlock27Block63Block296Value2 recoveredBlock27Block63Block296Value3 recoveredBlock27Block63Block296Value4 |
    recoveredBlock27Block63Block296Value0 := recoveredLocal3.
    recoveredBlock27Block63Block296Value1 := recoveredBlock27Block63Block296Arg1.
    recoveredBlock27Block63Block296Value2 := (self) readComplexElementT: (recoveredBlock27Block63Block296Value1).
    recoveredBlock27Block63Block296Value3 := recoveredBlock27Block63Block296Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block296Value3.
    recoveredBlock27Block63Block296Value4 := (recoveredBlock27Block63Block296Value0) add: (recoveredBlock27Block63Block296Value2).
    recoveredBlock27Block63Block296Value4
].
    recoveredBlock27Block63Value12 := [:recoveredBlock27Block63Block318Arg1 | 
    | recoveredBlock27Block63Block318Value0 recoveredBlock27Block63Block318Value1 recoveredBlock27Block63Block318Value2 recoveredBlock27Block63Block318Value3 recoveredBlock27Block63Block318Value4 |
    recoveredBlock27Block63Block318Value0 := recoveredLocal1.
    recoveredBlock27Block63Block318Value1 := recoveredBlock27Block63Block318Arg1.
    recoveredBlock27Block63Block318Value2 := (self) readComment: (recoveredBlock27Block63Block318Value1).
    recoveredBlock27Block63Block318Value3 := recoveredBlock27Block63Block318Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block318Value3.
    recoveredBlock27Block63Block318Value4 := (recoveredBlock27Block63Block318Value0) add: (recoveredBlock27Block63Block318Value2).
    recoveredBlock27Block63Block318Value4
].
    recoveredBlock27Block63Value13 := [:recoveredBlock27Block63Block340Arg1 | 
    | recoveredBlock27Block63Block340Value0 recoveredBlock27Block63Block340Value1 recoveredBlock27Block63Block340Value2 recoveredBlock27Block63Block340Value3 recoveredBlock27Block63Block340Value4 |
    recoveredBlock27Block63Block340Value0 := recoveredLocal2.
    recoveredBlock27Block63Block340Value1 := recoveredBlock27Block63Block340Arg1.
    recoveredBlock27Block63Block340Value2 := (self) readConnectionT: (recoveredBlock27Block63Block340Value1).
    recoveredBlock27Block63Block340Value3 := recoveredBlock27Block63Block340Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block340Value3.
    recoveredBlock27Block63Block340Value4 := (recoveredBlock27Block63Block340Value0) add: (recoveredBlock27Block63Block340Value2).
    recoveredBlock27Block63Block340Value4
].
    recoveredBlock27Block63Value14 := [:recoveredBlock27Block63Block362Arg1 | 
    | recoveredBlock27Block63Block362Value0 recoveredBlock27Block63Block362Value1 recoveredBlock27Block63Block362Value2 recoveredBlock27Block63Block362Value3 recoveredBlock27Block63Block362Value4 recoveredBlock27Block63Block362Value5 recoveredBlock27Block63Block362Value6 |
    recoveredBlock27Block63Block362Value0 := recoveredLocal3.
    recoveredBlock27Block63Block362Value1 := recoveredBlock27Block63Block362Arg1.
    recoveredBlock27Block63Block362Value2 := SGHierarchyGODB.
    recoveredBlock27Block63Block362Value3 := (recoveredBlock27Block63Block362Value2) create.
    recoveredBlock27Block63Block362Value4 := (self) readHierarchyT: (recoveredBlock27Block63Block362Value1) dbObject: (recoveredBlock27Block63Block362Value3).
    recoveredBlock27Block63Block362Value5 := recoveredBlock27Block63Block362Value4.
    recoveredBlock27Local1 := recoveredBlock27Block63Block362Value5.
    recoveredBlock27Block63Block362Value6 := (recoveredBlock27Block63Block362Value0) add: (recoveredBlock27Block63Block362Value4).
    recoveredBlock27Block63Block362Value6
].
    recoveredBlock27Block63Value15 := [:recoveredBlock27Block63Block388Arg1 | 
    | recoveredBlock27Block63Block388Value0 recoveredBlock27Block63Block388Value1 recoveredBlock27Block63Block388Value2 recoveredBlock27Block63Block388Value3 recoveredBlock27Block63Block388Value4 recoveredBlock27Block63Block388Value5 recoveredBlock27Block63Block388Value6 |
    recoveredBlock27Block63Block388Value0 := recoveredLocal3.
    recoveredBlock27Block63Block388Value1 := recoveredBlock27Block63Block388Arg1.
    recoveredBlock27Block63Block388Value2 := SGStatementBlockGODB.
    recoveredBlock27Block63Block388Value3 := (recoveredBlock27Block63Block388Value2) create.
    recoveredBlock27Block63Block388Value4 := (self) readHierarchyT: (recoveredBlock27Block63Block388Value1) dbObject: (recoveredBlock27Block63Block388Value3).
    recoveredBlock27Block63Block388Value5 := recoveredBlock27Block63Block388Value4.
    recoveredBlock27Local1 := recoveredBlock27Block63Block388Value5.
    recoveredBlock27Block63Block388Value6 := (recoveredBlock27Block63Block388Value0) add: (recoveredBlock27Block63Block388Value4).
    recoveredBlock27Block63Block388Value6
].
    recoveredBlock27Block63Value16 := [:recoveredBlock27Block63Block414Arg1 | 
    | recoveredBlock27Block63Block414Value0 recoveredBlock27Block63Block414Value1 recoveredBlock27Block63Block414Value2 recoveredBlock27Block63Block414Value3 recoveredBlock27Block63Block414Value4 |
    recoveredBlock27Block63Block414Value0 := recoveredLocal3.
    recoveredBlock27Block63Block414Value1 := recoveredBlock27Block63Block414Arg1.
    recoveredBlock27Block63Block414Value2 := (self) readHierarchyConnector: (recoveredBlock27Block63Block414Value1).
    recoveredBlock27Block63Block414Value3 := recoveredBlock27Block63Block414Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block414Value3.
    recoveredBlock27Block63Block414Value4 := (recoveredBlock27Block63Block414Value0) add: (recoveredBlock27Block63Block414Value2).
    recoveredBlock27Block63Block414Value4
].
    recoveredBlock27Block63Value17 := [:recoveredBlock27Block63Block436Arg1 | 
    | recoveredBlock27Block63Block436Value0 recoveredBlock27Block63Block436Value1 recoveredBlock27Block63Block436Value2 recoveredBlock27Block63Block436Value3 recoveredBlock27Block63Block436Value4 |
    recoveredBlock27Block63Block436Value0 := recoveredLocal3.
    recoveredBlock27Block63Block436Value1 := recoveredBlock27Block63Block436Arg1.
    recoveredBlock27Block63Block436Value2 := (self) readStateT: (recoveredBlock27Block63Block436Value1).
    recoveredBlock27Block63Block436Value3 := recoveredBlock27Block63Block436Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block436Value3.
    recoveredBlock27Block63Block436Value4 := (recoveredBlock27Block63Block436Value0) add: (recoveredBlock27Block63Block436Value2).
    recoveredBlock27Block63Block436Value4
].
    recoveredBlock27Block63Value18 := [:recoveredBlock27Block63Block458Arg1 | 
    | recoveredBlock27Block63Block458Value0 recoveredBlock27Block63Block458Value1 recoveredBlock27Block63Block458Value2 recoveredBlock27Block63Block458Value3 recoveredBlock27Block63Block458Value4 |
    recoveredBlock27Block63Block458Value0 := recoveredLocal3.
    recoveredBlock27Block63Block458Value1 := recoveredBlock27Block63Block458Arg1.
    recoveredBlock27Block63Block458Value2 := (self) readHierarchyStateT: (recoveredBlock27Block63Block458Value1).
    recoveredBlock27Block63Block458Value3 := recoveredBlock27Block63Block458Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block458Value3.
    recoveredBlock27Block63Block458Value4 := (recoveredBlock27Block63Block458Value0) add: (recoveredBlock27Block63Block458Value2).
    recoveredBlock27Block63Block458Value4
].
    recoveredBlock27Block63Value19 := [:recoveredBlock27Block63Block480Arg1 | 
    | recoveredBlock27Block63Block480Value0 recoveredBlock27Block63Block480Value1 recoveredBlock27Block63Block480Value2 recoveredBlock27Block63Block480Value3 recoveredBlock27Block63Block480Value4 |
    recoveredBlock27Block63Block480Value0 := recoveredLocal3.
    recoveredBlock27Block63Block480Value1 := recoveredBlock27Block63Block480Arg1.
    recoveredBlock27Block63Block480Value2 := (self) readJunctionT: (recoveredBlock27Block63Block480Value1).
    recoveredBlock27Block63Block480Value3 := recoveredBlock27Block63Block480Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block480Value3.
    recoveredBlock27Block63Block480Value4 := (recoveredBlock27Block63Block480Value0) add: (recoveredBlock27Block63Block480Value2).
    recoveredBlock27Block63Block480Value4
].
    recoveredBlock27Block63Value20 := [:recoveredBlock27Block63Block502Arg1 | 
    | recoveredBlock27Block63Block502Value0 recoveredBlock27Block63Block502Value1 recoveredBlock27Block63Block502Value2 recoveredBlock27Block63Block502Value3 recoveredBlock27Block63Block502Value4 |
    recoveredBlock27Block63Block502Value0 := recoveredLocal2.
    recoveredBlock27Block63Block502Value1 := recoveredBlock27Block63Block502Arg1.
    recoveredBlock27Block63Block502Value2 := (self) readTransitionT: (recoveredBlock27Block63Block502Value1).
    recoveredBlock27Block63Block502Value3 := recoveredBlock27Block63Block502Value2.
    recoveredBlock27Local1 := recoveredBlock27Block63Block502Value3.
    recoveredBlock27Block63Block502Value4 := (recoveredBlock27Block63Block502Value0) add: (recoveredBlock27Block63Block502Value2).
    recoveredBlock27Block63Block502Value4
].
    recoveredBlock27Block63Value21 := handler.
    (recoveredBlock27Block63Value0) choice: ('Operator') do: (recoveredBlock27Block63Value1) choice: ('OperatorIntTypeConv') do: (recoveredBlock27Block63Value2) choice: ('OperatorAssert') do: (recoveredBlock27Block63Value3) choice: ('Control') do: (recoveredBlock27Block63Value4) choice: ('ControlRteAccess') do: (recoveredBlock27Block63Value5) choice: ('ControlRteInvoke') do: (recoveredBlock27Block63Value6) choice: ('Literal') do: (recoveredBlock27Block63Value7) choice: ('SimpleElement') do: (recoveredBlock27Block63Value8) choice: ('Resource') do: (recoveredBlock27Block63Value9) choice: ('ImplementationCast') do: (recoveredBlock27Block63Value10) choice: ('ComplexElement') do: (recoveredBlock27Block63Value11) choice: ('Comment') do: (recoveredBlock27Block63Value12) choice: ('Connection') do: (recoveredBlock27Block63Value13) choice: ('Hierarchy') do: (recoveredBlock27Block63Value14) choice: ('StatementBlock') do: (recoveredBlock27Block63Value15) choice: ('HierarchyConnector') do: (recoveredBlock27Block63Value16) choice: ('State') do: (recoveredBlock27Block63Value17) choice: ('HierarchyState') do: (recoveredBlock27Block63Value18) choice: ('Junction') do: (recoveredBlock27Block63Value19) choice: ('Transition') do: (recoveredBlock27Block63Value20) ifNot: (recoveredBlock27Block63Value21).
    recoveredBlock27Block63Value22 := recoveredBlock27Local1.
    recoveredBlock27Block63Value23 := recoveredBlock27Local2.
    recoveredBlock27Block63Value24 := (recoveredBlock27Block63Value22) setCustomerDataInfo: (recoveredBlock27Block63Value23).
    recoveredBlock27Block63Value24
].
            recoveredBlock27PC := 536.
        ].
        recoveredBlock27Step = 536 ifTrue: [
            recoveredBlock27Stack2 := ElementNotFound.
            recoveredBlock27PC := 538.
        ].
        recoveredBlock27Step = 538 ifTrue: [
            recoveredBlock27Stack3 := [:block28120b2cArg1 | 
    | block28120b2cValue0 block28120b2cValue1 |
    block28120b2cValue0 := block28120b2cArg1.
    block28120b2cValue1 := (block28120b2cValue0) exitWith: (nil).
    block28120b2cValue1
].
            recoveredBlock27PC := 540.
        ].
        recoveredBlock27Step = 540 ifTrue: [
            recoveredBlock27PC := 549.
        ].
        recoveredBlock27Step = 549 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) when: (recoveredBlock27Stack2) do: (recoveredBlock27Stack3).
            recoveredBlock27PC := 551.
        ].
        recoveredBlock27Step = 551 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 552.
        ].
        recoveredBlock27Step = 552 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 553.
        ].
        recoveredBlock27Step = 553 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack3.
            recoveredBlock27PC := 556.
        ].
        recoveredBlock27Step = 556 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 559.
        ].
        recoveredBlock27Step = 559 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack1) blocks: (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) connections: (recoveredStack2).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 614] ifFalse: [recoveredPC := 629].
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            (recoveredStack1) others: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack0) fixupConnections: (recoveredStack1) blocks: (recoveredStack2).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063f104; bytecode file offset 0xf3bb04"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readHierarchyT: recoveredArg1 dbObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 |
    recoveredValue0 := SGGraphicsBlockDB.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) getBoolean: ('nameVisibility') default: (true).
    (recoveredValue3) actualNameVisibility: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) getNMToken: ('name') default: ('').
    (recoveredValue6) name: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) own.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) getGraphicOID: ('graphicOID').
    (recoveredValue10) at: (1) put: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (self) readViewInfoT: (recoveredBlock64Value1).
    recoveredBlock64Value3 := (recoveredBlock64Value0) attributedViewNames: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
    (recoveredValue13) optional: ('ViewInfo') do: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := recoveredLocal2.
    recoveredBlock87Value1 := recoveredBlock87Arg1.
    recoveredBlock87Value2 := (self) readLineStyleT: (recoveredBlock87Value1).
    recoveredBlock87Value3 := (recoveredBlock87Value0) lineStyle: (recoveredBlock87Value2).
    recoveredBlock87Value3
].
    (recoveredValue15) optional: ('LineStyle') do: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 |
    recoveredBlock111Value0 := recoveredLocal2.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value1) asColor.
    recoveredBlock111Value3 := (recoveredBlock111Value0) xmlFillColor: (recoveredBlock111Value2).
    recoveredBlock111Value3
].
    (recoveredValue17) optional: ('FillColor') do: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 |
    recoveredBlock134Value0 := recoveredLocal2.
    recoveredBlock134Value1 := recoveredBlock134Arg1.
    recoveredBlock134Value2 := (recoveredBlock134Value1) asSize.
    recoveredBlock134Value3 := (recoveredBlock134Value0) size: (recoveredBlock134Value2).
    recoveredBlock134Value3
].
    recoveredValue21 := handler.
    (recoveredValue19) required: ('Size') do: (recoveredValue20) ifNot: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 |
    recoveredBlock159Value0 := recoveredLocal2.
    recoveredBlock159Value1 := recoveredBlock159Arg1.
    recoveredBlock159Value2 := (recoveredBlock159Value1) asPoint.
    recoveredBlock159Value3 := (recoveredBlock159Value0) position: (recoveredBlock159Value2).
    recoveredBlock159Value3
].
    recoveredValue24 := handler.
    (recoveredValue22) required: ('Position') do: (recoveredValue23) ifNot: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) getGraphicOID: ('drawingOrder') default: (nil).
    recoveredValue27 := [:recoveredBlock188Arg1 | 
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 |
    recoveredBlock188Value0 := recoveredLocal2.
    recoveredBlock188Value1 := recoveredBlock188Arg1.
    recoveredBlock188Value2 := (recoveredBlock188Value0) drawingOrder: (recoveredBlock188Value1).
    recoveredBlock188Value2
].
    (recoveredValue26) ifNotNil: (recoveredValue27).
    recoveredValue28 := Dictionary.
    recoveredValue29 := (recoveredValue28) new.
    recoveredLocal1 := recoveredValue29.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := [:recoveredBlock215Arg1 | 
    | recoveredBlock215Stack0 recoveredBlock215Stack1 recoveredBlock215Stack2 recoveredBlock215Stack3 recoveredBlock215Stack4 recoveredBlock215Stack5 recoveredBlock215PC recoveredBlock215Step recoveredBlock215Done recoveredBlock215Result |
    recoveredBlock215Stack0 := self.
    recoveredBlock215PC := 222.
    recoveredBlock215Done := false.
    [recoveredBlock215Done not] whileTrue: [
        recoveredBlock215Step := recoveredBlock215PC.
        recoveredBlock215Step = 222 ifTrue: [
            recoveredBlock215Stack1 := recoveredBlock215Arg1.
            recoveredBlock215PC := 223.
        ].
        recoveredBlock215Step = 223 ifTrue: [
            recoveredBlock215Stack2 := 'BlockInterface'.
            recoveredBlock215PC := 225.
        ].
        recoveredBlock215Step = 225 ifTrue: [
            recoveredBlock215Stack3 := [:recoveredBlock215Block225Arg1 | 
    | recoveredBlock215Block225Local1 recoveredBlock215Block225Value0 recoveredBlock215Block225Value1 recoveredBlock215Block225Value2 recoveredBlock215Block225Value3 recoveredBlock215Block225Value4 recoveredBlock215Block225Value5 recoveredBlock215Block225Value6 recoveredBlock215Block225Value7 recoveredBlock215Block225Value8 |
    recoveredBlock215Block225Value0 := recoveredBlock215Block225Arg1.
    recoveredBlock215Block225Value1 := [:recoveredBlock215Block225Block235Arg1 | 
    | recoveredBlock215Block225Block235Value0 recoveredBlock215Block225Block235Value1 |
    recoveredBlock215Block225Block235Value0 := recoveredBlock215Block225Block235Arg1.
    recoveredBlock215Block225Block235Value1 := (self) readBlockConnectorT: (recoveredBlock215Block225Block235Value0).
    recoveredBlock215Block225Block235Value1
].
    recoveredBlock215Block225Value2 := handler.
    recoveredBlock215Block225Value3 := (recoveredBlock215Block225Value0) required: ('ExternalConnector') do: (recoveredBlock215Block225Value1) ifNot: (recoveredBlock215Block225Value2).
    recoveredBlock215Block225Local1 := recoveredBlock215Block225Value3.
    recoveredBlock215Block225Value4 := recoveredLocal1.
    recoveredBlock215Block225Value5 := recoveredBlock215Block225Arg1.
    recoveredBlock215Block225Value6 := (recoveredBlock215Block225Value5) getString: ('name').
    recoveredBlock215Block225Value7 := recoveredBlock215Block225Local1.
    recoveredBlock215Block225Value8 := (recoveredBlock215Block225Value4) at: (recoveredBlock215Block225Value6) put: (recoveredBlock215Block225Value7).
    recoveredBlock215Block225Value8
].
            recoveredBlock215PC := 264.
        ].
        recoveredBlock215Step = 264 ifTrue: [
            (recoveredBlock215Stack1) multiple: (recoveredBlock215Stack2) do: (recoveredBlock215Stack3).
            recoveredBlock215PC := 266.
        ].
        recoveredBlock215Step = 266 ifTrue: [
            recoveredBlock215Stack1 := nil.
            recoveredBlock215PC := 267.
        ].
        recoveredBlock215Step = 267 ifTrue: [
            recoveredBlock215Stack2 := recoveredArg2.
            recoveredBlock215PC := 270.
        ].
        recoveredBlock215Step = 270 ifTrue: [
            recoveredBlock215Stack2 := (recoveredBlock215Stack2) class.
            recoveredBlock215PC := 272.
        ].
        recoveredBlock215Step = 272 ifTrue: [
            recoveredBlock215Stack3 := SGStatementBlockGODB.
            recoveredBlock215PC := 274.
        ].
        recoveredBlock215Step = 274 ifTrue: [
            recoveredBlock215Stack2 := (recoveredBlock215Stack2) = (recoveredBlock215Stack3).
            recoveredBlock215PC := 275.
        ].
        recoveredBlock215Step = 275 ifTrue: [
            (recoveredBlock215Stack2) ifTrue: [recoveredBlock215PC := 278] ifFalse: [recoveredBlock215PC := 429].
        ].
        recoveredBlock215Step = 278 ifTrue: [
            recoveredBlock215PC := 279.
        ].
        recoveredBlock215Step = 279 ifTrue: [
            recoveredBlock215Stack1 := recoveredBlock215Arg1.
            recoveredBlock215PC := 280.
        ].
        recoveredBlock215Step = 280 ifTrue: [
            recoveredBlock215Stack2 := 'MethodPort'.
            recoveredBlock215PC := 282.
        ].
        recoveredBlock215Step = 282 ifTrue: [
            recoveredBlock215Stack3 := [:recoveredBlock215Block282Arg1 | 
    | recoveredBlock215Block282Local1 recoveredBlock215Block282Local2 recoveredBlock215Block282Local3 recoveredBlock215Block282Stack0 recoveredBlock215Block282Stack1 recoveredBlock215Block282Stack2 recoveredBlock215Block282Stack3 recoveredBlock215Block282Stack4 recoveredBlock215Block282Stack5 recoveredBlock215Block282Stack6 recoveredBlock215Block282PC recoveredBlock215Block282Step recoveredBlock215Block282Done recoveredBlock215Block282Result |
    recoveredBlock215Block282Stack0 := self.
    recoveredBlock215Block282PC := 288.
    recoveredBlock215Block282Done := false.
    [recoveredBlock215Block282Done not] whileTrue: [
        recoveredBlock215Block282Step := recoveredBlock215Block282PC.
        recoveredBlock215Block282Step = 288 ifTrue: [
            recoveredBlock215Block282Stack1 := Dictionary.
            recoveredBlock215Block282PC := 290.
        ].
        recoveredBlock215Block282Step = 290 ifTrue: [
            recoveredBlock215Block282Stack1 := (recoveredBlock215Block282Stack1) new.
            recoveredBlock215Block282PC := 292.
        ].
        recoveredBlock215Block282Step = 292 ifTrue: [
            recoveredBlock215Block282Local1 := recoveredBlock215Block282Stack1.
            recoveredBlock215Block282PC := 295.
        ].
        recoveredBlock215Block282Step = 295 ifTrue: [
            recoveredBlock215Block282Stack1 := SGAliasMethod.
            recoveredBlock215Block282PC := 297.
        ].
        recoveredBlock215Block282Step = 297 ifTrue: [
            recoveredBlock215Block282Stack2 := SGReservedNames.
            recoveredBlock215Block282PC := 299.
        ].
        recoveredBlock215Block282Step = 299 ifTrue: [
            recoveredBlock215Block282Stack2 := (recoveredBlock215Block282Stack2) executeMethod.
            recoveredBlock215Block282PC := 301.
        ].
        recoveredBlock215Block282Step = 301 ifTrue: [
            recoveredBlock215Block282Stack1 := (recoveredBlock215Block282Stack1) createWithName: (recoveredBlock215Block282Stack2).
            recoveredBlock215Block282PC := 303.
        ].
        recoveredBlock215Block282Step = 303 ifTrue: [
            recoveredBlock215Block282Local2 := recoveredBlock215Block282Stack1.
            recoveredBlock215Block282PC := 306.
        ].
        recoveredBlock215Block282Step = 306 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredBlock215Block282Arg1.
            recoveredBlock215Block282PC := 309.
        ].
        recoveredBlock215Block282Step = 309 ifTrue: [
            recoveredBlock215Block282Stack2 := 'SequenceCall'.
            recoveredBlock215Block282PC := 311.
        ].
        recoveredBlock215Block282Step = 311 ifTrue: [
            recoveredBlock215Block282Stack3 := [:recoveredBlock215Block282Block311Arg1 | 
    | recoveredBlock215Block282Block311Value0 recoveredBlock215Block282Block311Value1 recoveredBlock215Block282Block311Value2 |
    recoveredBlock215Block282Block311Value0 := recoveredBlock215Block282Block311Arg1.
    recoveredBlock215Block282Block311Value1 := (self) readSequenceCallT: (recoveredBlock215Block282Block311Value0).
    recoveredBlock215Block282Block311Value2 := recoveredBlock215Block282Block311Value1.
    recoveredBlock215Block282Local3 := recoveredBlock215Block282Block311Value2.
    recoveredBlock215Block282Block311Value1
].
            recoveredBlock215Block282PC := 326.
        ].
        recoveredBlock215Block282Step = 326 ifTrue: [
            recoveredBlock215Block282Stack4 := handler.
            recoveredBlock215Block282PC := 328.
        ].
        recoveredBlock215Block282Step = 328 ifTrue: [
            (recoveredBlock215Block282Stack1) required: (recoveredBlock215Block282Stack2) do: (recoveredBlock215Block282Stack3) ifNot: (recoveredBlock215Block282Stack4).
            recoveredBlock215Block282PC := 331.
        ].
        recoveredBlock215Block282Step = 331 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredBlock215Block282Arg1.
            recoveredBlock215Block282PC := 334.
        ].
        recoveredBlock215Block282Step = 334 ifTrue: [
            recoveredBlock215Block282Stack2 := 'TriggerPort'.
            recoveredBlock215Block282PC := 336.
        ].
        recoveredBlock215Block282Step = 336 ifTrue: [
            recoveredBlock215Block282Stack3 := [:recoveredBlock215Block282Block336Arg1 | 
    | recoveredBlock215Block282Block336Value0 recoveredBlock215Block282Block336Value1 recoveredBlock215Block282Block336Value2 recoveredBlock215Block282Block336Value3 recoveredBlock215Block282Block336Value4 recoveredBlock215Block282Block336Value5 |
    recoveredBlock215Block282Block336Value0 := recoveredBlock215Block282Local1.
    recoveredBlock215Block282Block336Value1 := SGReservedNames.
    recoveredBlock215Block282Block336Value2 := (recoveredBlock215Block282Block336Value1) executeMethod.
    recoveredBlock215Block282Block336Value3 := recoveredBlock215Block282Block336Arg1.
    recoveredBlock215Block282Block336Value4 := (self) readPin: (recoveredBlock215Block282Block336Value3) directionAttr: ('direction').
    recoveredBlock215Block282Block336Value5 := (recoveredBlock215Block282Block336Value0) at: (recoveredBlock215Block282Block336Value2) put: (recoveredBlock215Block282Block336Value4).
    recoveredBlock215Block282Block336Value5
].
            recoveredBlock215Block282PC := 358.
        ].
        recoveredBlock215Block282Step = 358 ifTrue: [
            recoveredBlock215Block282Stack4 := handler.
            recoveredBlock215Block282PC := 360.
        ].
        recoveredBlock215Block282Step = 360 ifTrue: [
            (recoveredBlock215Block282Stack1) required: (recoveredBlock215Block282Stack2) do: (recoveredBlock215Block282Stack3) ifNot: (recoveredBlock215Block282Stack4).
            recoveredBlock215Block282PC := 363.
        ].
        recoveredBlock215Block282Step = 363 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredBlock215Block282Arg1.
            recoveredBlock215Block282PC := 366.
        ].
        recoveredBlock215Block282Step = 366 ifTrue: [
            recoveredBlock215Block282Stack2 := handler.
            recoveredBlock215Block282PC := 368.
        ].
        recoveredBlock215Block282Step = 368 ifTrue: [
            (recoveredBlock215Block282Stack1) doneIfNot: (recoveredBlock215Block282Stack2).
            recoveredBlock215Block282PC := 370.
        ].
        recoveredBlock215Block282Step = 370 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredLocal2.
            recoveredBlock215Block282PC := 373.
        ].
        recoveredBlock215Block282Step = 373 ifTrue: [
            recoveredBlock215Block282Stack2 := Dictionary.
            recoveredBlock215Block282PC := 375.
        ].
        recoveredBlock215Block282Step = 375 ifTrue: [
            recoveredBlock215Block282Stack2 := (recoveredBlock215Block282Stack2) new.
            recoveredBlock215Block282PC := 377.
        ].
        recoveredBlock215Block282Step = 377 ifTrue: [
            (recoveredBlock215Block282Stack1) selectorPorts: (recoveredBlock215Block282Stack2).
            recoveredBlock215Block282PC := 379.
        ].
        recoveredBlock215Block282Step = 379 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredLocal2.
            recoveredBlock215Block282PC := 382.
        ].
        recoveredBlock215Block282Step = 382 ifTrue: [
            recoveredBlock215Block282Stack1 := (recoveredBlock215Block282Stack1) selectorPorts.
            recoveredBlock215Block282PC := 384.
        ].
        recoveredBlock215Block282Step = 384 ifTrue: [
            recoveredBlock215Block282Stack2 := SGReservedNames.
            recoveredBlock215Block282PC := 386.
        ].
        recoveredBlock215Block282Step = 386 ifTrue: [
            recoveredBlock215Block282Stack2 := (recoveredBlock215Block282Stack2) executeMethod.
            recoveredBlock215Block282PC := 388.
        ].
        recoveredBlock215Block282Step = 388 ifTrue: [
            recoveredBlock215Block282Stack3 := recoveredBlock215Block282Local1.
            recoveredBlock215Block282PC := 391.
        ].
        recoveredBlock215Block282Step = 391 ifTrue: [
            (recoveredBlock215Block282Stack1) at: (recoveredBlock215Block282Stack2) put: (recoveredBlock215Block282Stack3).
            recoveredBlock215Block282PC := 393.
        ].
        recoveredBlock215Block282Step = 393 ifTrue: [
            recoveredBlock215Block282Stack1 := nil.
            recoveredBlock215Block282PC := 394.
        ].
        recoveredBlock215Block282Step = 394 ifTrue: [
            recoveredBlock215Block282Stack2 := recoveredBlock215Block282Local3.
            recoveredBlock215Block282PC := 397.
        ].
        recoveredBlock215Block282Step = 397 ifTrue: [
            (recoveredBlock215Block282Stack2 == nil) ifTrue: [recoveredBlock215Block282PC := 423] ifFalse: [recoveredBlock215Block282PC := 400].
        ].
        recoveredBlock215Block282Step = 400 ifTrue: [
            recoveredBlock215Block282PC := 401.
        ].
        recoveredBlock215Block282Step = 401 ifTrue: [
            recoveredBlock215Block282Stack1 := recoveredLocal2.
            recoveredBlock215Block282PC := 404.
        ].
        recoveredBlock215Block282Step = 404 ifTrue: [
            recoveredBlock215Block282Stack2 := Dictionary.
            recoveredBlock215Block282PC := 406.
        ].
        recoveredBlock215Block282Step = 406 ifTrue: [
            recoveredBlock215Block282Stack2 := (recoveredBlock215Block282Stack2) new.
            recoveredBlock215Block282PC := 408.
        ].
        recoveredBlock215Block282Step = 408 ifTrue: [
            recoveredBlock215Block282Stack3 := recoveredBlock215Block282Stack2.
            recoveredBlock215Block282PC := 409.
        ].
        recoveredBlock215Block282Step = 409 ifTrue: [
            recoveredBlock215Block282Stack4 := SGReservedNames.
            recoveredBlock215Block282PC := 411.
        ].
        recoveredBlock215Block282Step = 411 ifTrue: [
            recoveredBlock215Block282Stack4 := (recoveredBlock215Block282Stack4) executeMethod.
            recoveredBlock215Block282PC := 413.
        ].
        recoveredBlock215Block282Step = 413 ifTrue: [
            recoveredBlock215Block282Stack5 := recoveredBlock215Block282Local3.
            recoveredBlock215Block282PC := 416.
        ].
        recoveredBlock215Block282Step = 416 ifTrue: [
            (recoveredBlock215Block282Stack3) at: (recoveredBlock215Block282Stack4) put: (recoveredBlock215Block282Stack5).
            recoveredBlock215Block282PC := 418.
        ].
        recoveredBlock215Block282Step = 418 ifTrue: [
            recoveredBlock215Block282Stack1 := (recoveredBlock215Block282Stack1) sequences: (recoveredBlock215Block282Stack2).
            recoveredBlock215Block282PC := 423.
        ].
        recoveredBlock215Block282Step = 423 ifTrue: [
            recoveredBlock215Block282Result := recoveredBlock215Block282Stack1.
            recoveredBlock215Block282Done := true.
        ].
    ].
    recoveredBlock215Block282Result
].
            recoveredBlock215PC := 424.
        ].
        recoveredBlock215Step = 424 ifTrue: [
            recoveredBlock215Stack4 := handler.
            recoveredBlock215PC := 426.
        ].
        recoveredBlock215Step = 426 ifTrue: [
            recoveredBlock215Stack1 := (recoveredBlock215Stack1) required: (recoveredBlock215Stack2) do: (recoveredBlock215Stack3) ifNot: (recoveredBlock215Stack4).
            recoveredBlock215PC := 429.
        ].
        recoveredBlock215Step = 429 ifTrue: [
            recoveredBlock215Result := recoveredBlock215Stack1.
            recoveredBlock215Done := true.
        ].
    ].
    recoveredBlock215Result
].
    recoveredValue32 := handler.
    (recoveredValue30) required: ('Interfaces') do: (recoveredValue31) ifNot: (recoveredValue32).
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    (recoveredValue33) pins: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := [:recoveredBlock452Arg1 | 
    | recoveredBlock452Value0 recoveredBlock452Value1 recoveredBlock452Value2 recoveredBlock452Value3 |
    recoveredBlock452Value0 := recoveredLocal2.
    recoveredBlock452Value1 := recoveredBlock452Arg1.
    recoveredBlock452Value2 := (recoveredBlock452Value1) asPoint.
    recoveredBlock452Value3 := (recoveredBlock452Value0) namePosition: (recoveredBlock452Value2).
    recoveredBlock452Value3
].
    recoveredValue37 := handler.
    (recoveredValue35) required: ('LabelPosition') do: (recoveredValue36) ifNot: (recoveredValue37).
    recoveredValue38 := ('Kli') == ('XMLImport').
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := [:recoveredBlock490Arg1 | 
    | recoveredBlock490Local1 recoveredBlock490Local2 recoveredBlock490Value0 recoveredBlock490Value1 recoveredBlock490Value2 recoveredBlock490Value3 recoveredBlock490Value4 recoveredBlock490Value5 recoveredBlock490Value6 recoveredBlock490Value7 recoveredBlock490Value8 recoveredBlock490Value9 recoveredBlock490Value10 recoveredBlock490Value11 recoveredBlock490Value12 recoveredBlock490Value13 recoveredBlock490Value14 recoveredBlock490Value15 recoveredBlock490Value16 recoveredBlock490Value17 recoveredBlock490Value18 recoveredBlock490Value19 recoveredBlock490Value20 recoveredBlock490Value21 |
    recoveredBlock490Value0 := recoveredBlock490Arg1.
    recoveredBlock490Value1 := [:recoveredBlock490Block502Arg1 | 
    | recoveredBlock490Block502Value0 recoveredBlock490Block502Value1 recoveredBlock490Block502Value2 |
    recoveredBlock490Block502Value0 := recoveredBlock490Block502Arg1.
    recoveredBlock490Block502Value1 := (recoveredBlock490Block502Value0) cData.
    recoveredBlock490Block502Value2 := recoveredBlock490Block502Value1.
    recoveredBlock490Local1 := recoveredBlock490Block502Value2.
    recoveredBlock490Block502Value1
].
    recoveredBlock490Value2 := handler.
    (recoveredBlock490Value0) required: ('IconFile') do: (recoveredBlock490Value1) ifNot: (recoveredBlock490Value2).
    recoveredBlock490Value3 := ('Kli') == ('XMLImport').
    recoveredBlock490Value4 := recoveredLocal2.
    recoveredBlock490Value5 := CgWinBMPFileFormat.
    recoveredBlock490Value6 := (recoveredBlock490Value5) new.
    recoveredBlock490Value7 := (recoveredBlock490Value6) initialize.
    recoveredBlock490Value8 := Util.
    recoveredBlock490Value9 := controller.
    recoveredBlock490Value10 := (recoveredBlock490Value9) currentFile.
    recoveredBlock490Value11 := (recoveredBlock490Value10) pathName.
    recoveredBlock490Value12 := recoveredBlock490Local1.
    recoveredBlock490Value13 := (recoveredBlock490Value11) , (recoveredBlock490Value12).
    recoveredBlock490Value14 := (recoveredBlock490Value8) checkFileName: (recoveredBlock490Value13).
    recoveredBlock490Value15 := (recoveredBlock490Value7) loadFromFile: (recoveredBlock490Value14).
    (recoveredBlock490Value4) iconDBImage: (recoveredBlock490Value15).
    recoveredBlock490Value16 := recoveredBlock490Arg1.
    recoveredBlock490Value17 := [:recoveredBlock490Block584Arg1 | 
    | recoveredBlock490Block584Value0 recoveredBlock490Block584Value1 recoveredBlock490Block584Value2 recoveredBlock490Block584Value3 recoveredBlock490Block584Value4 recoveredBlock490Block584Value5 recoveredBlock490Block584Value6 recoveredBlock490Block584Value7 |
    recoveredBlock490Block584Value0 := recoveredLocal2.
    recoveredBlock490Block584Value1 := (recoveredBlock490Block584Value0) icon.
    recoveredBlock490Block584Value2 := recoveredBlock490Block584Arg1.
    recoveredBlock490Block584Value3 := (recoveredBlock490Block584Value2) getNNInt: ('x').
    recoveredBlock490Block584Value4 := recoveredBlock490Block584Arg1.
    recoveredBlock490Block584Value5 := (recoveredBlock490Block584Value4) getNNInt: ('y').
    recoveredBlock490Block584Value6 := (recoveredBlock490Block584Value3) @ (recoveredBlock490Block584Value5).
    recoveredBlock490Block584Value7 := (recoveredBlock490Block584Value1) at: (2) put: (recoveredBlock490Block584Value6).
    recoveredBlock490Block584Value7
].
    recoveredBlock490Value18 := handler.
    (recoveredBlock490Value16) required: ('Size') do: (recoveredBlock490Value17) ifNot: (recoveredBlock490Value18).
    recoveredBlock490Value19 := recoveredLocal2.
    recoveredBlock490Value20 := (recoveredBlock490Value19) icon.
    recoveredBlock490Value21 := (recoveredBlock490Value20) at: (3) put: (true).
    recoveredBlock490Value21
].
    (recoveredValue39) optional: ('Icon') do: (recoveredValue40).
    recoveredValue41 := recoveredArg1.
    recoveredValue42 := [:recoveredBlock654Arg1 | 
    | recoveredBlock654Value0 recoveredBlock654Value1 recoveredBlock654Value2 |
    recoveredBlock654Value0 := recoveredBlock654Arg1.
    recoveredBlock654Value1 := recoveredLocal3.
    recoveredBlock654Value2 := (self) readDiagramElements: (recoveredBlock654Value0) block: (recoveredBlock654Value1).
    recoveredBlock654Value2
].
    recoveredValue43 := handler.
    (recoveredValue41) required: ('Contents') do: (recoveredValue42) ifNot: (recoveredValue43).
    recoveredValue44 := recoveredArg1.
    recoveredValue45 := handler.
    (recoveredValue44) doneIfNot: (recoveredValue45).
    recoveredValue46 := recoveredLocal3.
    recoveredValue47 := recoveredLocal2.
    (recoveredValue46) graphicBlock: (recoveredValue47).
    recoveredValue48 := recoveredLocal3.
    ^recoveredValue48
! !

"ASDBase.ic method 0x20673d7c; bytecode file offset 0xf707f0"
!ASDXMLImportStepSpecificationBase methodsFor: 'recovered'!
readLayoutT: recoveredArg1 newEl: recoveredArg2 protoRef: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'graphicOID'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) getGraphicOID: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Call_349597'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Layout'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalSchemaVersion.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := '6.2.0.0'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) asEtasVersion.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ASDBlockDiagramEditorOptions.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultFlexibleClassLayoutConversion.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredArg1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) getBoolean: ('flexibleCreated').
    recoveredBlock56Value2 := recoveredBlock56Value1.
    recoveredLocal1 := recoveredBlock56Value2.
    recoveredBlock56Value1
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 'flexibleCreated'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGOExtensions.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'hidePinNames'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) pinNameVisibility: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 'hideName'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) actualNameVisibility: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := 'hideClassName'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) classSymbolVisibility: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := 'hideIcon'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) iconVisibility: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'ViewInfo'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 recoveredBlock163Value2 recoveredBlock163Value3 |
    recoveredBlock163Value0 := recoveredArg2.
    recoveredBlock163Value1 := recoveredBlock163Arg1.
    recoveredBlock163Value2 := (self) readViewInfoT: (recoveredBlock163Value1).
    recoveredBlock163Value3 := (recoveredBlock163Value0) attributedViewNames: (recoveredBlock163Value2).
    recoveredBlock163Value3
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'LineStyle'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := [:recoveredBlock187Arg1 | 
    | recoveredBlock187Value0 recoveredBlock187Value1 recoveredBlock187Value2 recoveredBlock187Value3 |
    recoveredBlock187Value0 := recoveredArg2.
    recoveredBlock187Value1 := recoveredBlock187Arg1.
    recoveredBlock187Value2 := (self) readLineStyleT: (recoveredBlock187Value1).
    recoveredBlock187Value3 := (recoveredBlock187Value0) lineStyle: (recoveredBlock187Value2).
    recoveredBlock187Value3
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'FillColor'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := [:recoveredBlock211Arg1 | 
    | recoveredBlock211Value0 recoveredBlock211Value1 recoveredBlock211Value2 recoveredBlock211Value3 |
    recoveredBlock211Value0 := recoveredArg2.
    recoveredBlock211Value1 := recoveredBlock211Arg1.
    recoveredBlock211Value2 := (recoveredBlock211Value1) asColor.
    recoveredBlock211Value3 := (recoveredBlock211Value0) xmlFillColor: (recoveredBlock211Value2).
    recoveredBlock211Value3
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'drawingOrder'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGraphicOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 |
    recoveredBlock237Value0 := recoveredArg2.
    recoveredBlock237Value1 := recoveredBlock237Arg1.
    recoveredBlock237Value2 := (recoveredBlock237Value0) drawingOrder: (recoveredBlock237Value1).
    recoveredBlock237Value2
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := 'Position'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := [:recoveredBlock258Arg1 | 
    | recoveredBlock258Value0 recoveredBlock258Value1 recoveredBlock258Value2 recoveredBlock258Value3 |
    recoveredBlock258Value0 := recoveredArg2.
    recoveredBlock258Value1 := recoveredBlock258Arg1.
    recoveredBlock258Value2 := (recoveredBlock258Value1) asPoint.
    recoveredBlock258Value3 := (recoveredBlock258Value0) position: (recoveredBlock258Value2).
    recoveredBlock258Value3
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 'LabelPosition'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := [:recoveredBlock283Arg1 | 
    | recoveredBlock283Value0 recoveredBlock283Value1 recoveredBlock283Value2 recoveredBlock283Value3 recoveredBlock283Value4 |
    recoveredBlock283Value0 := recoveredArg2.
    recoveredBlock283Value1 := (recoveredBlock283Value0) block.
    recoveredBlock283Value2 := recoveredBlock283Arg1.
    recoveredBlock283Value3 := (recoveredBlock283Value2) asPoint.
    recoveredBlock283Value4 := (recoveredBlock283Value1) at: (3) put: (recoveredBlock283Value3).
    recoveredBlock283Value4
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'Interfaces'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Local1 recoveredBlock313Stack0 recoveredBlock313Stack1 recoveredBlock313Stack2 recoveredBlock313Stack3 recoveredBlock313Stack4 recoveredBlock313PC recoveredBlock313Step recoveredBlock313Done recoveredBlock313Result |
    recoveredBlock313Stack0 := self.
    recoveredBlock313PC := 320.
    recoveredBlock313Done := false.
    [recoveredBlock313Done not] whileTrue: [
        recoveredBlock313Step := recoveredBlock313PC.
        recoveredBlock313Step = 320 ifTrue: [
            recoveredBlock313Stack1 := false.
            recoveredBlock313PC := 321.
        ].
        recoveredBlock313Step = 321 ifTrue: [
            recoveredBlock313Local1 := recoveredBlock313Stack1.
            recoveredBlock313PC := 324.
        ].
        recoveredBlock313Step = 324 ifTrue: [
            recoveredBlock313PC := 1047.
        ].
        recoveredBlock313Step = 328 ifTrue: [
            recoveredBlock313Stack1 := [
    | recoveredBlock313Block328Value0 recoveredBlock313Block328Value1 recoveredBlock313Block328Value2 recoveredBlock313Block328Value3 recoveredBlock313Block328Value4 recoveredBlock313Block328Value5 recoveredBlock313Block328Value6 |
    recoveredBlock313Block328Value0 := recoveredBlock313Arg1.
    recoveredBlock313Block328Value1 := [:recoveredBlock313Block328Block339Arg1 | 
    | recoveredBlock313Block328Block339Local1 recoveredBlock313Block328Block339Local2 recoveredBlock313Block328Block339Value0 recoveredBlock313Block328Block339Value1 recoveredBlock313Block328Block339Value2 recoveredBlock313Block328Block339Value3 recoveredBlock313Block328Block339Value4 recoveredBlock313Block328Block339Value5 |
    recoveredBlock313Block328Block339Value0 := Dictionary.
    recoveredBlock313Block328Block339Value1 := (recoveredBlock313Block328Block339Value0) new.
    recoveredBlock313Block328Block339Local1 := recoveredBlock313Block328Block339Value1.
    recoveredBlock313Block328Block339Value2 := recoveredBlock313Block328Block339Arg1.
    recoveredBlock313Block328Block339Value3 := recoveredArg3.
    recoveredBlock313Block328Block339Value4 := [:recoveredBlock313Block328Block339Block361Arg1 :recoveredBlock313Block328Block339Block361Arg2 :recoveredBlock313Block328Block339Block361Arg3 | 
    | recoveredBlock313Block328Block339Block361Local1 recoveredBlock313Block328Block339Block361Stack0 recoveredBlock313Block328Block339Block361Stack1 recoveredBlock313Block328Block339Block361Stack2 recoveredBlock313Block328Block339Block361Stack3 recoveredBlock313Block328Block339Block361Stack4 recoveredBlock313Block328Block339Block361Stack5 recoveredBlock313Block328Block339Block361Stack6 recoveredBlock313Block328Block339Block361Stack7 recoveredBlock313Block328Block339Block361PC recoveredBlock313Block328Block339Block361Step recoveredBlock313Block328Block339Block361Done recoveredBlock313Block328Block339Block361Result |
    recoveredBlock313Block328Block339Block361Stack0 := self.
    recoveredBlock313Block328Block339Block361PC := 368.
    recoveredBlock313Block328Block339Block361Done := false.
    [recoveredBlock313Block328Block339Block361Done not] whileTrue: [
        recoveredBlock313Block328Block339Block361Step := recoveredBlock313Block328Block339Block361PC.
        recoveredBlock313Block328Block339Block361Step = 368 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := 'Kli'.
            recoveredBlock313Block328Block339Block361PC := 370.
        ].
        recoveredBlock313Block328Block339Block361Step = 370 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 'Call_93225'.
            recoveredBlock313Block328Block339Block361PC := 372.
        ].
        recoveredBlock313Block328Block339Block361Step = 372 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) == (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 373.
        ].
        recoveredBlock313Block328Block339Block361Step = 373 ifTrue: [
            recoveredBlock313Block328Block339Block361PC := 374.
        ].
        recoveredBlock313Block328Block339Block361Step = 374 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Arg1.
            recoveredBlock313Block328Block339Block361PC := 377.
        ].
        recoveredBlock313Block328Block339Block361Step = 377 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 'SequenceCall'.
            recoveredBlock313Block328Block339Block361PC := 379.
        ].
        recoveredBlock313Block328Block339Block361Step = 379 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := [:recoveredBlock313Block328Block339Block361Block379Arg1 | 
    | recoveredBlock313Block328Block339Block361Block379Value0 recoveredBlock313Block328Block339Block361Block379Value1 recoveredBlock313Block328Block339Block361Block379Value2 |
    recoveredBlock313Block328Block339Block361Block379Value0 := recoveredBlock313Block328Block339Block361Block379Arg1.
    recoveredBlock313Block328Block339Block361Block379Value1 := (self) readSequenceCallT: (recoveredBlock313Block328Block339Block361Block379Value0).
    recoveredBlock313Block328Block339Block361Block379Value2 := recoveredBlock313Block328Block339Block361Block379Value1.
    recoveredBlock313Block328Block339Local2 := recoveredBlock313Block328Block339Block361Block379Value2.
    recoveredBlock313Block328Block339Block361Block379Value1
].
            recoveredBlock313Block328Block339Block361PC := 394.
        ].
        recoveredBlock313Block328Block339Block361Step = 394 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) optional: (recoveredBlock313Block328Block339Block361Stack2) do: (recoveredBlock313Block328Block339Block361Stack3).
            recoveredBlock313Block328Block339Block361PC := 396.
        ].
        recoveredBlock313Block328Block339Block361Step = 396 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Arg1.
            recoveredBlock313Block328Block339Block361PC := 399.
        ].
        recoveredBlock313Block328Block339Block361Step = 399 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 'SelectorPort'.
            recoveredBlock313Block328Block339Block361PC := 401.
        ].
        recoveredBlock313Block328Block339Block361Step = 401 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := [:recoveredBlock313Block328Block339Block361Block401Arg1 | 
    | recoveredBlock313Block328Block339Block361Block401Value0 recoveredBlock313Block328Block339Block361Block401Value1 recoveredBlock313Block328Block339Block361Block401Value2 recoveredBlock313Block328Block339Block361Block401Value3 recoveredBlock313Block328Block339Block361Block401Value4 |
    recoveredBlock313Block328Block339Block361Block401Value0 := recoveredBlock313Block328Block339Block361Block401Arg1.
    recoveredBlock313Block328Block339Block361Block401Value1 := recoveredBlock313Block328Block339Local1.
    recoveredBlock313Block328Block339Block361Block401Value2 := recoveredBlock313Block328Block339Block361Arg1.
    recoveredBlock313Block328Block339Block361Block401Value3 := recoveredBlock313Block328Block339Block361Arg3.
    recoveredBlock313Block328Block339Block361Block401Value4 := (self) readSelectorPort: (recoveredBlock313Block328Block339Block361Block401Value0) pinDict: (recoveredBlock313Block328Block339Block361Block401Value1) isDefault: (recoveredBlock313Block328Block339Block361Block401Value2) method: (recoveredBlock313Block328Block339Block361Block401Value3).
    recoveredBlock313Block328Block339Block361Block401Value4
].
            recoveredBlock313Block328Block339Block361PC := 422.
        ].
        recoveredBlock313Block328Block339Block361Step = 422 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) multiple: (recoveredBlock313Block328Block339Block361Stack2) do: (recoveredBlock313Block328Block339Block361Stack3).
            recoveredBlock313Block328Block339Block361PC := 427.
        ].
        recoveredBlock313Block328Block339Block361Step = 427 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Local1.
            recoveredBlock313Block328Block339Block361PC := 430.
        ].
        recoveredBlock313Block328Block339Block361Step = 430 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) size.
            recoveredBlock313Block328Block339Block361PC := 435.
        ].
        recoveredBlock313Block328Block339Block361Step = 435 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 0.
            recoveredBlock313Block328Block339Block361PC := 437.
        ].
        recoveredBlock313Block328Block339Block361Step = 437 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1 ~~ recoveredBlock313Block328Block339Block361Stack2) ifTrue: [recoveredBlock313Block328Block339Block361PC := 480] ifFalse: [recoveredBlock313Block328Block339Block361PC := 440].
        ].
        recoveredBlock313Block328Block339Block361Step = 440 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Arg1.
            recoveredBlock313Block328Block339Block361PC := 443.
        ].
        recoveredBlock313Block328Block339Block361Step = 443 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 'TriggerPort'.
            recoveredBlock313Block328Block339Block361PC := 446.
        ].
        recoveredBlock313Block328Block339Block361Step = 446 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := [:recoveredBlock313Block328Block339Block361Block446Arg1 | 
    | recoveredBlock313Block328Block339Block361Block446Value0 recoveredBlock313Block328Block339Block361Block446Value1 recoveredBlock313Block328Block339Block361Block446Value2 recoveredBlock313Block328Block339Block361Block446Value3 recoveredBlock313Block328Block339Block361Block446Value4 |
    recoveredBlock313Block328Block339Block361Block446Value0 := recoveredBlock313Block328Block339Local1.
    recoveredBlock313Block328Block339Block361Block446Value1 := recoveredBlock313Block328Block339Block361Arg2.
    recoveredBlock313Block328Block339Block361Block446Value2 := recoveredBlock313Block328Block339Block361Block446Arg1.
    recoveredBlock313Block328Block339Block361Block446Value3 := (self) readPin: (recoveredBlock313Block328Block339Block361Block446Value2) directionAttr: ('direction').
    recoveredBlock313Block328Block339Block361Block446Value4 := (recoveredBlock313Block328Block339Block361Block446Value0) at: (recoveredBlock313Block328Block339Block361Block446Value1) put: (recoveredBlock313Block328Block339Block361Block446Value3).
    recoveredBlock313Block328Block339Block361Block446Value4
].
            recoveredBlock313Block328Block339Block361PC := 472.
        ].
        recoveredBlock313Block328Block339Block361Step = 472 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack4 := handler.
            recoveredBlock313Block328Block339Block361PC := 474.
        ].
        recoveredBlock313Block328Block339Block361Step = 474 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) required: (recoveredBlock313Block328Block339Block361Stack2) do: (recoveredBlock313Block328Block339Block361Stack3) ifNot: (recoveredBlock313Block328Block339Block361Stack4).
            recoveredBlock313Block328Block339Block361PC := 477.
        ].
        recoveredBlock313Block328Block339Block361Step = 477 ifTrue: [
            recoveredBlock313Block328Block339Block361PC := 579.
        ].
        recoveredBlock313Block328Block339Block361Step = 480 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredArg1.
            recoveredBlock313Block328Block339Block361PC := 483.
        ].
        recoveredBlock313Block328Block339Block361Step = 483 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) name.
            recoveredBlock313Block328Block339Block361PC := 485.
        ].
        recoveredBlock313Block328Block339Block361Step = 485 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := 'Layout'.
            recoveredBlock313Block328Block339Block361PC := 487.
        ].
        recoveredBlock313Block328Block339Block361Step = 487 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) = (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 488.
        ].
        recoveredBlock313Block328Block339Block361Step = 488 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) ifTrue: [recoveredBlock313Block328Block339Block361PC := 492] ifFalse: [recoveredBlock313Block328Block339Block361PC := 579].
        ].
        recoveredBlock313Block328Block339Block361Step = 492 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Block361Arg3.
            recoveredBlock313Block328Block339Block361PC := 495.
        ].
        recoveredBlock313Block328Block339Block361Step = 495 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1 == nil) ifTrue: [recoveredBlock313Block328Block339Block361PC := 579] ifFalse: [recoveredBlock313Block328Block339Block361PC := 498].
        ].
        recoveredBlock313Block328Block339Block361Step = 498 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Local1.
            recoveredBlock313Block328Block339Block361PC := 501.
        ].
        recoveredBlock313Block328Block339Block361Step = 501 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := [:block2812769cArg1 | 
    | block2812769cValue0 block2812769cValue1 |
    block2812769cValue0 := block2812769cArg1.
    block2812769cValue1 := (block2812769cValue0) at: (4).
    block2812769cValue1
].
            recoveredBlock313Block328Block339Block361PC := 504.
        ].
        recoveredBlock313Block328Block339Block361Step = 504 ifTrue: [
            recoveredBlock313Block328Block339Block361PC := 516.
        ].
        recoveredBlock313Block328Block339Block361Step = 516 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) conform: (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 521.
        ].
        recoveredBlock313Block328Block339Block361Step = 521 ifTrue: [
            recoveredBlock313Block328Block339Block361Local1 := recoveredBlock313Block328Block339Block361Stack1.
            recoveredBlock313Block328Block339Block361PC := 524.
        ].
        recoveredBlock313Block328Block339Block361Step = 524 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Block361Arg3.
            recoveredBlock313Block328Block339Block361PC := 527.
        ].
        recoveredBlock313Block328Block339Block361Step = 527 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) thing.
            recoveredBlock313Block328Block339Block361PC := 531.
        ].
        recoveredBlock313Block328Block339Block361Step = 531 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) enabled.
            recoveredBlock313Block328Block339Block361PC := 535.
        ].
        recoveredBlock313Block328Block339Block361Step = 535 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := recoveredBlock313Block328Block339Block361Local1.
            recoveredBlock313Block328Block339Block361PC := 538.
        ].
        recoveredBlock313Block328Block339Block361Step = 538 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) ~= (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 539.
        ].
        recoveredBlock313Block328Block339Block361Step = 539 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) ifTrue: [recoveredBlock313Block328Block339Block361PC := 542] ifFalse: [recoveredBlock313Block328Block339Block361PC := 575].
        ].
        recoveredBlock313Block328Block339Block361Step = 542 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := controller.
            recoveredBlock313Block328Block339Block361PC := 544.
        ].
        recoveredBlock313Block328Block339Block361Step = 544 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := ASDXMLImportIssueInconsistentMethodVisibility.
            recoveredBlock313Block328Block339Block361PC := 548.
        ].
        recoveredBlock313Block328Block339Block361Step = 548 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := (recoveredBlock313Block328Block339Block361Stack2) new.
            recoveredBlock313Block328Block339Block361PC := 550.
        ].
        recoveredBlock313Block328Block339Block361Step = 550 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := recoveredBlock313Block328Block339Block361Arg3.
            recoveredBlock313Block328Block339Block361PC := 553.
        ].
        recoveredBlock313Block328Block339Block361Step = 553 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := (recoveredBlock313Block328Block339Block361Stack3) thing.
            recoveredBlock313Block328Block339Block361PC := 557.
        ].
        recoveredBlock313Block328Block339Block361Step = 557 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack4 := recoveredBlock313Block328Block339Block361Local1.
            recoveredBlock313Block328Block339Block361PC := 560.
        ].
        recoveredBlock313Block328Block339Block361Step = 560 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack4 := (recoveredBlock313Block328Block339Block361Stack4) not.
            recoveredBlock313Block328Block339Block361PC := 561.
        ].
        recoveredBlock313Block328Block339Block361Step = 561 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack5 := recoveredBlock313Block328Block339Local1.
            recoveredBlock313Block328Block339Block361PC := 564.
        ].
        recoveredBlock313Block328Block339Block361Step = 564 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack6 := protoClass.
            recoveredBlock313Block328Block339Block361PC := 566.
        ].
        recoveredBlock313Block328Block339Block361Step = 566 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := (recoveredBlock313Block328Block339Block361Stack2) initOn: (recoveredBlock313Block328Block339Block361Stack3) visibilityFlag: (recoveredBlock313Block328Block339Block361Stack4) pins: (recoveredBlock313Block328Block339Block361Stack5) protoClass: (recoveredBlock313Block328Block339Block361Stack6).
            recoveredBlock313Block328Block339Block361PC := 571.
        ].
        recoveredBlock313Block328Block339Block361Step = 571 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) addIssue: (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 575.
        ].
        recoveredBlock313Block328Block339Block361Step = 575 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := nil.
            recoveredBlock313Block328Block339Block361PC := 576.
        ].
        recoveredBlock313Block328Block339Block361Step = 576 ifTrue: [
            recoveredBlock313Block328Block339Block361Local1 := recoveredBlock313Block328Block339Block361Stack1.
            recoveredBlock313Block328Block339Block361PC := 579.
        ].
        recoveredBlock313Block328Block339Block361Step = 579 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredBlock313Block328Block339Arg1.
            recoveredBlock313Block328Block339Block361PC := 582.
        ].
        recoveredBlock313Block328Block339Block361Step = 582 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := handler.
            recoveredBlock313Block328Block339Block361PC := 584.
        ].
        recoveredBlock313Block328Block339Block361Step = 584 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) doneIfNot: (recoveredBlock313Block328Block339Block361Stack2).
            recoveredBlock313Block328Block339Block361PC := 589.
        ].
        recoveredBlock313Block328Block339Block361Step = 589 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredArg2.
            recoveredBlock313Block328Block339Block361PC := 592.
        ].
        recoveredBlock313Block328Block339Block361Step = 592 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) selectorPorts.
            recoveredBlock313Block328Block339Block361PC := 597.
        ].
        recoveredBlock313Block328Block339Block361Step = 597 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := recoveredBlock313Block328Block339Block361Arg2.
            recoveredBlock313Block328Block339Block361PC := 600.
        ].
        recoveredBlock313Block328Block339Block361Step = 600 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := recoveredBlock313Block328Block339Local1.
            recoveredBlock313Block328Block339Block361PC := 603.
        ].
        recoveredBlock313Block328Block339Block361Step = 603 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack1) at: (recoveredBlock313Block328Block339Block361Stack2) put: (recoveredBlock313Block328Block339Block361Stack3).
            recoveredBlock313Block328Block339Block361PC := 605.
        ].
        recoveredBlock313Block328Block339Block361Step = 605 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := nil.
            recoveredBlock313Block328Block339Block361PC := 606.
        ].
        recoveredBlock313Block328Block339Block361Step = 606 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := recoveredBlock313Block328Block339Local2.
            recoveredBlock313Block328Block339Block361PC := 609.
        ].
        recoveredBlock313Block328Block339Block361Step = 609 ifTrue: [
            (recoveredBlock313Block328Block339Block361Stack2 == nil) ifTrue: [recoveredBlock313Block328Block339Block361PC := 629] ifFalse: [recoveredBlock313Block328Block339Block361PC := 612].
        ].
        recoveredBlock313Block328Block339Block361Step = 612 ifTrue: [
            recoveredBlock313Block328Block339Block361PC := 613.
        ].
        recoveredBlock313Block328Block339Block361Step = 613 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := recoveredArg2.
            recoveredBlock313Block328Block339Block361PC := 616.
        ].
        recoveredBlock313Block328Block339Block361Step = 616 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) sequences.
            recoveredBlock313Block328Block339Block361PC := 621.
        ].
        recoveredBlock313Block328Block339Block361Step = 621 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack2 := recoveredBlock313Block328Block339Block361Arg2.
            recoveredBlock313Block328Block339Block361PC := 624.
        ].
        recoveredBlock313Block328Block339Block361Step = 624 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack3 := recoveredBlock313Block328Block339Local2.
            recoveredBlock313Block328Block339Block361PC := 627.
        ].
        recoveredBlock313Block328Block339Block361Step = 627 ifTrue: [
            recoveredBlock313Block328Block339Block361Stack1 := (recoveredBlock313Block328Block339Block361Stack1) at: (recoveredBlock313Block328Block339Block361Stack2) put: (recoveredBlock313Block328Block339Block361Stack3).
            recoveredBlock313Block328Block339Block361PC := 629.
        ].
        recoveredBlock313Block328Block339Block361Step = 629 ifTrue: [
            recoveredBlock313Block328Block339Block361Result := recoveredBlock313Block328Block339Block361Stack1.
            recoveredBlock313Block328Block339Block361Done := true.
        ].
    ].
    recoveredBlock313Block328Block339Block361Result
].
    recoveredBlock313Block328Block339Value5 := (self) readComplexPort: (recoveredBlock313Block328Block339Value2) protoRef: (recoveredBlock313Block328Block339Value3) defAttr: ('defaultMethod') block: (recoveredBlock313Block328Block339Value4).
    recoveredBlock313Block328Block339Value5
].
    recoveredBlock313Block328Value2 := [:recoveredBlock313Block328Block640Arg1 | 
    | recoveredBlock313Block328Block640Local1 recoveredBlock313Block328Block640Local2 recoveredBlock313Block328Block640Value0 recoveredBlock313Block328Block640Value1 recoveredBlock313Block328Block640Value2 recoveredBlock313Block328Block640Value3 recoveredBlock313Block328Block640Value4 recoveredBlock313Block328Block640Value5 |
    recoveredBlock313Block328Block640Value0 := Dictionary.
    recoveredBlock313Block328Block640Value1 := (recoveredBlock313Block328Block640Value0) new.
    recoveredBlock313Block328Block640Local2 := recoveredBlock313Block328Block640Value1.
    recoveredBlock313Block328Block640Value2 := recoveredBlock313Block328Block640Arg1.
    recoveredBlock313Block328Block640Value3 := recoveredArg3.
    recoveredBlock313Block328Block640Value4 := [:recoveredBlock313Block328Block640Block662Arg1 :recoveredBlock313Block328Block640Block662Arg2 :recoveredBlock313Block328Block640Block662Arg3 | 
    | recoveredBlock313Block328Block640Block662Local1 recoveredBlock313Block328Block640Block662Stack0 recoveredBlock313Block328Block640Block662Stack1 recoveredBlock313Block328Block640Block662Stack2 recoveredBlock313Block328Block640Block662Stack3 recoveredBlock313Block328Block640Block662PC recoveredBlock313Block328Block640Block662Step recoveredBlock313Block328Block640Block662Done recoveredBlock313Block328Block640Block662Result |
    recoveredBlock313Block328Block640Block662Stack0 := self.
    recoveredBlock313Block328Block640Block662PC := 668.
    recoveredBlock313Block328Block640Block662Done := false.
    [recoveredBlock313Block328Block640Block662Done not] whileTrue: [
        recoveredBlock313Block328Block640Block662Step := recoveredBlock313Block328Block640Block662PC.
        recoveredBlock313Block328Block640Block662Step = 668 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := recoveredBlock313Block328Block640Arg1.
            recoveredBlock313Block328Block640Block662PC := 671.
        ].
        recoveredBlock313Block328Block640Block662Step = 671 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := 'location'.
            recoveredBlock313Block328Block640Block662PC := 674.
        ].
        recoveredBlock313Block328Block640Block662Step = 674 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) readPin: (recoveredBlock313Block328Block640Block662Stack1) directionAttr: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 679.
        ].
        recoveredBlock313Block328Block640Block662Step = 679 ifTrue: [
            recoveredBlock313Block328Block640Local1 := recoveredBlock313Block328Block640Block662Stack0.
            recoveredBlock313Block328Block640Block662PC := 682.
        ].
        recoveredBlock313Block328Block640Block662Step = 682 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Arg1.
            recoveredBlock313Block328Block640Block662PC := 685.
        ].
        recoveredBlock313Block328Block640Block662Step = 685 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := 'SelectorPort'.
            recoveredBlock313Block328Block640Block662PC := 687.
        ].
        recoveredBlock313Block328Block640Block662Step = 687 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := [:recoveredBlock313Block328Block640Block662Block687Arg1 | 
    | recoveredBlock313Block328Block640Block662Block687Value0 recoveredBlock313Block328Block640Block662Block687Value1 recoveredBlock313Block328Block640Block662Block687Value2 recoveredBlock313Block328Block640Block662Block687Value3 recoveredBlock313Block328Block640Block662Block687Value4 |
    recoveredBlock313Block328Block640Block662Block687Value0 := recoveredBlock313Block328Block640Block662Block687Arg1.
    recoveredBlock313Block328Block640Block662Block687Value1 := recoveredBlock313Block328Block640Local2.
    recoveredBlock313Block328Block640Block662Block687Value2 := recoveredBlock313Block328Block640Block662Arg1.
    recoveredBlock313Block328Block640Block662Block687Value3 := recoveredBlock313Block328Block640Block662Arg3.
    recoveredBlock313Block328Block640Block662Block687Value4 := (self) readSelectorPort: (recoveredBlock313Block328Block640Block662Block687Value0) pinDict: (recoveredBlock313Block328Block640Block662Block687Value1) isDefault: (recoveredBlock313Block328Block640Block662Block687Value2) method: (recoveredBlock313Block328Block640Block662Block687Value3).
    recoveredBlock313Block328Block640Block662Block687Value4
].
            recoveredBlock313Block328Block640Block662PC := 708.
        ].
        recoveredBlock313Block328Block640Block662Step = 708 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) multiple: (recoveredBlock313Block328Block640Block662Stack1) do: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 713.
        ].
        recoveredBlock313Block328Block640Block662Step = 713 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Arg1.
            recoveredBlock313Block328Block640Block662PC := 716.
        ].
        recoveredBlock313Block328Block640Block662Step = 716 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := handler.
            recoveredBlock313Block328Block640Block662PC := 718.
        ].
        recoveredBlock313Block328Block640Block662Step = 718 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) doneIfNot: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 723.
        ].
        recoveredBlock313Block328Block640Block662Step = 723 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Arg1.
            recoveredBlock313Block328Block640Block662PC := 726.
        ].
        recoveredBlock313Block328Block640Block662Step = 726 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) ifTrue: [recoveredBlock313Block328Block640Block662PC := 730] ifFalse: [recoveredBlock313Block328Block640Block662PC := 744].
        ].
        recoveredBlock313Block328Block640Block662Step = 730 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Local2.
            recoveredBlock313Block328Block640Block662PC := 733.
        ].
        recoveredBlock313Block328Block640Block662Step = 733 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := 'return'.
            recoveredBlock313Block328Block640Block662PC := 736.
        ].
        recoveredBlock313Block328Block640Block662Step = 736 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := recoveredBlock313Block328Block640Local1.
            recoveredBlock313Block328Block640Block662PC := 739.
        ].
        recoveredBlock313Block328Block640Block662Step = 739 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) at: (recoveredBlock313Block328Block640Block662Stack1) put: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 741.
        ].
        recoveredBlock313Block328Block640Block662Step = 741 ifTrue: [
            recoveredBlock313Block328Block640Block662PC := 899.
        ].
        recoveredBlock313Block328Block640Block662Step = 744 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Arg1.
            recoveredBlock313Block328Block640Block662PC := 747.
        ].
        recoveredBlock313Block328Block640Block662Step = 747 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := 'returnElementOID'.
            recoveredBlock313Block328Block640Block662PC := 750.
        ].
        recoveredBlock313Block328Block640Block662Step = 750 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := nil.
            recoveredBlock313Block328Block640Block662PC := 751.
        ].
        recoveredBlock313Block328Block640Block662Step = 751 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) getLocalID: (recoveredBlock313Block328Block640Block662Stack1) default: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 755.
        ].
        recoveredBlock313Block328Block640Block662Step = 755 ifTrue: [
            recoveredBlock313Block328Block640Block662Local1 := recoveredBlock313Block328Block640Block662Stack0.
            recoveredBlock313Block328Block640Block662PC := 758.
        ].
        recoveredBlock313Block328Block640Block662Step = 758 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Local1.
            recoveredBlock313Block328Block640Block662PC := 761.
        ].
        recoveredBlock313Block328Block640Block662Step = 761 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0 ~~ nil) ifTrue: [recoveredBlock313Block328Block640Block662PC := 834] ifFalse: [recoveredBlock313Block328Block640Block662PC := 764].
        ].
        recoveredBlock313Block328Block640Block662Step = 764 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := 'todo'.
            recoveredBlock313Block328Block640Block662PC := 768.
        ].
        recoveredBlock313Block328Block640Block662Step = 768 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) notNil.
            recoveredBlock313Block328Block640Block662PC := 769.
        ].
        recoveredBlock313Block328Block640Block662Step = 769 ifTrue: [
            recoveredBlock313Block328Block640Block662PC := 770.
        ].
        recoveredBlock313Block328Block640Block662Step = 770 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Arg3.
            recoveredBlock313Block328Block640Block662PC := 773.
        ].
        recoveredBlock313Block328Block640Block662Step = 773 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := 'xmlElementReturn'.
            recoveredBlock313Block328Block640Block662PC := 776.
        ].
        recoveredBlock313Block328Block640Block662Step = 776 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) respondsTo: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 781.
        ].
        recoveredBlock313Block328Block640Block662Step = 781 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) ifTrue: [recoveredBlock313Block328Block640Block662PC := 784] ifFalse: [recoveredBlock313Block328Block640Block662PC := 820].
        ].
        recoveredBlock313Block328Block640Block662Step = 784 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Arg3.
            recoveredBlock313Block328Block640Block662PC := 787.
        ].
        recoveredBlock313Block328Block640Block662Step = 787 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) xmlElementReturn.
            recoveredBlock313Block328Block640Block662PC := 791.
        ].
        recoveredBlock313Block328Block640Block662Step = 791 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0 ~~ nil) ifTrue: [recoveredBlock313Block328Block640Block662PC := 805] ifFalse: [recoveredBlock313Block328Block640Block662PC := 794].
        ].
        recoveredBlock313Block328Block640Block662Step = 794 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := self.
            recoveredBlock313Block328Block640Block662PC := 795.
        ].
        recoveredBlock313Block328Block640Block662Step = 795 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := recoveredBlock313Block328Block640Block662Arg3.
            recoveredBlock313Block328Block640Block662PC := 798.
        ].
        recoveredBlock313Block328Block640Block662Step = 798 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := (recoveredBlock313Block328Block640Block662Stack1) name.
            recoveredBlock313Block328Block640Block662PC := 800.
        ].
        recoveredBlock313Block328Block640Block662Step = 800 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) elementNotFound: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 805.
        ].
        recoveredBlock313Block328Block640Block662Step = 805 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Arg3.
            recoveredBlock313Block328Block640Block662PC := 808.
        ].
        recoveredBlock313Block328Block640Block662Step = 808 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) xmlElementReturn.
            recoveredBlock313Block328Block640Block662PC := 813.
        ].
        recoveredBlock313Block328Block640Block662Step = 813 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) xmlOID.
            recoveredBlock313Block328Block640Block662PC := 817.
        ].
        recoveredBlock313Block328Block640Block662Step = 817 ifTrue: [
            recoveredBlock313Block328Block640Block662PC := 827.
        ].
        recoveredBlock313Block328Block640Block662Step = 820 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Block662Arg3.
            recoveredBlock313Block328Block640Block662PC := 823.
        ].
        recoveredBlock313Block328Block640Block662Step = 823 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) xmlOID.
            recoveredBlock313Block328Block640Block662PC := 827.
        ].
        recoveredBlock313Block328Block640Block662Step = 827 ifTrue: [
            recoveredBlock313Block328Block640Block662Local1 := recoveredBlock313Block328Block640Block662Stack0.
            recoveredBlock313Block328Block640Block662PC := 830.
        ].
        recoveredBlock313Block328Block640Block662Step = 830 ifTrue: [
            recoveredBlock313Block328Block640Block662PC := 884.
        ].
        recoveredBlock313Block328Block640Block662Step = 834 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredArg3.
            recoveredBlock313Block328Block640Block662PC := 837.
        ].
        recoveredBlock313Block328Block640Block662Step = 837 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0 == nil) ifTrue: [recoveredBlock313Block328Block640Block662PC := 884] ifFalse: [recoveredBlock313Block328Block640Block662PC := 840].
        ].
        recoveredBlock313Block328Block640Block662Step = 840 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredArg3.
            recoveredBlock313Block328Block640Block662PC := 843.
        ].
        recoveredBlock313Block328Block640Block662Step = 843 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := ASDXMLImportProtoItem.
            recoveredBlock313Block328Block640Block662PC := 846.
        ].
        recoveredBlock313Block328Block640Block662Step = 846 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) isKindOf: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 851.
        ].
        recoveredBlock313Block328Block640Block662Step = 851 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) ifTrue: [recoveredBlock313Block328Block640Block662PC := 854] ifFalse: [recoveredBlock313Block328Block640Block662PC := 884].
        ].
        recoveredBlock313Block328Block640Block662Step = 854 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredArg3.
            recoveredBlock313Block328Block640Block662PC := 857.
        ].
        recoveredBlock313Block328Block640Block662Step = 857 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := recoveredBlock313Block328Block640Block662Local1.
            recoveredBlock313Block328Block640Block662PC := 860.
        ].
        recoveredBlock313Block328Block640Block662Step = 860 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) xmlElementByOID: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 865.
        ].
        recoveredBlock313Block328Block640Block662Step = 865 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := [:recoveredBlock313Block328Block640Block662Block865Arg1 | 
    | recoveredBlock313Block328Block640Block662Block865Value0 recoveredBlock313Block328Block640Block662Block865Value1 recoveredBlock313Block328Block640Block662Block865Value2 |
    recoveredBlock313Block328Block640Block662Block865Value0 := recoveredBlock313Block328Block640Block662Block865Arg1.
    recoveredBlock313Block328Block640Block662Block865Value1 := (recoveredBlock313Block328Block640Block662Block865Value0) xmlOID.
    recoveredBlock313Block328Block640Block662Block865Value2 := recoveredBlock313Block328Block640Block662Block865Value1.
    recoveredBlock313Block328Block640Block662Local1 := recoveredBlock313Block328Block640Block662Block865Value2.
    recoveredBlock313Block328Block640Block662Block865Value1
].
            recoveredBlock313Block328Block640Block662PC := 882.
        ].
        recoveredBlock313Block328Block640Block662Step = 882 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) ifNotNil: (recoveredBlock313Block328Block640Block662Stack1).
            recoveredBlock313Block328Block640Block662PC := 884.
        ].
        recoveredBlock313Block328Block640Block662Step = 884 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredBlock313Block328Block640Local2.
            recoveredBlock313Block328Block640Block662PC := 887.
        ].
        recoveredBlock313Block328Block640Block662Step = 887 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := recoveredBlock313Block328Block640Block662Local1.
            recoveredBlock313Block328Block640Block662PC := 890.
        ].
        recoveredBlock313Block328Block640Block662Step = 890 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := recoveredBlock313Block328Block640Local1.
            recoveredBlock313Block328Block640Block662PC := 893.
        ].
        recoveredBlock313Block328Block640Block662Step = 893 ifTrue: [
            (recoveredBlock313Block328Block640Block662Stack0) at: (recoveredBlock313Block328Block640Block662Stack1) put: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 895.
        ].
        recoveredBlock313Block328Block640Block662Step = 895 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := nil.
            recoveredBlock313Block328Block640Block662PC := 896.
        ].
        recoveredBlock313Block328Block640Block662Step = 896 ifTrue: [
            recoveredBlock313Block328Block640Block662Local1 := recoveredBlock313Block328Block640Block662Stack0.
            recoveredBlock313Block328Block640Block662PC := 899.
        ].
        recoveredBlock313Block328Block640Block662Step = 899 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := recoveredArg2.
            recoveredBlock313Block328Block640Block662PC := 902.
        ].
        recoveredBlock313Block328Block640Block662Step = 902 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) returnPorts.
            recoveredBlock313Block328Block640Block662PC := 907.
        ].
        recoveredBlock313Block328Block640Block662Step = 907 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack1 := recoveredBlock313Block328Block640Block662Arg2.
            recoveredBlock313Block328Block640Block662PC := 910.
        ].
        recoveredBlock313Block328Block640Block662Step = 910 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack2 := recoveredBlock313Block328Block640Local2.
            recoveredBlock313Block328Block640Block662PC := 913.
        ].
        recoveredBlock313Block328Block640Block662Step = 913 ifTrue: [
            recoveredBlock313Block328Block640Block662Stack0 := (recoveredBlock313Block328Block640Block662Stack0) at: (recoveredBlock313Block328Block640Block662Stack1) put: (recoveredBlock313Block328Block640Block662Stack2).
            recoveredBlock313Block328Block640Block662PC := 915.
        ].
        recoveredBlock313Block328Block640Block662Step = 915 ifTrue: [
            recoveredBlock313Block328Block640Block662Result := recoveredBlock313Block328Block640Block662Stack0.
            recoveredBlock313Block328Block640Block662Done := true.
        ].
    ].
    recoveredBlock313Block328Block640Block662Result
].
    recoveredBlock313Block328Block640Value5 := (self) readComplexPort: (recoveredBlock313Block328Block640Value2) protoRef: (recoveredBlock313Block328Block640Value3) defAttr: ('defaultPort') block: (recoveredBlock313Block328Block640Value4).
    recoveredBlock313Block328Block640Value5
].
    recoveredBlock313Block328Value3 := [:recoveredBlock313Block328Block926Arg1 | 
    | recoveredBlock313Block328Block926Value0 recoveredBlock313Block328Block926Value1 recoveredBlock313Block328Block926Value2 recoveredBlock313Block328Block926Value3 recoveredBlock313Block328Block926Value4 recoveredBlock313Block328Block926Value5 recoveredBlock313Block328Block926Value6 recoveredBlock313Block328Block926Value7 |
    recoveredBlock313Block328Block926Value0 := ('Kli') == ('Call_93225').
    recoveredBlock313Block328Block926Value1 := recoveredBlock313Block328Block926Arg1.
    recoveredBlock313Block328Block926Value2 := recoveredArg2.
    recoveredBlock313Block328Block926Value3 := (recoveredBlock313Block328Block926Value2) selectorPorts.
    recoveredBlock313Block328Block926Value4 := recoveredArg2.
    recoveredBlock313Block328Block926Value5 := (recoveredBlock313Block328Block926Value4) sequences.
    recoveredBlock313Block328Block926Value6 := recoveredArg3.
    recoveredBlock313Block328Block926Value7 := (self) readGetSetPort: (recoveredBlock313Block328Block926Value1) ports: (recoveredBlock313Block328Block926Value3) sequences: (recoveredBlock313Block328Block926Value5) mode: ('set') refItem: (recoveredBlock313Block328Block926Value6).
    recoveredBlock313Block328Block926Value7
].
    recoveredBlock313Block328Value4 := [:recoveredBlock313Block328Block970Arg1 | 
    | recoveredBlock313Block328Block970Value0 recoveredBlock313Block328Block970Value1 recoveredBlock313Block328Block970Value2 recoveredBlock313Block328Block970Value3 recoveredBlock313Block328Block970Value4 recoveredBlock313Block328Block970Value5 |
    recoveredBlock313Block328Block970Value0 := ('Kli') == ('Call_93225').
    recoveredBlock313Block328Block970Value1 := recoveredBlock313Block328Block970Arg1.
    recoveredBlock313Block328Block970Value2 := recoveredArg2.
    recoveredBlock313Block328Block970Value3 := (recoveredBlock313Block328Block970Value2) returnPorts.
    recoveredBlock313Block328Block970Value4 := recoveredArg3.
    recoveredBlock313Block328Block970Value5 := (self) readGetSetPort: (recoveredBlock313Block328Block970Value1) ports: (recoveredBlock313Block328Block970Value3) sequences: (nil) mode: ('get') refItem: (recoveredBlock313Block328Block970Value4).
    recoveredBlock313Block328Block970Value5
].
    recoveredBlock313Block328Value5 := [
    recoveredBlock313Local1 := true.
    true
].
    recoveredBlock313Block328Value6 := (recoveredBlock313Block328Value0) choice: ('MethodPort') do: (recoveredBlock313Block328Value1) choice: ('ReturnPort') do: (recoveredBlock313Block328Value2) choice: ('MemberSetPort') do: (recoveredBlock313Block328Value3) choice: ('MemberGetPort') do: (recoveredBlock313Block328Value4) ifNot: (recoveredBlock313Block328Value5).
    recoveredBlock313Block328Value6
].
            recoveredBlock313PC := 1022.
        ].
        recoveredBlock313Step = 1022 ifTrue: [
            recoveredBlock313Stack2 := ElementNotFound.
            recoveredBlock313PC := 1026.
        ].
        recoveredBlock313Step = 1026 ifTrue: [
            recoveredBlock313Stack3 := [:block281276c0Arg1 | 
    | block281276c0Value0 block281276c0Value1 |
    block281276c0Value0 := block281276c0Arg1.
    block281276c0Value1 := (block281276c0Value0) exitWith: (nil).
    block281276c0Value1
].
            recoveredBlock313PC := 1030.
        ].
        recoveredBlock313Step = 1030 ifTrue: [
            recoveredBlock313PC := 1042.
        ].
        recoveredBlock313Step = 1042 ifTrue: [
            (recoveredBlock313Stack1) when: (recoveredBlock313Stack2) do: (recoveredBlock313Stack3).
            recoveredBlock313PC := 1047.
        ].
        recoveredBlock313Step = 1047 ifTrue: [
            recoveredBlock313Stack1 := recoveredBlock313Local1.
            recoveredBlock313PC := 1050.
        ].
        recoveredBlock313Step = 1050 ifTrue: [
            (recoveredBlock313Stack1) ifTrue: [recoveredBlock313PC := 1054] ifFalse: [recoveredBlock313PC := 328].
        ].
        recoveredBlock313Step = 1054 ifTrue: [
            recoveredBlock313Stack1 := recoveredBlock313Arg1.
            recoveredBlock313PC := 1057.
        ].
        recoveredBlock313Step = 1057 ifTrue: [
            recoveredBlock313Stack2 := handler.
            recoveredBlock313PC := 1059.
        ].
        recoveredBlock313Step = 1059 ifTrue: [
            recoveredBlock313Stack1 := (recoveredBlock313Stack1) doneIfNot: (recoveredBlock313Stack2).
            recoveredBlock313PC := 1063.
        ].
        recoveredBlock313Step = 1063 ifTrue: [
            recoveredBlock313Result := recoveredBlock313Stack1.
            recoveredBlock313Done := true.
        ].
    ].
    recoveredBlock313Result
].
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack2 := 'Size'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack3 := [:recoveredBlock1076Arg1 | 
    | recoveredBlock1076Value0 recoveredBlock1076Value1 recoveredBlock1076Value2 recoveredBlock1076Value3 |
    recoveredBlock1076Value0 := recoveredArg2.
    recoveredBlock1076Value1 := recoveredBlock1076Arg1.
    recoveredBlock1076Value2 := (recoveredBlock1076Value1) asSize.
    recoveredBlock1076Value3 := (recoveredBlock1076Value0) size: (recoveredBlock1076Value2).
    recoveredBlock1076Value3
].
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack2 := 'Icon'.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack3 := [:recoveredBlock1108Arg1 | 
    | recoveredBlock1108Value0 recoveredBlock1108Value1 recoveredBlock1108Value2 recoveredBlock1108Value3 recoveredBlock1108Value4 recoveredBlock1108Value5 recoveredBlock1108Value6 recoveredBlock1108Value7 recoveredBlock1108Value8 recoveredBlock1108Value9 recoveredBlock1108Value10 |
    recoveredBlock1108Value0 := recoveredArg2.
    recoveredBlock1108Value1 := (recoveredBlock1108Value0) icon.
    recoveredBlock1108Value2 := recoveredBlock1108Arg1.
    recoveredBlock1108Value3 := (recoveredBlock1108Value2) getString: ('iconName') default: (nil).
    recoveredBlock1108Value4 := recoveredBlock1108Arg1.
    recoveredBlock1108Value5 := (recoveredBlock1108Value4) getOID: ('iconOID') default: (nil).
    recoveredBlock1108Value6 := (self) optionalProxyForPath: (recoveredBlock1108Value3) oid: (recoveredBlock1108Value5).
    (recoveredBlock1108Value1) at: (1) put: (recoveredBlock1108Value6).
    recoveredBlock1108Value7 := recoveredBlock1108Arg1.
    recoveredBlock1108Value8 := [:recoveredBlock1108Block1154Arg1 | 
    | recoveredBlock1108Block1154Value0 recoveredBlock1108Block1154Value1 recoveredBlock1108Block1154Value2 recoveredBlock1108Block1154Value3 recoveredBlock1108Block1154Value4 |
    recoveredBlock1108Block1154Value0 := recoveredArg2.
    recoveredBlock1108Block1154Value1 := (recoveredBlock1108Block1154Value0) block.
    recoveredBlock1108Block1154Value2 := recoveredBlock1108Block1154Arg1.
    recoveredBlock1108Block1154Value3 := (recoveredBlock1108Block1154Value2) asSize.
    recoveredBlock1108Block1154Value4 := (recoveredBlock1108Block1154Value1) at: (1) put: (recoveredBlock1108Block1154Value3).
    recoveredBlock1108Block1154Value4
].
    recoveredBlock1108Value9 := handler.
    recoveredBlock1108Value10 := (recoveredBlock1108Value7) required: ('Size') do: (recoveredBlock1108Value8) ifNot: (recoveredBlock1108Value9).
    recoveredBlock1108Value10
].
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack2 := 'Symbol'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := [:block281276e4Arg1 | 
    | block281276e4Value0 |
    block281276e4Value0 := ('ignored') notNil.
    block281276e4Value0
].
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

