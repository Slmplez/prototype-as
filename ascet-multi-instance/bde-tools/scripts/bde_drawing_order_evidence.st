[:parentReader | [:component :record :members | [:capture |
 | data numbers encoded |
 data := (parentReader value: record value: members) at: 'value'.
 numbers := (1 to: members size) asArray.
 capture ifTrue: [members doWithIndex: [:member :index | | number |
   number := member basicGraphObject drawingOrder.
   (number isInteger and: [number = index])
     ifFalse: [component error: 'Normalized unique native drawing order required']
 ]].
 data at: 'profile' put: 'native_drawing_order_v1'; at: 'numbers' put: numbers.
 encoded := (record at: 'encodeObservation') value: data.
 Dictionary new at: 'image' put: encoded; at: 'value' put: data; yourself
]]]
