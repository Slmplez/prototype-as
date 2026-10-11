[:record :members |
 | parent collection ids tokens seen tokenFor data encode out signature |
 parent := record at: 'orderParent'. collection := record at: 'orderCollection'.
 parent children == collection ifFalse: [record error: 'Parent order collection binding changed'].
 (collection class = OrderedCollection and: [members size <= 100000])
   ifFalse: [record error: 'Bounded ordered native parent image required'].
 ids := record at: 'orderIds'.
 ids class = IdentityDictionary ifFalse: [record error: 'Exact native order identity table required'].
 (record includesKey: 'orderIdsBinding') ifTrue: [
   ids == (record at: 'orderIdsBinding') ifFalse: [record error: 'Original parent order identity table changed'].
   (record at: 'orderOriginalIds') keysAndValuesDo: [:object :key |
     (ids at: object ifAbsent: [nil]) = key ifFalse: [record error: 'Original native member token changed']]
 ].
 tokenFor := [:object | ids at: object ifAbsentPut: [
   ids size >= 100002 ifTrue: [record error: 'Parent order identity capacity reached'].
   'o', (ids size + 1) printString]].
 seen := IdentityDictionary new. tokens := OrderedCollection new.
 tokenFor value: parent. tokenFor value: collection.
 members do: [:object |
   (seen includesKey: object) ifTrue: [record error: 'Duplicate native parent member'].
   seen at: object put: true. tokens add: (tokenFor value: object)].
 data := Dictionary new at: 'profile' put: 'native_parent_order_v1';
   at: 'native_token' put: (record at: 'orderToken'); at: 'diagram' put: (record at: 'diagramName');
   at: 'parent' put: (ids at: parent); at: 'collection' put: (ids at: collection);
   at: 'complete' put: true; at: 'members' put: tokens asArray; yourself.
 signature := WriteStream on: String new.
 signature nextPutAll: (record at: 'orderToken'); nextPut: $,;
   nextPutAll: (ids at: parent); nextPut: $,; nextPutAll: (ids at: collection).
 tokens do: [:key | signature nextPut: $,; nextPutAll: key].
 out := WriteStream on: String new.
 encode := [:value |
   value isString ifTrue: [
     out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:byte :index |
       index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'
   ] ifFalse: [
   value == true ifTrue: [out nextPutAll: 'true'] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [
     out nextPutAll: '{"$d":['. value keys asSortedCollection doWithIndex: [:key :index |
       index > 1 ifTrue: [out nextPut: $,]. out nextPut: $[. encode value: key.
       out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [out nextPut: $[. value doWithIndex: [:item :index |
     index > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]]]]].
 encode value: data.
 Dictionary new at: 'image' put: out contents; at: 'signature' put: signature contents; at: 'value' put: data; yourself
]
