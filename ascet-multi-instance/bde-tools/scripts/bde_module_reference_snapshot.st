"Bounded detached Module inbound image. Database rows are frozen before the
 loaded-reference merger runs; neither returned list is a durable write plan."
[:component |
 | owner dbObject rows databaseRows loadedRows |
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact native Module BDE owner required for inbound reference capture: ',
     component class name asString, '/', component item class name asString].
 owner := component item. dbObject := owner dbObject.
 rows := [:referenceRecord | | result ids |
   referenceRecord isError ifTrue: [component error: 'Module inbound reference query failed'].
   referenceRecord isReferencedBys size > 4096
     ifTrue: [component error: 'Complete Module inbound reference bound exceeded'].
   result := ((referenceRecord isReferencedBys collect: [:key |
     Array with: key globalIdString copy with: key className asString copy])
     asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]]) asArray.
   ids := Set new.
   result do: [:row |
     ((row allSatisfy: [:cell | cell size > 0 and: [cell size <= 256]]) and: [(ids includes: row first) not])
       ifFalse: [component error: 'Ambiguous or invalid Module inbound OID/class pair'].
     ids add: row first].
   result
 ].
 databaseRows := rows value: dbObject readIsReferencedByOnly.
 loadedRows := rows value: dbObject readReferences.
 (component item == owner and: [owner dbObject == dbObject])
   ifFalse: [component error: 'Module inbound owner/database changed during read'].
 Dictionary new at: 'owner_references' put: loadedRows;
   at: 'owner_database_record_references' put: databaseRows; yourself
]
