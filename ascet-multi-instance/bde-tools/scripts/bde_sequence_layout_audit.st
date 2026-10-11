[:component :diagramName :targets |
 component handleExceptionsIn: [
 | fresh retained stream writePoint writeDiagram first |
 fresh := component getDiagram: diagramName.
 retained := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', diagramName)) at: 'diagram'.
 stream := WriteStream on: String new.
 writePoint := [:p | stream nextPut: $[; nextPutAll: p x printString; nextPut: $,; nextPutAll: p y printString; nextPut: $]].
 writeDiagram := [:d |
   first := true. stream nextPut: $[.
   d getAllDiagramElements do: [:n | n getAllPins do: [:p | p hasSequenceCall ifTrue: [
     | g label frame |
     g := p getSequenceCall diagramElement. label := g instVarNamed: 'labelGO'. frame := g basicGraphObject logicFrame.
     first ifFalse: [stream nextPut: $,]. first := false.
     stream nextPutAll: '{"pin":'; nextPutAll: p diagramElement identifier printString;
       nextPutAll: ',"call":'; nextPutAll: g identifier printString; nextPutAll: ',"anchor":'.
     writePoint value: g getPosition.
     stream nextPutAll: ',"position":'. writePoint value: frame origin.
     stream nextPutAll: ',"size":'. writePoint value: frame extent.
     stream nextPutAll: ',"label_anchor":'. writePoint value: label getPosition.
     stream nextPutAll: ',"label_bytes":['.
     label text asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [stream nextPut: $,]. stream nextPutAll: b printString].
     stream nextPutAll: '],"font_height":'; nextPutAll: (g instVarNamed: 'font') queryFont height printString; nextPut: $}
   ]]]. stream nextPut: $]
 ].
 stream nextPutAll: '{"retained":'. writeDiagram value: retained.
 stream nextPutAll: ',"fresh":'. writeDiagram value: fresh.
 stream nextPut: $}. stream contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', error messageText]
]
