[:source :key :name |
 | roots record block |
 (#('bde_database_identity.st' 'bde_class_interface_probe.st' 'bde_class_configuration_read.st'
   'bde_public_graph_read.st' 'bde_public_signature_read.st' 'bde_class_callers.st'
   'bde_structure_read.st' 'bde_class_recovery_probe.st') includes: name)
   ifFalse: [Smalltalk error: 'Unsupported fixed read template'].
 (source isString and: [source size <= 196608])
   ifFalse: [Smalltalk error: 'Fixed read template source bound exceeded'].
 (key isString and: [key size = 64])
   ifFalse: [Smalltalk error: 'Fixed read template key required'].
 roots := Smalltalk at: #DogeBDEClassReadTemplatesV1 ifAbsentPut: [Dictionary new].
 record := roots at: key ifAbsent: [nil].
 record isNil ifTrue: [
   roots size >= 32 ifTrue: [Smalltalk error: 'Fixed read template cache capacity reached'].
   block := EsCompiler evaluate: source.
   block class name asString = 'BlockContextTemplate'
     ifFalse: [Smalltalk error: 'Fixed read template compilation failed'].
   record := Array with: name copy with: source copy with: block.
   roots at: key put: record
 ] ifFalse: [
   (record first = name and: [(record at: 2) = source])
     ifFalse: [Smalltalk error: 'Fixed read template source identity differs']
 ].
 record last
]
