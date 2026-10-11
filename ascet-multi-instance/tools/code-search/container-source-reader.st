[ | csrRecordReader |
 csrRecordReader := @@SAVED_CONTAINER_READER@@.
 [:csrAPI :csrProxy :csrMethods |
  | csrResult |
  csrResult := nil.
  "Always prefer the current model cache, including uncommitted edits. A saved
  projection stays owned by this request and is never put into the DB cache."
  (csrProxy getCachedDBObject isNil and: [csrProxy isModified not]) ifTrue: [
   csrResult := csrAPI handleExceptionsIn: [
    | csrRecord csrSaved csrContainer csrFields csrByBytes csrProcedures |
    csrRecord := csrProxy dbInterface readRecord: csrProxy.
    csrRecord isError ifTrue: [csrAPI error: 'CONTAINER_RECORD_UNAVAILABLE'].
    (csrProxy dbInterface linDeLin loadMethodFromRecord: csrRecord) = #loadSwapper:blobStart:
      ifFalse: [csrAPI error: 'CONTAINER_DECODER_UNSUPPORTED'].
    csrFields := (SGCodeContainerExternal allInstVarNames collect: [:csrName | csrName asString]) asArray.
    csrFields = #('variantKey' 'targetOptions' 'cSource' 'hSource' 'h2Source' 'oSource' 'dbObject' 'encryption' 'cProcedureSources' 'localHSource')
      ifFalse: [csrAPI error: 'CONTAINER_NATIVE_LAYOUT_UNSUPPORTED'].
    csrSaved := csrRecordReader valueWithArguments: (Array with: csrAPI with: csrRecord with: csrRecord class blobStart with: [:csrPhase | nil]).
    csrByBytes := Dictionary new.
    (csrSaved at: #procedures) keysAndValuesDo: [:csrAlias :csrBody | csrByBytes at: csrAlias asString put: csrBody].
    csrProcedures := Dictionary new.
    csrMethods do: [:csrMethod | | csrBody csrAlias | csrAlias := csrMethod aliasName.
      csrBody := csrByBytes at: csrAlias asByteArray asString ifAbsent: [nil].
      csrBody ifNotNil: [csrProcedures at: csrAlias put: csrBody]].
    csrContainer := SGCodeContainerExternal basicNew.
    csrContainer instVarNamed: 'dbObject' put: csrProxy.
    csrContainer instVarNamed: 'cProcedureSources' put: csrProcedures.
    csrContainer instVarNamed: 'cSource' put: (csrSaved at: #external_c).
    csrContainer instVarNamed: 'hSource' put: (csrSaved at: #external_h).
    csrContainer instVarNamed: 'localHSource' put: (csrSaved at: #header).
    csrContainer
   ] ifFail: [:csrFailure | nil]
  ]. csrResult
 ]
] value
