    ownedCodeGraphicClass := SGCodeGO class basicNew.
    1 to: SGCodeGO class instSize do: [:i | ownedCodeGraphicClass instVarAt: i put: (SGCodeGO instVarAt: i)].
    ownedCodeGraphicClass superclass: SGCodeGO. ownedCodeGraphicClass initializeMethodDictionary.
    #('updateLabelForAttributes: element ^#()'
      'initScopeGOForElement: element ^self'
      'changeActualName: name ^self'
      'updateGOForElement: element datamodelManager: model display: flag ^self updateGOForElement: element display: flag') do: [:methodSource |
        displayMethod := EsCompiler compile: methodSource inClass: ownedCodeGraphicClass ifFail: [:failure | SGCodeGO error: failure printString].
        ownedCodeGraphicClass addSelector: displayMethod selector withMethod: displayMethod
    ].
    ownedCodeClass := SGCodeGODB class basicNew.
    1 to: SGCodeGODB class instSize do: [:i | ownedCodeClass instVarAt: i put: (SGCodeGODB instVarAt: i)].
    ownedCodeClass superclass: SGCodeGODB. ownedCodeClass initializeMethodDictionary.
    ownedCodeClass instSize: SGCodeGODB instSize + 1.
    ownedMethod := EsCompiler compile: 'graphicObjectForTemplate: represented
        ^(self instVarAt: self class instSize) value: self value: represented'
        inClass: ownedCodeClass ifFail: [:failure | SGCodeGODB error: failure printString].
    ownedCodeClass addSelector: ownedMethod selector withMethod: ownedMethod.
    createCodeGraphic := @@CODE_CREATOR_OPEN@@[:stored :represented |
        | graphic label @@CODE_CREATOR_LOCALS@@ |
        label := represented ifNil: ['Dummy'] ifNotNil: [represented label].
        @@CODE_SHAPE@@
        graphic frameGO setRBAreaStyle: stored blockColor.
        graphic identifier: stored iD. graphic moveTo: stored position.
        graphic actualNameGO moveTo: stored namePosition.
        graphic actualNameVisibility: stored actualNameVisibility. graphic iconVisibility: stored iconVisibility.
        graphic setCustomerDataInfoFrom: stored customerDataInfo.
        represented ifNotNil: [
            represented getSetAvailable ifTrue: [graphic addSelfGet: represented internalGetMethod set: represented internalSetMethod].
            graphic flexibleCreated: represented hasEditableLayout
        ].
        graphic classSymbolVisibility: stored classSymbolVisibility. graphic changePinNameVisibility: stored pinNameVisibility.
        graphic
    ]@@CODE_CREATOR_CLOSE@@.
