"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005be34; bytecode file offset 0x958ab0"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := RBToolboxManager.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x2005bf14; bytecode file offset 0x958ab0"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := RBToolboxManager.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x2005c134; bytecode file offset 0x958ab0"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := RBToolboxManager.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x200cccb0; bytecode file offset 0x9c958c"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
packagerIncludeClassNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('RBToolboxDescriptor').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b2e5c; bytecode file offset 0xaaf728"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) includeMethod: ('declarePoolDictionary:') inClassNamed: ('EsSmalltalkDictionary').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) includeMethod: ('declareVariable:') inClassNamed: ('Dictionary').
    (recoveredValue0) includeMethod: ('declareConstant:value:') inClassNamed: ('Dictionary').
    ^self
! !

"ASDBase.ic method 0x20252a78; bytecode file offset 0xb4f350"
!RBToolboxRuntimeSupportRT class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('createLabel:version:baseVersion:apiClass:apiVersion:license:application:fileName:').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('addMenuCall:menu:item:action:description:').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('addMenuCall:menu:item:enable:action:description:').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('addMenuCall:menu:item:enable:toggle:action:description:').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('addMenuCall:menu:item:toggle:action:description:').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('addToolbarCall:icon:helpText:action:description:').
    ^recoveredValue1
! !

