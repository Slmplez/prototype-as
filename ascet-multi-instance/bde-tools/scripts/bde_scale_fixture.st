[:component :diagramName :countText |
 component handleExceptionsIn: [
 | diagram count created result |
 (component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_Scale_')
   ifFalse: [component error: 'Scale fixture sandbox required'].
 count := countText asNumber.
 (#(10 100 1000) includes: count) ifFalse: [component error: 'Fixed fixture sizes only'].
 diagram := component getDiagram: diagramName.
 (diagram getAllDiagramElements isEmpty and: [diagram getAllDiagramConnections isEmpty])
   ifFalse: [component error: 'Empty fixture required; never replay generation'].
 1 to: count do: [:i |
   created := diagram placeLiteralString: ((i \\ 5) + 1) printString
     location: (((i - 1) \\ 20) * 120 + 100 @ (((i - 1) // 20) * 60 + 100)) hierarchy: nil.
   (created isKindOf: EtasAPIError) ifTrue: [component error: 'Literal fixture placement failed'].
   created diagramElement fitToRaster: SGDefaultPaneCtrl ascetDefaultRaster
 ].
 result := diagram storeToCache.
 (result isKindOf: EtasAPIError) ifTrue: [component error: 'Fixture store failed'].
 diagram getAllDiagramElements size = count ifFalse: [component error: 'Fixture node count mismatch'].
 'ok'
 ] ifFail: [:error | 'BDE_SCALE_ERROR: ', error messageText]
]
