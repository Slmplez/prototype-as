[:component |
 | source registry copied owner names slot previous exact ownerExact fieldRefused ownerRefused originalUnchanged |
 source := (component getDiagram: 'Main') specification specSourceInternalOrNil.
 registry := (Smalltalk at: #DogeBDEStructureIdentityV2) at: component getOID, '/Main'.
 copied := (registry at: 'copySource') value: source.
 owner := source dbObject.
 exact := (registry at: 'sameSource') value: source value: copied.
 ownerExact := copied dbObject == owner.
 names := source class allInstVarNames.
 slot := (1 to: source class instSize) detect: [:i | (names at: i) asString ~= 'dbObject' and: [(copied instVarAt: i) notNil]] ifNone: [0].
 slot = 0 ifTrue: [component error: 'Source field validation requires a populated graphics field'].
 previous := copied instVarAt: slot.
 copied instVarAt: slot put: nil.
 fieldRefused := ((registry at: 'sameSource') value: source value: copied) not.
 copied instVarAt: slot put: previous.
 copied dbObject: nil.
 ownerRefused := owner notNil and: [((registry at: 'sameSource') value: source value: copied) not].
 copied dbObject: owner.
 originalUnchanged := ((registry at: 'sameSource') value: source value: copied)
   and: [source dbObject == owner].
 (exact and: [ownerExact and: [fieldRefused and: [originalUnchanged and: [owner isNil or: [ownerRefused]]]]])
   ifFalse: [component error: 'Source checkpoint clone/identity/field guard failed'].
 '{"exact":', exact printString, ',"owner_exact":', ownerExact printString,
 ',"field_change_refused":', fieldRefused printString,
 ',"owner_change_refused":', ownerRefused printString,
 ',"original_unchanged":', originalUnchanged printString,
 ',"owner_class":"', owner class name asString, '","model_setters_called":0}'
]
