[:component :context |
 component handleExceptionsIn: [
 | source roots owner images capture kindFor walk verify sameOrder sameContents cloneImages result |
 (context isArray and: [context size = 2])
   ifFalse: [component error: 'Exact native source and anchor context required'].
 source := context first. roots := context last.
 ((source isKindOf: SGTopGraphicsBlockDB) and: [roots size <= 100000])
   ifFalse: [component error: 'Bounded complete source anchors required'].
 owner := source dbObject.
 kindFor := [:value | | name | name := value class name asString.
   (value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]]])
     ifTrue: ['constant'] ifFalse: [value == owner ifTrue: ['boundary'] ifFalse: [
   (value isString or: [value isKindOf: ByteArray]) ifTrue: ['value'] ifFalse: [
   (#('Dictionary' 'IdentityDictionary' 'Array' 'OrderedCollection') includes: name)
     ifTrue: ['collection'] ifFalse: [
   ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
     ifTrue: ['fields'] ifFalse: [component error: 'Unsupported native source image class ', name]]]]]
 ].
 capture := [:anchors | | captured |
   captured := IdentityDictionary new.
   walk := [:value :depth | | kind saved |
     depth > 128 ifTrue: [component error: 'Native source image depth bound exceeded'].
     kind := kindFor value: value.
     (kind ~= 'constant' and: [(captured includesKey: value) not]) ifTrue: [
       captured size >= 100000 ifTrue: [component error: 'Native source image object bound exceeded'].
       kind = 'boundary' ifTrue: [saved := nil] ifFalse: [
       kind = 'fields' ifTrue: [value class isVariable
         ifTrue: [component error: 'Indexed native source fields unavailable'].
         saved := ((1 to: value class instSize) collect: [:slot | value instVarAt: slot]) asArray]
       ifFalse: [value size > 100000 ifTrue: [component error: 'Native source collection bound exceeded'].
         saved := value copy]].
       captured at: value put: (Array with: kind with: saved).
       kind = 'fields' ifTrue: [saved do: [:child | walk value: child value: depth + 1]].
       kind = 'collection' ifTrue: [(value isKindOf: Dictionary)
         ifTrue: [saved keysAndValuesDo: [:key :child | walk value: key value: depth + 1.
           walk value: child value: depth + 1]]
         ifFalse: [saved do: [:child | walk value: child value: depth + 1]]]
     ]].
   walk value: source value: 0.
   anchors do: [:anchor | walk value: anchor value: 0]. captured
 ].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:slot | (left at: slot) == (right at: slot)]]].
 sameContents := [:object :saved | object size = saved size and: [
   (object isKindOf: Dictionary) ifTrue: [saved keys allSatisfy: [:key |
     (object keys anySatisfy: [:currentKey | currentKey == key]) and: [(object at: key) == (saved at: key)]]]
   ifFalse: [sameOrder value: object value: saved]]].
 verify := [:savedImages | savedImages keys allSatisfy: [:object | | entry |
   entry := savedImages at: object.
   entry first = 'boundary' ifTrue: [object == owner] ifFalse: [
   entry first = 'fields' ifTrue: [object class instSize = entry last size and: [
     (1 to: entry last size) allSatisfy: [:slot | (object instVarAt: slot) == (entry last at: slot)]]]
   ifFalse: [entry first = 'value' ifTrue: [object class == entry last class and: [object = entry last]]
   ifFalse: [sameContents value: object value: entry last]]]]].
 cloneImages := [:savedImages | | memo clone |
   (savedImages isKindOf: IdentityDictionary) ifFalse: [component error: 'Retained source images required'].
   memo := IdentityDictionary new.
   clone := [:value :depth | | kind entry copied saved |
     depth > 128 ifTrue: [component error: 'Merged source clone depth bound exceeded'].
     kind := kindFor value: value.
     (#('constant' 'boundary') includes: kind) ifTrue: [value] ifFalse: [
     memo at: value ifAbsent: [
       entry := savedImages at: value ifAbsent: [component error: 'Merged source reference lacks an exact image'].
       entry first = kind ifFalse: [component error: 'Merged source reference image kind differs'].
       saved := entry last.
       copied := kind = 'fields' ifTrue: [value shallowCopy]
         ifFalse: [(value isKindOf: Dictionary) ifTrue: [value class new] ifFalse: [saved copy]].
       memo at: value put: copied.
       kind = 'fields' ifTrue: [1 to: saved size do: [:slot |
         copied instVarAt: slot put: (clone value: (saved at: slot) value: depth + 1)]]
       ifFalse: [kind = 'collection' ifTrue: [(value isKindOf: Dictionary)
         ifTrue: [saved keysAndValuesDo: [:key :child |
           copied at: (clone value: key value: depth + 1) put: (clone value: child value: depth + 1)]]
         ifFalse: [1 to: saved size do: [:slot |
           copied at: slot put: (clone value: (saved at: slot) value: depth + 1)]]]].
       copied]]
   ]. clone value: source value: 0
 ].
 images := capture value: roots.
 result := Dictionary new at: 'profile' put: 'native_source_images_v1';
   at: 'sourceRoot' put: source; at: 'owner' put: owner; at: 'snapshots' put: images;
   at: 'captureImages' put: capture; at: 'verifyImages' put: verify;
   at: 'verify' put: [verify value: images]; at: 'cloneImages' put: cloneImages;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_SOURCE_IMAGES_ERROR: ', error messageText]
]
