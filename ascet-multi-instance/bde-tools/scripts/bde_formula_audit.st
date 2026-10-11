[:component :diagramName :targets |
 component handleExceptionsIn: [
 | rows out encode config bindings hex |
 hex := [:oid | | s digits | s := WriteStream on: String new. digits := '0123456789abcdef'.
   oid do: [:b | s nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. s contents].
 rows := OrderedCollection new. config := component getDefaultData.
 bindings := config isNil ifTrue: [nil] ifFalse: [config item instVarNamed: 'dependentParameters'].
 component getAllVariables do: [:m |
   m element isDependent ifTrue: [
     | native formula row entry formals detached calculated |
     native := m element. formula := native instVarNamed: 'formula'.
     row := Dictionary new at: 'name' put: m getName; at: 'ref' put: ('m_', (hex value: native xmlOID));
       at: 'native_class' put: native class name asString; at: 'api_class' put: m class name asString;
       at: 'scope' put: m getScope; at: 'model_type' put: m getModelType;
       at: 'api_valid' put: m isValid; yourself.
     formula isNil ifTrue: [component error: 'Dependent formula missing'].
     row at: 'formula_class' put: formula class name asString; at: 'owner_matches' put: (formula owner == native);
       at: 'formula_identity' put: formula identityHash;
       at: 'text' put: formula formulaBasic; at: 'compiled' put: formula esFormula.
     formals := OrderedCollection new.
     entry := bindings isNil ifTrue: [nil] ifFalse: [bindings at: native aliasName ifAbsent: [nil]].
     formula identifiers do: [:id | | actual |
       actual := entry isNil ifTrue: [nil] ifFalse: [entry at: id aliasName ifAbsent: [nil]].
       formals add: (Dictionary new at: 'name' put: id identifier; at: 'oid' put: (hex value: id aliasName);
         at: 'identity' put: id identityHash;
         at: 'actual_ref' put: (actual isNil ifTrue: [nil] ifFalse: ['m_', (hex value: actual)]); yourself)
     ].
     row at: 'formals' put: formals; at: 'configuration_oid' put: (config isNil ifTrue: [nil] ifFalse: [config getOID]);
       at: 'binding_entry_class' put: entry class name asString; at: 'binding_entry_identity' put: entry identityHash.
     detached := formula copy. detached formula: ('(', formula formulaBasic, ') + 1').
     calculated := detached calculateEsFormula.
     row at: 'copy_valid' put: calculated isError not; at: 'copy_compiled' put: detached esFormula;
       at: 'copy_text' put: detached formulaBasic;
       at: 'original_unchanged' put: (formula formulaBasic ~= detached formulaBasic);
       at: 'copy_formals' put: detached getIdentifierNamens.
     row at: 'parsed_names' put: ((detached getIDsAndIndizes: detached formulaBasic) collect: [:pair |
       Dictionary new at: 'value' put: pair first printString; at: 'class' put: pair first class name asString; yourself]).
     rows add: row
   ]
 ].
 out := WriteStream on: String new.
 encode := [:x |
   x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   ((x isKindOf: String) or: [x isSymbol or: [x isKindOf: Character]]) ifTrue: [
     out nextPutAll: '{"$s":['. x asString asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [
     | first | first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:k | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: k. out nextPut: $,. encode value: (x at: k). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [
     | first | first := true. out nextPut: $[. x do: [:v | first ifFalse: [out nextPut: $,]. first := false. encode value: v]. out nextPut: $]
   ] ifFalse: [component error: ('Unsupported formula audit value ', x class name asString)]]]]]
 ].
 encode value: (Dictionary new at: 'formulas' put: rows; yourself). out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: formula audit ', error messageText]
]
