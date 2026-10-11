[:component :value |
 component handleExceptionsIn: [
 | memo clone visited |
 memo := IdentityDictionary new. visited := 0.
 clone := [:item :depth | | result |
   visited := visited + 1.
   (visited > 1000000 or: [depth > 128]) ifTrue: [component error: 'Typed observation copy bound exceeded'].
   (item isNil or: [item isNumber or: [(item isKindOf: Symbol) or: [item == true or: [item == false]]]])
     ifTrue: [item] ifFalse: [
     memo at: item ifAbsent: [
       item isString ifTrue: [result := item copy. memo at: item put: result]
       ifFalse: [(item isKindOf: Dictionary) ifTrue: [
         result := Dictionary new. memo at: item put: result.
         item keysAndValuesDo: [:key :child |
           (key isString or: [key isInteger or: [key isKindOf: Symbol]])
             ifFalse: [component error: 'Scalar typed observation key required'].
           result at: key put: (clone value: child value: depth + 1)]
       ] ifFalse: [item isCollection ifTrue: [| members |
         members := item asArray. result := Array new: members size. memo at: item put: result.
         1 to: members size do: [:index | result at: index put: (clone value: (members at: index) value: depth + 1)]
       ] ifFalse: [component error: 'Unsupported typed observation class ', item class name asString]]]. result
     ]
   ]].
 clone value: value value: 0
 ] ifFail: [:error | 'BDE_OBSERVATION_COPY_ERROR: ', error messageText]
]
