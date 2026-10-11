[:rrAPI :rrInput :rrOffset :rrPhase |
 | rrRecord rrRequire rrWord rrStart rrLength rrEnd rrBase rrObjects rrPosition rrClass rrFlags rrSize rrObject rrLookup rrString rrPointers rrInstance rrLayouts rrLayout rrFields rrRoot rrEncryption rrDecode rrDictionary rrMethods rrEntries rrCount rrResult rrChecksum rrInitial rrSegment rrLast rrRootBase rrRanges rrAddress |
 "Validated ASCET 6.4 saved-record reader. It never creates VM memory segments
 or dereferences serialized addresses. Unknown layouts fail before publication."
 rrRequire := [:condition :reason | condition ifFalse: [rrAPI error: 'SAVED_CONTAINER_UNSUPPORTED: ', reason]].
 rrPhase value: 'record bytes'. rrRecord := rrInput asByteArray.
 rrRequire value: (rrRecord size <= 16777216 and: [rrOffset >= 0 and: [rrOffset + 40 <= rrRecord size]]) value: 'record bounds'.
 rrInitial := ObjectSwapper initialGroupOfEncodedClasses.
 rrRequire value: ((rrInitial at: 1) == String and: [(rrInitial at: 3) == Array and: [(rrInitial at: 4) == Class and: [(rrInitial at: 11) == ByteArray]]]) value: 'encoded class table'.
 rrWord := [:position | rrRequire value: (position >= 1 and: [position + 3 <= rrRecord size]) value: 'word bounds'. rrRecord eswIntelLongAt: position].
 rrPhase value: 'header'.
 rrRequire value: ((1 to: 20) allSatisfy: [:index | (rrRecord at: rrOffset + index) = (#[0 20 31 160 4 3 2 20 0 0 0 0 0 0 0 0 0 0 0 0] at: index)]) value: 'swapper header'.
 rrObjects := Dictionary new. rrLayouts := Dictionary new. rrRanges := OrderedCollection new.
 rrSegment := rrOffset + 21. rrLast := false. rrRootBase := nil.
 [rrLast not] whileTrue: [
  rrPhase value: 'segment header'.
  rrRequire value: (rrSegment + 19 <= rrRecord size and: [rrRanges size < 1024]) value: 'segment header bounds'.
  rrRequire value: ((rrRecord at: rrSegment) = 55 and: [(#(0 1) includes: (rrRecord at: rrSegment + 1)) and: [
   (rrRecord at: rrSegment + 2) = 0 and: [(rrRecord at: rrSegment + 3) = 0 and: [
   (rrWord value: rrSegment + 12) = 0 and: [(rrWord value: rrSegment + 16) = 0]]]]]) value: 'segment header'.
  rrLast := (rrRecord at: rrSegment + 1) = 1.
  rrLength := rrWord value: rrSegment + 4. rrChecksum := rrWord value: rrSegment + 8.
  rrStart := rrSegment + 20. rrEnd := rrStart + rrLength - 1.
  rrRequire value: (rrLength >= 32 and: [rrEnd <= rrRecord size and: [rrLength \\ 4 = 0]]) value: 'segment bounds'.
  rrPhase value: 'checksum'.
  rrRequire value: ((rrRecord copyFrom: rrStart to: rrEnd) crcValue = rrChecksum) value: 'segment checksum'.
  rrBase := rrWord value: rrStart. rrRootBase ifNil: [rrRootBase := rrBase].
  rrRequire value: (rrBase \\ 4 = 0 and: [rrBase + rrLength < 4294967296]) value: 'serialized address range'.
  rrRequire value: (rrRanges allSatisfy: [:range | rrBase >= range last or: [rrBase + rrLength <= range first]]) value: 'overlapping segments'.
  rrRanges add: (Array with: rrBase with: rrBase + rrLength).
  rrRequire value: ((rrWord value: rrStart + 4) = 0 and: [(rrWord value: rrStart + 8) = 0 and: [(rrWord value: rrStart + 12) = 0]]) value: 'segment prefix'.
  rrPosition := rrStart + 16. rrPhase value: 'object scan'.
  [rrPosition <= rrEnd] whileTrue: [
   rrRequire value: (rrPosition + 11 <= rrEnd and: [rrObjects size < 100000]) value: 'object bounds'.
   rrClass := rrWord value: rrPosition. rrFlags := (rrWord value: rrPosition + 4) bitAnd: 65535. rrSize := rrWord value: rrPosition + 8.
   rrRequire value: (rrPosition + 12 + ((rrSize + 3) // 4 * 4) <= (rrEnd + 1)) value: 'object payload bounds'.
   rrAddress := rrBase + rrPosition - rrStart - 16.
   rrRequire value: (rrObjects includesKey: rrAddress) not value: 'duplicate object address'.
   rrObjects at: rrAddress put: (Array with: rrClass with: rrFlags with: rrSize with: rrPosition + 12).
   rrPosition := rrPosition + 12 + ((rrSize + 3) // 4 * 4)
  ].
  rrRequire value: (rrPosition = (rrEnd + 1)) value: 'object alignment'. rrSegment := rrEnd + 1
 ].
 rrRequire value: (rrSegment = (rrRecord size + 1)) value: 'trailing record bytes'.
 rrLookup := [:address | rrObjects at: address ifAbsent: [rrAPI error: 'SAVED_CONTAINER_UNSUPPORTED: missing object']].
 rrString := [:address :acceptedClasses |
  | object | object := rrLookup value: address.
  rrRequire value: ((acceptedClasses includes: object first) and: [(object at: 2) = 11]) value: 'string class'.
  (object at: 3) = 0 ifTrue: [''] ifFalse: [(rrRecord copyFrom: (object at: 4) to: (object at: 4) + (object at: 3) - 1) asString]
 ].
 rrPointers := [:address :expectedClass |
  | object values | object := rrLookup value: address.
  rrRequire value: (object first = expectedClass and: [(object at: 2) = 9 and: [(object at: 3) \\ 4 = 0]]) value: 'pointer array'.
  values := OrderedCollection new.
  0 to: (object at: 3) // 4 - 1 do: [:index | values add: (rrWord value: (object at: 4) + (index * 4))]. values
 ].
 rrInstance := [:address :expectedName :expectedFields |
  | object descriptor layout names values | object := rrLookup value: address.
  rrRequire value: ((object at: 2) = 8 and: [(object at: 3) \\ 4 = 0]) value: 'instance format'.
  layout := rrLayouts at: object first ifAbsent: [
   descriptor := rrLookup value: object first.
   rrRequire value: (descriptor first = 9 and: [(descriptor at: 2) = 0 and: [(descriptor at: 3) = 56]]) value: 'Class descriptor'.
   names := (rrPointers value: (rrWord value: (descriptor at: 4) + 36) value: 25) collect: [:name | rrString value: name value: #(27)].
   rrRequire value: (names asSet size = names size) value: 'duplicate field names'.
   layout := Array with: (rrString value: (rrWord value: (descriptor at: 4) + 44) value: #(27)) with: names.
   rrLayouts at: object first put: layout. layout
  ].
  rrRequire value: (layout first = expectedName and: [layout last asArray = expectedFields and: [(object at: 3) = (expectedFields size * 4)]]) value: 'instance field layout'.
  values := Dictionary new.
  1 to: expectedFields size do: [:index | values at: (expectedFields at: index) put: (rrWord value: (object at: 4) + ((index - 1) * 4))]. values
 ].
 rrPhase value: 'root pointer'. rrRoot := rrPointers value: rrRootBase value: 33.
 rrPhase value: 'root fields'.
 rrRequire value: (rrRoot size = 1) value: 'one graph root'.
 rrFields := rrInstance value: rrRoot first value: 'SGCodeContainerExternal'
  value: #('variantKey' 'targetOptions' 'cSource' 'hSource' 'h2Source' 'oSource' 'dbObject' 'encryption' 'cProcedureSources' 'localHSource').
 rrEncryption := rrFields at: 'encryption'.
 rrRequire value: (rrEncryption = 14 or: [rrEncryption = 3]) value: 'encryption version'.
 rrDecode := [:address | | text | text := rrString value: address value: #(3).
  rrEncryption = 14 ifFalse: [text simpleDecryptWithKey: 4272688507]. text].
 rrPhase value: 'dictionary'.
 rrDictionary := rrInstance value: (rrFields at: 'cProcedureSources') value: 'Dictionary' value: #('elementCount' 'elements').
 rrCount := rrDictionary at: 'elementCount'.
 rrRequire value: (rrCount odd and: [rrCount >= 1]) value: 'dictionary size'. rrCount := rrCount // 2.
 rrEntries := rrPointers value: (rrDictionary at: 'elements') value: 7.
 rrMethods := Dictionary new.
 rrPhase value: 'Method sources'.
 rrEntries do: [:address | address = 14 ifFalse: [
  | entry key text | entry := rrInstance value: address value: 'Association' value: #('key' 'value').
  rrObject := rrLookup value: (entry at: 'key').
  rrRequire value: (rrObject first = 23 and: [(rrObject at: 2) = 11 and: [(rrObject at: 3) = 20]]) value: 'Method alias'.
  key := ByteArray new: 20. key replaceFrom: 1 to: 20 with: rrRecord startingAt: (rrObject at: 4).
  rrRequire value: (rrMethods includesKey: key) not value: 'duplicate Method alias'.
  text := rrDecode value: (entry at: 'value'). rrMethods at: key put: text
 ]].
 rrRequire value: (rrMethods size = rrCount) value: 'dictionary entry count'.
 rrResult := Dictionary new. rrResult at: #procedures put: rrMethods.
 rrPhase value: 'external sources'.
 rrResult at: #external_c put: (rrDecode value: (rrFields at: 'cSource')).
 rrResult at: #external_h put: (rrDecode value: (rrFields at: 'hSource')).
 rrResult at: #header put: ((rrFields at: 'localHSource') = 14 ifTrue: [nil] ifFalse: [rrDecode value: (rrFields at: 'localHSource')]).
 rrResult
]
