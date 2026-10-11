    ownedCodeClass := SGCodeGODB class basicNew.
    1 to: SGCodeGODB class instSize do: [:i | ownedCodeClass instVarAt: i put: (SGCodeGODB instVarAt: i)].
    ownedCodeClass superclass: SGCodeGODB. ownedCodeClass initializeMethodDictionary.
    ownedCodeClass instSize: SGCodeGODB instSize + 1.
    ownedMethod := EsCompiler compile: 'graphicObjectForTemplate: represented
        | result | result := (self instVarAt: self class instSize) value: self value: represented
            value: [super graphicObjectForTemplate: represented]. ^result'
        inClass: ownedCodeClass ifFail: [:failure | SGCodeGODB error: failure printString].
    ownedCodeClass addSelector: ownedMethod selector withMethod: ownedMethod.
    createCodeGraphic := [:templates | [:stored :represented :nativeCreate |
        | plan original graphic |
        plan := templates at: (represented ifNil: [SGCodeGODB]) ifAbsentPut: [
            templates at: #created put: (templates at: #created ifAbsent: [0]) + 1.
            original := nativeCreate value. copyGraphic value: original].
        plan isNil ifTrue: [templates at: #fallback put: (templates at: #fallback ifAbsent: [0]) + 1. nativeCreate value] ifFalse: [
            templates at: #copies put: (templates at: #copies ifAbsent: [0]) + 1.
            graphic := plan value.
            graphic identifier: stored iD. graphic moveTo: stored position.
            graphic actualNameGO moveTo: stored namePosition.
            graphic frameGO setRBAreaStyle: stored blockColor.
            graphic actualNameVisibility: stored actualNameVisibility. graphic iconVisibility: stored iconVisibility.
            graphic classSymbolVisibility: stored classSymbolVisibility. graphic changePinNameVisibility: stored pinNameVisibility.
            graphic
        ]
    ]].
