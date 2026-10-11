"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001720; bytecode file offset 0x8ffcfc"
!EtasDatamodelRT class methodsFor: 'recovered'!
_PRAGMA_EtasDatamodelRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20001830; bytecode file offset 0x8ffcfc"
!EtasDatamodelRT class methodsFor: 'recovered'!
_PRAGMA_EtasDatamodelExceptions
    ^self
! !

"ASDBase.ic method 0x2001f85c; bytecode file offset 0x92209c"
!EtasDatamodelRT class methodsFor: 'recovered'!
toBeLoadedCodeRB
    ^'

   "#The following part of the string was created by the NLS-Tool:#" 
RBNlsLoadingManager current initializeOnCurrentlyLoadedApplication: ''SGDatamodelRT''. 

GlobVNlsCatalog addDefiningEntryAndUpdatePoolBy:  (RBNlsEntry createWithName:  ''EtIcon'' poolDictionary:   ''RBApplicationText''
germanValue: ''Icon'' englishValue: ''Icon'' frenchValue:  '''' spanishValue: ''''
comment: ''''
definingApplication: ''SGDatamodelRT'' applications: (OrderedCollection new add: ''SGDatamodelRT''; yourself)
status: ''ok'' creationStamp: ''Wolfgang Haug (07.01.98 10:16:29 )'' ) 
applicationToLoad: ''SGDatamodelRT''. 

GlobVNlsCatalog addDefiningEntryAndUpdatePoolBy:  (RBNlsEntry createWithName:  ''EtNetwork'' poolDictionary:   ''RBApplicationText''
germanValue: ''Netzwerk'' englishValue: ''Network'' frenchValue:  '''' spanishValue: ''''
comment: ''''
definingApplication: ''SGDatamodelRT'' applications: (OrderedCollection new add: ''SGDatamodelRT''; yourself)
status: ''ok'' creationStamp: ''Wolfgang Haug (07.01.98 10:24:57 )'' ) 
applicationToLoad: ''SGDatamodelRT''. 

GlobVNlsCatalog addDefiningEntryAndUpdatePoolBy:  (RBNlsEntry createWithName:  ''EtSignal'' poolDictionary:   ''RBApplicationText''
germanValue: ''Signal'' englishValue: ''Signal'' frenchValue:  '''' spanishValue: ''''
comment: ''''
definingApplication: ''SGDatamodelRT'' applications: (OrderedCollection new add: ''SGDatamodelRT''; yourself)
status: ''ok'' creationStamp: ''Wolfgang Haug (07.01.98 10:27:14 )'' ) 
applicationToLoad: ''SGDatamodelRT''. 

RBNlsLoadingManager current removeObsoleteDefiningEntries. 

RBNlsLoadingManager current removeApplicationFromNotAssociatedEntries: ''SGDatamodelRT''. 

"#End of the NLS-Tool created part.#"

	"*** declare exception handling entries ***"
		Smalltalk declarePoolDictionary: ''EtasDatamodelExceptions'' .

		(Smalltalk declareVariable: ''ExDatamodel'' poolName: ''EtasDatamodelExceptions'') value: nil .
		(Smalltalk declareVariable: ''ExNoAccessToSource'' poolName: ''EtasDatamodelExceptions'') value: nil .
		(Smalltalk declareVariable: ''ExUndefinedDBObject'' poolName: ''EtasDatamodelExceptions'') value: nil .
	'
! !

"ASDBase.ic method 0x2004e840; bytecode file offset 0x94d048"
!EtasDatamodelRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2004f2fc; bytecode file offset 0x94d048"
!EtasDatamodelRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x2005bf84; bytecode file offset 0x958ab0"
!EtasDatamodelRT class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := RBTopFolder.
    (recoveredValue0) InitCallbacks.
    ^self
! !

"ASDBase.ic method 0x20114d28; bytecode file offset 0xa115ec"
!EtasDatamodelRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasDatamodelError.
    (recoveredValue0) initializeExceptions.
    recoveredValue1 := EtasDatamodelError.
    (recoveredValue1) initializeClass.
    recoveredValue2 := EtasDatamodelError.
    (recoveredValue2) defineDefaultErrors.
    ^self
! !

