"Fixed observational whole-reference scan. Retain partial material; never grant before/write authority."
[:component :context :database |
 | stage capture report |
 stage := 'binding'. capture := nil. report := nil.
 component handleExceptionsIn: [
 | material root owner ownerDB backend leaf file library association recordClass gvClass gvSize
   indexNumber dataNumber keyLength uniqueNumber unique keys fixed instance keyObject
   originalContext originalFunctionBytes originalFunctionRefs originalMethods originalGVBindings originalKeyBytes originalToken originalGeneration
   events firstRows secondRows recordRows rawReturns rawRecords rawFirst rawSecond rawTransformed gvImages gvIntern
   firstSet secondSet transformedSet semanticSet totalBytes reserve exportBytes slot guard
   readStatus invoke scanKeys finalize failures countBefore countAfter countEvent
   privateFixed recordResult recordEvent allocatedLength lengthEvent recordBuffer rereadEvent
   recordRaw globalBytes attribute semanticKey row transformTarget transformEvent transformedRaw
   firstTerminal secondTerminal recordTerminal successful censusMatches switchResult |
 (context class == Dictionary and: [(context at: 'phase' ifAbsent: [nil]) = 'profiled'])
   ifFalse: [component error: 'Original completed reference file profile required'].
 (((context at: 'report') at: 'profile') = 'native_reference_file_profile_v2' and: [
   ((context at: 'report') at: 'gv_pool_bindings_rechecked' ifAbsent: [false]) == true])
     ifFalse: [component error: 'Fixed v2 reference profile with original GV pool bindings required'].
 (context includesKey: 'capture') ifTrue: [component error: 'Reference file capture cannot replay, including incomplete captures'].
 capture := Dictionary new at: 'phase' put: 'incomplete'; at: 'context' put: context; yourself.
 context at: 'capture' put: capture.
 report := Dictionary new at: 'profile' put: 'native_reference_file_observation_v3'; at: 'phase' put: 'incomplete';
   at: 'complete_before_authorized' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
   at: 'cross_process_atomic' put: false; at: 'terminal_semantics_verified' put: false;
   at: 'max_records' put: 100000; at: 'max_record_bytes' put: 4194304; at: 'max_total_payload_bytes' put: 134217728;
   at: 'identity_before_checked' put: false; at: 'identity_after_checked' put: false;
   at: 'census_matches' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'commit_called' put: false; at: 'records' put: #(); at: 'keys_first' put: #();
   at: 'keys_second' put: #(); at: 'events' put: #(); at: 'failures' put: #(); at: 'gv_images' put: #(); yourself.
 capture at: 'report' put: report.
 events := OrderedCollection new. firstRows := OrderedCollection new. secondRows := OrderedCollection new.
 recordRows := OrderedCollection new. failures := OrderedCollection new.
 gvImages := OrderedCollection new. gvIntern := Dictionary new.
 rawReturns := OrderedCollection new. rawRecords := OrderedCollection new.
 rawFirst := OrderedCollection new. rawSecond := OrderedCollection new. rawTransformed := OrderedCollection new.
 capture at: 'events' put: events; at: 'recordRows' put: recordRows; at: 'firstRows' put: firstRows;
   at: 'secondRows' put: secondRows; at: 'failures' put: failures; at: 'rawReturns' put: rawReturns;
   at: 'rawRecords' put: rawRecords; at: 'rawKeysFirst' put: rawFirst;
   at: 'rawKeysSecond' put: rawSecond; at: 'rawTransformedKeys' put: rawTransformed.
 capture at: 'gvImages' put: gvImages; at: 'gvIntern' put: gvIntern.
 totalBytes := 0. successful := false. censusMatches := false.
 finalize := [
   report at: 'events' put: events asArray; at: 'records' put: recordRows asArray;
     at: 'keys_first' put: firstRows asArray; at: 'keys_second' put: secondRows asArray;
     at: 'failures' put: failures asArray; at: 'gv_images' put: gvImages asArray; at: 'reserved_payload_bytes' put: totalBytes;
     at: 'records_observed' put: recordRows size; at: 'first_keys_observed' put: firstRows size;
     at: 'second_keys_observed' put: secondRows size; at: 'census_matches' put: censusMatches.
   capture at: 'lastStage' put: stage. report at: 'last_stage' put: stage.
   report].
 slot := [:slotObject :slotName | | slotNames slotIndex |
   slotNames := (slotObject class allInstVarNames collect: [:fieldName | fieldName asString]) asArray.
   slotIndex := slotNames indexOf: slotName.
   slotIndex > 0 ifFalse: [component error: 'Original reference scan slot unavailable: ', slotName].
   slotObject instVarAt: slotIndex].
 reserve := [:requestedBytes |
   (requestedBytes isInteger and: [requestedBytes >= 0 and: [requestedBytes <= (134217728 - totalBytes)]])
     ifFalse: [component error: 'Complete reference scan payload bound exceeded; partial capture retained'].
   totalBytes := totalBytes + requestedBytes. capture at: 'reservedPayloadBytes' put: totalBytes].
 exportBytes := [:byteArray |
   byteArray class == ByteArray ifFalse: [component error: 'Raw copied ByteArray required; structure indexing is forbidden'].
   ((1 to: byteArray size) collect: [:byteIndex | | octet |
     octet := byteArray at: byteIndex.
     (octet class == SmallInteger and: [octet >= 0 and: [octet <= 255]])
       ifFalse: [component error: 'Exact reference byte required']. octet]) asArray].
 originalContext := Dictionary new.
 #('material' 'root' 'owner' 'backend' 'leaf' 'file' 'library' 'libraryAssociation' 'recordClass'
   'gvClass' 'gvSize' 'indexNumber' 'dataNumber' 'keyLength' 'uniqueNumber' 'generation' 'token'
   'functions' 'functionRefs' 'functionBytes' 'methodEvidence' 'gvBindings' 'report') do: [:contextName |
     originalContext at: contextName put: (context at: contextName)].
 capture at: 'originalContext' put: originalContext.
 material := context at: 'material'. root := context at: 'root'. owner := context at: 'owner'.
 ownerDB := material at: 'ownerDB'. backend := context at: 'backend'.
 leaf := context at: 'leaf'. file := context at: 'file'. library := context at: 'library'.
 association := context at: 'libraryAssociation'. recordClass := context at: 'recordClass'.
 gvClass := context at: 'gvClass'. gvSize := context at: 'gvSize'.
 indexNumber := context at: 'indexNumber'. dataNumber := context at: 'dataNumber'.
 keyLength := context at: 'keyLength'. uniqueNumber := context at: 'uniqueNumber'.
 unique := slot value: leaf value: 'uniqueIndex'. keys := slot value: leaf value: 'ctKey'.
 fixed := slot value: leaf value: 'fixedRecord'. instance := slot value: leaf value: 'ctInstance'.
 keyObject := unique value2. originalToken := (context at: 'token') copy.
 originalGeneration := context at: 'generation'.
 originalFunctionBytes := ((context at: 'functionBytes') collect: [:savedFunctionBytes | savedFunctionBytes copy]) asArray.
 originalFunctionRefs := (context at: 'functionRefs') asArray copy.
 originalMethods := ((context at: 'methodEvidence') collect: [:savedMethod | savedMethod copy]) asArray.
 originalGVBindings := ((context at: 'gvBindings') collect: [:savedGVBinding |
   Array with: savedGVBinding first with: (savedGVBinding at: 2) copy with: savedGVBinding last]) asArray.
 originalKeyBytes := keys memcpyFrom: 0 to: keys size - 1.
 capture at: 'originalOwnerDB' put: ownerDB; at: 'originalUnique' put: unique; at: 'originalKeyObject' put: keyObject;
   at: 'originalKeys' put: keys; at: 'originalFixed' put: fixed; at: 'originalInstance' put: instance;
   at: 'originalFunctionBytes' put: originalFunctionBytes; at: 'originalKeyBytes' put: originalKeyBytes;
   at: 'originalFunctionRefs' put: originalFunctionRefs; at: 'originalMethods' put: originalMethods;
   at: 'originalGVBindings' put: originalGVBindings;
   at: 'originalToken' put: originalToken; at: 'originalGeneration' put: originalGeneration.
 report at: 'native_token' put: originalToken; at: 'component_oid' put: component getOID;
   at: 'generation' put: originalGeneration; at: 'library_class' put: library class name asString;
   at: 'leaf_class' put: leaf class name asString; at: 'file_class' put: file class name asString;
   at: 'unique_number' put: uniqueNumber; at: 'key_length' put: keyLength;
   at: 'data_number' put: dataNumber; at: 'index_number' put: indexNumber;
   at: 'functions' put: (context at: 'functions').
 guard := [
   originalContext keysDo: [:originalName |
     (context at: originalName) == (originalContext at: originalName)
       ifFalse: [component error: 'Reference profile original binding changed: ', originalName]].
   ((context at: 'phase') = 'profiled' and: [(context at: 'capture') == capture and: [
     (context at: 'token') = originalToken and: [(context at: 'generation') = originalGeneration]]])
       ifFalse: [component error: 'Original one-shot reference profile changed'].
   ((material at: 'root') == root and: [(material at: 'owner') == owner and: [owner == component item and: [
     (root at: 'owner') == owner and: [(material at: 'ownerDB') == ownerDB and: [owner dbObject == ownerDB and: [
     (material at: 'backend') == backend and: [(material at: 'access') == database dbAccess and: [
     (material at: 'controller') == database dbInterface and: [(material at: 'phase') = 'captured' and: [
     (material at: 'generation') = originalGeneration and: [(root at: 'generation') = originalGeneration]]]]]]]]]]])
       ifFalse: [component error: 'Original reference owner/backend/epoch binding changed'].
   (backend class name asString = 'DBReferenceInterface32' and: [
     (slot value: ownerDB value: 'interface') == backend and: [(slot value: backend value: 'referenceInterface') == leaf and: [
     leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [
     (slot value: leaf value: 'ctIFIL') == file and: [file class name asString = 'CTSpaceCheckingIFil']]]]])
       ifFalse: [component error: 'Original reference file route changed'].
   ((slot value: leaf value: 'ctInstance') == instance and: [(slot value: leaf value: 'ctKey') == keys and: [
     (slot value: leaf value: 'uniqueIndex') == unique and: [(slot value: leaf value: 'fixedRecord') == fixed and: [
     unique key asString = 'globalId' and: [unique value1 = 0 and: [unique value2 == keyObject and: [
     keyObject class == DBGlobalAttributeIdKey and: [uniqueNumber = 0 and: [keyLength = 53 and: [
     (keys keyLengthFor: 0) = 53 and: [(keys keyDupFor: 0) = 0 and: [
     (keys memcpyFrom: 0 to: keys size - 1) = originalKeyBytes and: [
     recordClass == CTreeVariableAttributeRecord and: [fixed class == recordClass and: [
     file tfilnum = dataNumber and: [(file indexFileNumber: 0) = indexNumber]]]]]]]]]]]]]]]])
       ifFalse: [component error: 'Original reference instance/schema/index changed'].
   (association class == Association and: [association key asString = 'CTreeLibrary' and: [association value == library and: [
     library class name asString = 'CTreestdFputFgetDLL' and: [gvClass == CTGVCTreestdFputFget and: [
     library gvClass == gvClass and: [gvSize isInteger and: [gvSize > 0 and: [gvSize <= 4096 and: [gvClass fixedSize = gvSize]]]]]]]]])
       ifFalse: [component error: 'Original reference library/GV binding changed'].
   originalMethods do: [:methodKey | | methodDefining methodDictionary methodArray |
     methodDefining := methodKey first whichClassIncludesSelector: (methodKey at: 4).
     methodDictionary := methodDefining methodDictionary.
     methodArray := slot value: methodDictionary value: 'methodsArray'.
     methodArray isNil ifTrue: [methodArray := slot value: methodDefining value: 'methodsArray'].
     (methodDefining == (methodKey at: 2) and: [methodArray == (methodKey at: 3) and: [
       (methodArray basicAt: (methodKey at: 5)) == (methodKey at: 4) and: [
       (methodArray basicAt: (methodKey at: 5) + 1) = methodKey last]]])
         ifFalse: [component error: 'Original reference method slot changed']].
   (context at: 'functionRefs') size = originalFunctionBytes size
     ifFalse: [component error: 'Original reference PlatformFunction census changed'].
   (context at: 'functionRefs') doWithIndex: [:functionRef :functionIndex | | currentFunctionBytes |
     functionRef == (originalFunctionRefs at: functionIndex)
       ifFalse: [component error: 'Original reference PlatformFunction identity changed'].
     currentFunctionBytes := ((1 to: functionRef size) collect: [:functionByteIndex | functionRef at: functionByteIndex]) asArray.
     currentFunctionBytes = (originalFunctionBytes at: functionIndex)
       ifFalse: [report at: 'changed_function_index' put: functionIndex;
         at: 'changed_function_before' put: (originalFunctionBytes at: functionIndex);
         at: 'changed_function_after' put: currentFunctionBytes.
         component error: 'Original reference PlatformFunction bytes changed; dynamic bytes retained']].
   (originalGVBindings size = 5 and: [(context at: 'gvBindings') size = 5])
     ifFalse: [component error: 'Complete original five GV pool bindings required'].
   originalGVBindings doWithIndex: [:gvBinding :gvBindingIndex |
     (((context at: 'gvBindings') at: gvBindingIndex) first == gvBinding first and: [
       gvBinding first key = (gvBinding at: 2) and: [gvBinding first value isInteger and: [
       gvBinding first value = gvBinding last]]])
         ifFalse: [component error: 'Original GV pool identity/key content/value changed']].
   true].
 readStatus := [:statusEvent | | gvPointer gvRaw gvCopy gvImageIndex |
   statusEvent at: 'gv_state' put: 'sent'.
   gvPointer := library getCTreeGV.
   statusEvent at: 'gv_pointer' put: gvPointer; at: 'gv_pointer_class' put: gvPointer class name asString.
   rawReturns add: (Array with: 'getCTreeGV' with: gvPointer).
   (gvPointer isInteger and: [gvPointer ~= 0]) ifFalse: [component error: 'Current original reference GV pointer unavailable'].
   gvRaw := (OSPtr address: gvPointer) memcpyFrom: 0 to: gvSize - 1.
   gvImageIndex := gvIntern at: gvRaw ifAbsent: [
     (capture at: 'gvCopies' ifAbsentPut: [OrderedCollection new]) add: gvRaw.
     gvImages add: (exportBytes value: gvRaw).
     gvIntern at: gvRaw put: gvImages size. gvImages size].
   gvCopy := gvClass reference: gvRaw.
   statusEvent at: 'gv_image_index' put: gvImageIndex;
     at: 'isam' put: gvCopy sisam_err; at: 'uerr' put: gvCopy suerr_cod;
     at: 'sysio' put: gvCopy ssysiocod; at: 'file' put: gvCopy sisam_fil;
     at: 'gv_state' put: 'observed'. statusEvent].
 invoke := [:operationName :operationBlock | | operationEvent operationReturn |
   reserve value: gvSize.
   operationEvent := Dictionary new at: 'operation' put: operationName; at: 'stage' put: stage;
     at: 'sequence' put: events size + 1; at: 'state' put: 'sent'; yourself.
   events add: operationEvent.
   operationReturn := operationBlock value.
   rawReturns add: (Array with: operationName with: operationReturn).
   operationEvent at: 'native_return' put: operationReturn; at: 'return_class' put: operationReturn class name asString;
     at: 'state' put: 'returned'.
   operationReturn isInteger ifFalse: [component error: 'Exact integer reference primitive result required'].
   readStatus value: operationEvent.
   operationEvent at: 'state' put: 'observed'. operationEvent].
 scanKeys := [:keyPassName :keyRows :keyRawCopies | | keyBuffer keyEvent keyPosition keySet keyCopy keyRow |
   keyBuffer := ByteArray new: keyLength. keySet := Set new.
   (capture at: 'keyBuffers' ifAbsentPut: [OrderedCollection new]) add: keyBuffer.
   keyEvent := invoke value: 'firstKey:idxval:' value: [library firstKey: indexNumber idxval: keyBuffer].
   keyEvent at: 'pass' put: keyPassName. keyPosition := keyEvent at: 'native_return'.
   [keyPosition ~= 0] whileTrue: [
     keyRows size >= 100000 ifTrue: [component error: 'Complete reference key count bound exceeded'].
     reserve value: keyLength. keyCopy := keyBuffer copy. keyRawCopies add: keyCopy.
     keyRow := Dictionary new at: 'ordinal' put: keyRows size + 1; at: 'position' put: keyPosition;
       at: 'event_sequence' put: (keyEvent at: 'sequence'); at: 'key_bytes' put: (exportBytes value: keyCopy); yourself.
     keyRows add: keyRow.
     (keySet includes: keyCopy) ifTrue: [component error: 'Duplicate original unique index key observed'].
     keySet add: keyCopy.
     keyEvent := invoke value: 'nextKey:idxval:' value: [library nextKey: indexNumber idxval: keyBuffer].
     keyEvent at: 'pass' put: keyPassName. keyPosition := keyEvent at: 'native_return'].
   keyEvent at: 'terminal_kind' put: 'observed_zero_key_return'; at: 'terminal_semantics_verified' put: false.
   keyEvent at: 'terminal_diagnostic' put:
     (((keyEvent at: 'isam') = 0 and: [(keyEvent at: 'uerr') = 0 and: [(keyEvent at: 'sysio') = 0]])
       ifTrue: ['unclassified_zero_gv'] ifFalse: ['unclassified_nonzero_gv']).
   Array with: keySet with: keyEvent].
 [
   component handleExceptionsIn: [
     stage := 'pre-identity'. guard value. report at: 'identity_before_checked' put: true.
     stage := 'switch-original-instance'.
     reserve value: gvSize.
     switchResult := leaf switchInstance. capture at: 'switchResult' put: switchResult.
     report at: 'switch_result_class' put: switchResult class name asString;
       at: 'switch_result_is_original_instance' put: switchResult == instance.
     switchResult == instance ifFalse: [component error: 'Original CTree instance switch did not return the original instance'].
     countEvent := Dictionary new at: 'operation' put: 'leaf switchInstance'; at: 'stage' put: stage;
       at: 'sequence' put: events size + 1; at: 'state' put: 'returned';
       at: 'wrapper_return_class' put: switchResult class name asString; yourself.
     events add: countEvent. readStatus value: countEvent. countEvent at: 'state' put: 'observed'.
     stage := 'count-before'.
     countEvent := invoke value: 'nbrOfKeyEntries:' value: [library nbrOfKeyEntries: indexNumber].
     countBefore := countEvent at: 'native_return'. report at: 'count_before' put: countBefore.
     (countBefore >= 0 and: [countBefore <= 100000]) ifFalse: [component error: 'Complete initial key count outside bound'].
     (countBefore = 0 and: [(countEvent at: 'isam') ~= 0 or: [(countEvent at: 'uerr') ~= 0 or: [(countEvent at: 'sysio') ~= 0]]])
       ifTrue: [component error: 'Zero initial key count has a native error'].
     stage := 'keys-first'.
     firstTerminal := scanKeys value: 'first' value: firstRows value: rawFirst.
     firstSet := firstTerminal first. firstTerminal := firstTerminal last.
     report at: 'first_key_terminal' put: firstTerminal.
     stage := 'records'. privateFixed := fixed copy. capture at: 'privateFixedRecord' put: privateFixed.
     semanticSet := Set new. transformedSet := Set new.
     recordEvent := invoke value: 'firstRecord:recPtr:' value: [library firstRecord: dataNumber recPtr: privateFixed].
     recordResult := recordEvent at: 'native_return'.
     [recordResult = 0] whileTrue: [
       recordRows size >= 100000 ifTrue: [component error: 'Complete reference record count bound exceeded'].
       lengthEvent := invoke value: 'vRecordLength:' value: [library vRecordLength: dataNumber].
       allocatedLength := lengthEvent at: 'native_return'.
       (allocatedLength >= recordClass fixedSize and: [allocatedLength <= 4194304])
         ifFalse: [component error: 'Complete physical variable record length outside bound'].
       reserve value: allocatedLength.
       recordBuffer := recordClass createRequiredSize: allocatedLength.
       rawRecords add: recordBuffer.
       row := Dictionary new at: 'ordinal' put: recordRows size + 1; at: 'state' put: 'allocated';
         at: 'allocated_length' put: allocatedLength; at: 'cursor_event_sequence' put: (recordEvent at: 'sequence');
         at: 'length_event_sequence' put: (lengthEvent at: 'sequence'); yourself.
       recordRows add: row.
       (recordBuffer class == recordClass and: [recordBuffer size >= allocatedLength])
         ifFalse: [component error: 'Exact full private reference record allocation required'].
       rereadEvent := invoke value: 'rereadVRecord:recPtr:varLen:' value: [
         library rereadVRecord: dataNumber recPtr: recordBuffer varLen: allocatedLength].
       row at: 'reread_event_sequence' put: (rereadEvent at: 'sequence'); at: 'state' put: 'native_returned'.
       (rereadEvent at: 'native_return') = 0 ifFalse: [component error: 'Full physical reference record read failed; partial buffer retained'].
       recordRaw := recordBuffer memcpyFrom: 0 to: allocatedLength - 1.
       (capture at: 'recordRawCopies' ifAbsentPut: [OrderedCollection new]) add: recordRaw.
       row at: 'raw_bytes' put: (exportBytes value: recordRaw); at: 'record_class' put: recordClass name asString;
         at: 'fixed_size' put: recordClass fixedSize; at: 'declared_blob_size' put: recordBuffer blobSize.
       globalBytes := recordBuffer globalId. attribute := recordBuffer attributeName asString.
       (globalBytes class == ByteArray and: [globalBytes size = 20 and: [attribute size <= 33]])
         ifFalse: [component error: 'Exact persisted reference scope key required'].
       semanticKey := globalBytes, attribute asByteArray. reserve value: semanticKey size.
       (capture at: 'semanticKeys' ifAbsentPut: [OrderedCollection new]) add: semanticKey.
       row at: 'global_id' put: (exportBytes value: globalBytes); at: 'attribute' put: attribute;
         at: 'semantic_key' put: (exportBytes value: semanticKey); at: 'state' put: 'record_captured'.
       (semanticSet includes: semanticKey) ifTrue: [component error: 'Duplicate physical unique reference scope key observed'].
       semanticSet add: semanticKey.
       recordEvent := invoke value: 'nextRecord:recPtr:' value: [library nextRecord: dataNumber recPtr: privateFixed].
       recordResult := recordEvent at: 'native_return'].
     recordTerminal := recordEvent.
     recordTerminal at: 'terminal_kind' put: 'observed_nonzero_record_return'; at: 'terminal_semantics_verified' put: false.
     report at: 'record_terminal' put: recordTerminal.
     recordTerminal at: 'terminal_diagnostic' put:
       (((recordTerminal at: 'isam') = 0 and: [(recordTerminal at: 'uerr') = 0 and: [(recordTerminal at: 'sysio') = 0]])
         ifTrue: ['unclassified_zero_gv'] ifFalse: ['unclassified_nonzero_gv']).
     stage := 'transform-once-after-records'.
     (capture at: 'semanticKeys' ifAbsent: [#()]) doWithIndex: [:originalSemanticKey :recordOrdinal |
       reserve value: keyLength.
       transformTarget := CTreeKeyTarget create: keyLength fillFrom: originalSemanticKey.
       (capture at: 'transformTargets' ifAbsentPut: [OrderedCollection new]) add: transformTarget.
       transformEvent := invoke value: 'transformKey:target:' value: [library transformKey: indexNumber target: transformTarget].
       (transformEvent at: 'native_return') = 0 ifTrue: [component error: 'Original reference key transform failed'].
       transformedRaw := transformTarget memcpyFrom: 0 to: keyLength - 1.
       rawTransformed add: transformedRaw.
       row := recordRows at: recordOrdinal.
       row at: 'transformed_key' put: (exportBytes value: transformedRaw);
         at: 'transform_event_sequence' put: (transformEvent at: 'sequence').
       (transformedSet includes: transformedRaw) ifTrue: [component error: 'Distinct persisted scope keys map to duplicate unique index key'].
       transformedSet add: transformedRaw].
     stage := 'keys-second'.
     secondTerminal := scanKeys value: 'second' value: secondRows value: rawSecond.
     secondSet := secondTerminal first. secondTerminal := secondTerminal last.
     report at: 'second_key_terminal' put: secondTerminal.
     stage := 'count-after'.
     countEvent := invoke value: 'nbrOfKeyEntries:' value: [library nbrOfKeyEntries: indexNumber].
     countAfter := countEvent at: 'native_return'. report at: 'count_after' put: countAfter.
     (countAfter >= 0 and: [countAfter <= 100000]) ifFalse: [component error: 'Complete final key count outside bound'].
     (countAfter = 0 and: [(countEvent at: 'isam') ~= 0 or: [(countEvent at: 'uerr') ~= 0 or: [(countEvent at: 'sysio') ~= 0]]])
       ifTrue: [component error: 'Zero final key count has a native error'].
     censusMatches := countBefore = countAfter and: [countBefore = firstRows size and: [
       countBefore = secondRows size and: [countBefore = recordRows size and: [
       firstSet = secondSet and: [firstSet = transformedSet]]]]].
     successful := true
   ] ifFail: [:scanFailure |
     failures add: (Dictionary new at: 'stage' put: stage; at: 'message' put: scanFailure messageText; yourself).
     successful := false].
   stage := 'post-identity'.
   component handleExceptionsIn: [guard value. report at: 'identity_after_checked' put: true]
     ifFail: [:guardFailure |
       failures add: (Dictionary new at: 'stage' put: stage; at: 'message' put: guardFailure messageText; yourself).
       successful := false].
 ] ctCritical.
 successful ifTrue: [
   stage := 'finished-observation'.
   report at: 'phase' put: (censusMatches ifTrue: ['observational_census_match'] ifFalse: ['observational_census_mismatch'])
 ] ifFalse: [report at: 'phase' put: 'failed_incomplete'].
 capture at: 'phase' put: (report at: 'phase').
 finalize value
 ] ifFail: [:outerFailure |
   capture isNil ifTrue: ['BDE_REFERENCE_FILE_SCAN_ERROR: ', stage, ': ', outerFailure messageText]
   ifFalse: [
     capture at: 'phase' put: 'failed_incomplete'; at: 'lastStage' put: stage;
       at: 'outerFailure' put: outerFailure messageText.
     report isNil ifTrue: [report := Dictionary new. capture at: 'report' put: report].
     report at: 'phase' put: 'failed_incomplete'; at: 'last_stage' put: stage;
       at: 'outer_failure' put: outerFailure messageText;
       at: 'complete_before_authorized' put: false; at: 'write_authorized' put: false;
       at: 'inverse_authorized' put: false; at: 'cross_process_atomic' put: false.
     #('events' 'recordRows' 'firstRows' 'secondRows' 'failures' 'gvImages') do: [:partialName | | outputName partialRows |
       outputName := partialName = 'recordRows' ifTrue: ['records'] ifFalse: [
         partialName = 'firstRows' ifTrue: ['keys_first'] ifFalse: [
         partialName = 'secondRows' ifTrue: ['keys_second'] ifFalse: [
           partialName = 'gvImages' ifTrue: ['gv_images'] ifFalse: [partialName]]]].
       partialRows := capture at: partialName ifAbsent: [#()]. report at: outputName put: partialRows asArray].
     report at: 'reserved_payload_bytes' put: (capture at: 'reservedPayloadBytes' ifAbsent: [0]).
     report]]
]
