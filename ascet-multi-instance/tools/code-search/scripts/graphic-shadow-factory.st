    shadowClasses := IdentityDictionary new.
    createGraphicShadow := [:shadowReader :shadowAPI | | memo | memo := IdentityDictionary new.
      [:represented | represented isNil ifTrue: [nil] ifFalse: [memo at: represented ifAbsentPut: [
        | proxy wrapper shadow shadowClass method |
        shadow := nil.
        (represented isKindOf: SGItemWithSpec) ifTrue: [
          proxy := represented graphicRepresentationKey.
          (proxy notNil and: [proxy getCachedDBObject isNil and: [proxy isModified not]]) ifTrue: [
            shadowAPI handleExceptionsIn: [
              | record | record := proxy dbInterface readRecord: proxy.
              record isError ifTrue: [shadowAPI error: 'GRAPHIC_RECORD_UNAVAILABLE'].
              (proxy dbInterface linDeLin loadMethodFromRecord: record) = #loadSwapper:blobStart:
                ifFalse: [shadowAPI error: 'GRAPHIC_DECODER_UNSUPPORTED'].
              wrapper := shadowReader valueWithArguments: (Array with: shadowAPI with: record with: record class blobStart with: [:phase | nil]).
              shadowClass := shadowClasses at: represented class ifAbsentPut: [
                | cls | cls := represented class class basicNew.
                1 to: represented class class instSize do: [:i | cls instVarAt: i put: (represented class instVarAt: i)].
                cls superclass: represented class. cls initializeMethodDictionary. cls instSize: represented class instSize + 1.
                method := EsCompiler compile: 'getGraphicRepresentation ^self instVarAt: self class instSize'
                  inClass: cls ifFail: [:failure | shadowAPI error: failure printString].
                cls addSelector: method selector withMethod: method. cls
              ].
              shadow := shadowClass basicNew.
              1 to: represented class instSize do: [:i | shadow instVarAt: i put: (represented instVarAt: i)].
              shadow instVarAt: shadow class instSize put: wrapper
            ] ifFail: [:error | shadow := nil]
          ]
        ]. shadow
      ]]]
    ].
    complexDataClass := SGDataGODB class basicNew.
    1 to: SGDataGODB class instSize do: [:i | complexDataClass instVarAt: i put: (SGDataGODB instVarAt: i)].
    complexDataClass superclass: SGDataGODB. complexDataClass initializeMethodDictionary.
    complexDataClass instSize: SGDataGODB instSize + 2.
    @@SCALAR_METHOD@@
    ownedMethod := EsCompiler compile: 'graphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent
      | element represented shadow go |
      element := model elementAliasName: self aliasName.
      element isNil ifTrue: [^self scalarGraphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent].
      represented := element sgClassIfUndefined: [nil].
      shadow := (self instVarAt: self class instSize) value: represented.
      (shadow isNil or: [EtasMainDatabaseCtrl LogicModelGenerationRunning or: [
        (element isProvidePort and: [represented isClientServerInterface]) or: [
        (element isPossibleElementFor: model sgClass specifications: model specifications) not]]]) ifTrue: [
        ^self scalarGraphicObject: hierarchy datamodelManager: model tableBuilder: table manager: parent].
      go := shadow hasEditableLayout ifTrue: [
        self graphicObjectForTemplateWithMethods: represented addMissing: false progressDialog: RBDummyProgressReporter create
      ] ifFalse: [shadow graphicObject].
      go resetAllIdentifiers. go manager: parent.
      self adjustModificationsForNewGO: go.
      self updateSequencesWith: go dataModelManager: model.
      self checkSequenceCallGO: go hierarchyWrapper: hierarchy dataModelManager: model.
      table addIdentifierFor: go.
      go updateGOForElement: element datamodelManager: model display: false.
      self adjustActualNameGOFor: go.
      go setCustomerDataInfoFrom: self customerDataInfo. go drawingOrder: self drawingOrder.
      ^go' inClass: complexDataClass ifFail: [:failure | SGDataGODB error: failure printString].
    complexDataClass addSelector: ownedMethod selector withMethod: ownedMethod.
