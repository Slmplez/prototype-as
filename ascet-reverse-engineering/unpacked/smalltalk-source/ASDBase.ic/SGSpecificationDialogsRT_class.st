"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009b978; bytecode file offset 0x998260"
!SGSpecificationDialogsRT class methodsFor: 'recovered'!
toBeLoadedCodeRB
    | recoveredValue0 |
    recoveredValue0 := SGSpecificationDialogsRT.
    (recoveredValue0) toBeLoadedCode: ('

| aDict |

aDict := Smalltalk at: #EtasSpecWidgetConstants ifAbsent: [
	Smalltalk at: #EtasSpecWidgetConstants put: Dictionary new.
].

aDict
	at: ''XmNbuildingFinishedCallback'' put: #buildingFinishedCallback;
	at: ''XmNgraphicsModifiedCallback'' put: #graphicsModifiedCallback;
	yourself.').
    ^self
! !

