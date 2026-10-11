[:component :model :scope |
 component handleExceptionsIn: [
 | diagram created count result hierarchy current parts matches |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Class interface fixture only'].
 parts := scope subStrings: $/. parts first = 'Main' ifFalse: [component error: 'Fixture Main scope required'].
 parts size > 17 ifTrue: [component error: 'Fixture scope depth exceeded'].
 diagram := component getDiagram: 'Main'. current := diagram. hierarchy := nil.
 2 to: parts size do: [:index |
   | part id |
   part := parts at: index. part first = $h ifFalse: [component error: 'Exact fixture hierarchy ID required'].
   id := (part copyFrom: 2 to: part size) asNumber.
   part = ('h', id printString) ifFalse: [component error: 'Canonical fixture hierarchy ID required'].
   matches := current getAllDiagramElements select: [:node | node isBlockDiagramHierarchy and: [node diagramElement identifier = id]].
   matches size = 1 ifFalse: [component error: 'Fixture hierarchy missing or ambiguous'].
   current := matches first. hierarchy := current
 ].
 count := current getAllDiagramElements size.
 created := diagram place: model location: ((100 + (count * 260)) @ 200) hierarchy: hierarchy.
 (created isKindOf: EtasAPIError) ifTrue: [component error: created errorMessage].
 result := diagram storeToCache.
 (result isKindOf: EtasAPIError) ifTrue: [component error: result errorMessage].
 created diagramElement identifier printString
 ] ifFail: [:error | 'BDE_CLASS_FIXTURE_ERROR: ', error messageText]
]
