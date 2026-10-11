    ownedLiteralClass := SGLiteralGODB class basicNew.
    1 to: SGLiteralGODB class instSize do: [:i | ownedLiteralClass instVarAt: i put: (SGLiteralGODB instVarAt: i)].
    ownedLiteralClass superclass: SGLiteralGODB. ownedLiteralClass initializeMethodDictionary.
    ownedLiteralClass instSize: SGLiteralGODB instSize + 1.
    ownedMethod := EsCompiler compile: 'graphicObject
      | graphic style |
      graphic := (self instVarAt: self class instSize) value.
      graphic isNil ifTrue: [^super graphicObject].
      style := self lineStyle. style ifNotNil: [graphic lineStyle: style].
      graphic identifier: self iD. graphic moveTo: self position.
      1 to: self connectors size do: [:i | (graphic connectorGOs at: i) identifier: (self connectors at: i)].
      graphic moveTo: self position. graphic literalString: self literalString.
      graphic attributedViewNames: self attributedViewNames.
      (self areaStyle notNil and: [graphic frameGO notNil]) ifTrue: [graphic frameGO areaStyle: self areaStyle].
      graphic drawingOrder: self drawingOrder. ^graphic'
      inClass: ownedLiteralClass ifFail: [:failure | SGLiteralGODB error: failure printString].
    ownedLiteralClass addSelector: ownedMethod selector withMethod: ownedMethod.
    createLiteralGraphic := [ | plan attempted | plan := nil. attempted := false. [
      attempted ifFalse: [attempted := true. plan := copyGraphic value: (SGLiteralGO createDefault: '')].
      plan ifNil: [nil] ifNotNil: [plan value]
    ]].
