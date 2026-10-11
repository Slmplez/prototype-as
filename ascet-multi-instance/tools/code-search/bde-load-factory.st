[ | ownedClass ownedMethod ownedGraphicClass displayMethod createGraphic copyGraphic ownedCodeClass ownedCodeGraphicClass |
    "Owned classes are compiled once per connection. Only detached search copies use them."
    ownedGraphicClass := SGDataGO class basicNew.
    1 to: SGDataGO class instSize do: [:i | ownedGraphicClass instVarAt: i put: (SGDataGO instVarAt: i)].
    ownedGraphicClass superclass: SGDataGO.
    ownedGraphicClass initializeMethodDictionary.
    "Keep the native two-argument model update; avoid evaluating disabled display labels."
    #('updateLabelForAttributes: displayElement label: displayLabel ^#()'
      'updateLabelForAttributes: displayElement ^#()'
      'initScopeGOForElement: displayElement ^self'
      'changeActualName: displayName ^self'
      'updateGOForElement: displayElement datamodelManager: displayModel display: displayFlag
       ^self updateGOForElement: displayElement display: displayFlag') do: [:methodSource |
        displayMethod := EsCompiler compile: methodSource inClass: ownedGraphicClass ifFail: [:failure | SGDataGO error: failure printString].
        ownedGraphicClass addSelector: displayMethod selector withMethod: displayMethod
    ].
    ownedClass := SGDataGODB class basicNew.
    1 to: SGDataGODB class instSize do: [:i | ownedClass instVarAt: i put: (SGDataGODB instVarAt: i)].
    ownedClass superclass: SGDataGODB.
    ownedClass initializeMethodDictionary.
    ownedClass instSize: SGDataGODB instSize + 1.
    ownedMethod := EsCompiler compile: 'graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent
        | element represented go |
        element := model elementAliasName: self aliasName.
        element isNil ifTrue: [^super graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent].
        represented := element sgClassIfUndefined: [nil].
        (represented isNil or: [(represented hasEditableLayout or: [EtasMainDatabaseCtrl LogicModelGenerationRunning]) or: [
            (element isProvidePort and: [represented isClientServerInterface]) or: [
            (element isPossibleElementFor: model sgClass specifications: model specifications) not]]]) ifTrue: [
            ^super graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent].
        go := (self instVarAt: self class instSize) value: represented value: element value: model.
        go isNil ifTrue: [^super graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent].
        go resetAllIdentifiers.
        go manager: parent.
        self adjustModificationsForNewGO: go.
        self updateSequencesWith: go dataModelManager: model.
        self checkSequenceCallGO: go hierarchyWrapper: hierarchy dataModelManager: model.
        table addIdentifierFor: go.
        go updateGOForElement: element datamodelManager: model display: false.
        self adjustActualNameGOFor: go.
        go setCustomerDataInfoFrom: self customerDataInfo.
        go drawingOrder: self drawingOrder.
        ^go' inClass: ownedClass ifFail: [:failure | SGDataGODB error: failure printString].
    ownedClass addSelector: ownedMethod selector withMethod: ownedMethod.
    "Compile a cycle-preserving copy plan for each request-local native prototype."
    copyGraphic := [:source |
        | memo nodes visit root supported hashKeySupported |
        memo := IdentityDictionary new. nodes := OrderedCollection new. supported := true.
        hashKeySupported := [:key | ((key isNil or: [key isNumber]) or: [
            (key isKindOf: Symbol) or: [(key isKindOf: String) or: [
            (key isKindOf: ByteArray) or: [key == true or: [key == false]]]]])].
        visit := [:value :depth |
            | name kind children refs index patches |
            (nodes size > 10000 or: [depth > 64]) ifTrue: [supported := false].
            (supported not or: [((value isNil or: [value isNumber]) or: [
                (value isKindOf: Symbol) or: [value == true or: [value == false]]]) or: [value isKindOf: CgFont]])
                ifTrue: [0] ifFalse: [memo at: value ifAbsent: [
                    name := value class name asString. kind := 0. children := OrderedCollection new.
                    ((value isKindOf: String) or: [value isKindOf: ByteArray]) ifTrue: [kind := 1] ifFalse: [
                    (value isKindOf: Dictionary) ifTrue: [kind := 2.
                        value keysAndValuesDo: [:key :entry |
                            (hashKeySupported value: key) ifFalse: [supported := false].
                            children add: key; add: entry]
                    ] ifFalse: [((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [kind := 3.
                        children addAll: value
                    ] ifFalse: [(value isKindOf: Set) ifTrue: [kind := 4. value do: [:entry |
                        (hashKeySupported value: entry) ifFalse: [supported := false]. children add: entry]] ifFalse: [
                        ((value isKindOf: RBGraphicObject) or: [(value isKindOf: RBConnectionPointGO) or: [
                            (value isKindOf: RBConnectionPointBranch) or: [#('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name]]])
                            ifTrue: [1 to: value class instSize do: [:i | children add: (value instVarAt: i)]]
                            ifFalse: [supported := false]
                    ]]]].
                    index := nodes size + 1. memo at: value put: index.
                    refs := Array new: children size. patches := OrderedCollection new.
                    nodes add: (Array with: kind with: value with: children asArray with: refs with: patches).
                    1 to: children size do: [:i | refs at: i put: (visit value: (children at: i) value: depth + 1)].
                    1 to: refs size do: [:i | (refs at: i) > 0 ifTrue: [patches add: i; add: (refs at: i)]].
                    index
                ]]
        ].
        root := visit value: source value: 0.
        (supported not or: [root = 0]) ifTrue: [nil] ifFalse: [[
            | copies resolve |
            copies := nodes collect: [:node | | kind original | kind := node at: 1. original := node at: 2.
                (#(2 4) includes: kind) ifTrue: [original class new]
                    ifFalse: [kind = 0 ifTrue: [original shallowCopy] ifFalse: [original copy]]].
            resolve := [:node :i | | reference | reference := (node at: 4) at: i.
                reference = 0 ifTrue: [(node at: 3) at: i] ifFalse: [copies at: reference]].
            1 to: nodes size do: [:ni | | node kind copied patches | node := nodes at: ni. kind := node at: 1. copied := copies at: ni.
                patches := node at: 5.
                kind = 0 ifTrue: [1 to: patches size by: 2 do: [:i |
                    copied instVarAt: (patches at: i) put: (copies at: (patches at: i + 1))]].
                kind = 3 ifTrue: [1 to: patches size by: 2 do: [:i |
                    copied at: (patches at: i) put: (copies at: (patches at: i + 1))]]
            ].
            "Populate hashed collections after all mutable keys have been reconnected."
            1 to: nodes size do: [:ni | | node kind copied | node := nodes at: ni. kind := node at: 1. copied := copies at: ni.
                kind = 2 ifTrue: [1 to: (node at: 3) size by: 2 do: [:i |
                    copied at: (resolve value: node value: i) put: (resolve value: node value: i + 1)]].
                kind = 4 ifTrue: [1 to: (node at: 3) size do: [:i | copied add: (resolve value: node value: i)]]
            ].
            copies at: root
        ]]
    ].
    createGraphic := [:templates | [:represented :element :model |
        | graphic positions isReturn template key |
        isReturn := element isMethodParameter and: [element isReturn].
        (represented goClass == SGDataGO and: [
            (represented class whichClassIncludesSelector: #internalSetMethod) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #internalGetMethod) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #methods) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #methodPositions) == SGModelDataType and: [
            (element isMethodParameter and: [element isReturn]) or: [
                (represented class whichClassIncludesSelector: #graphicObject) == SGModelDataType]]]]]]) ifTrue: [
            key := Array with: represented class with: represented typeID with: isReturn.
            template := templates at: key ifAbsentPut: [
                isReturn ifTrue: [
                    positions := Dictionary new at: SGReservedNames setMethod put: #(350); yourself.
                    graphic := ownedGraphicClass createDefault: 'Scalar' procedures: (Array with: represented internalSetMethod) positions: positions
                ] ifFalse: [graphic := ownedGraphicClass createDefault: 'Scalar' procedures: represented methods positions: represented methodPositions].
                copyGraphic value: graphic
            ].
            template isNil ifTrue: [nil] ifFalse: [
                graphic := template value.
                isReturn ifTrue: [graphic aliasName: element aliasName.
                    graphic actualNameVisibility: true. graphic sequenceVisibility: model isCTContext]. graphic]
        ] ifFalse: [nil]
    ]].
    ownedCodeGraphicClass := SGCodeGO class basicNew.
    1 to: SGCodeGO class instSize do: [:i | ownedCodeGraphicClass instVarAt: i put: (SGCodeGO instVarAt: i)].
    ownedCodeGraphicClass superclass: SGCodeGO. ownedCodeGraphicClass initializeMethodDictionary.
    #('updateLabelForAttributes: displayElement label: displayLabel ^#()'
      'updateLabelForAttributes: displayElement ^#()'
      'initScopeGOForElement: displayElement ^self'
      'changeActualName: displayName ^self'
      'updateGOForElement: displayElement datamodelManager: displayModel display: displayFlag
       ^self updateGOForElement: displayElement display: displayFlag') do: [:methodSource |
        displayMethod := EsCompiler compile: methodSource inClass: ownedCodeGraphicClass ifFail: [:failure | SGCodeGO error: failure printString].
        ownedCodeGraphicClass addSelector: displayMethod selector withMethod: displayMethod
    ].
    ownedCodeClass := SGCodeGODB class basicNew.
    1 to: SGCodeGODB class instSize do: [:i | ownedCodeClass instVarAt: i put: (SGCodeGODB instVarAt: i)].
    ownedCodeClass superclass: SGCodeGODB. ownedCodeClass initializeMethodDictionary.
    ownedCodeClass instSize: SGCodeGODB instSize + 1.
    ownedMethod := EsCompiler compile: 'graphicObjectForTemplate: represented
        | go label |
        self class goClass == SGCodeGO ifFalse: [^super graphicObjectForTemplate: represented].
        label := represented isNil ifTrue: [''Dummy''] ifFalse: [represented label].
        go := (self instVarAt: self class instSize) createUpdatedDisplay: label actualName: label
            icon: self iconDBImage lineStyle: self lineStyle size: self size.
        go frameGO setRBAreaStyle: self blockColor.
        go identifier: self iD. go moveTo: self position.
        go actualNameGO moveTo: self namePosition.
        go actualNameVisibility: self actualNameVisibility. go iconVisibility: self iconVisibility.
        go setCustomerDataInfoFrom: self customerDataInfo.
        represented isNil ifFalse: [
            represented getSetAvailable ifTrue: [go addSelfGet: represented internalGetMethod set: represented internalSetMethod].
            go flexibleCreated: represented hasEditableLayout
        ].
        go classSymbolVisibility: self classSymbolVisibility. go changePinNameVisibility: self pinNameVisibility.
        ^go' inClass: ownedCodeClass ifFail: [:failure | SGCodeGODB error: failure printString].
    ownedCodeClass addSelector: ownedMethod selector withMethod: ownedMethod.
    Array with: ownedClass with: createGraphic with: ownedCodeClass with: ownedCodeGraphicClass
] value
