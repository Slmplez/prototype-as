[:helpers | [:component |
 component handleExceptionsIn: [
 | root live liveCopy copy capture factory strict dump same material source before after current beforeDump appliedDump currentDump expectedManual expectedSource candidateDump plan images merged cases links point peer x y holders primary secondary mapping currentIDs copiedIDs byID copiedHolder copiedPoint beforeInverse afterInverse add mapCopy savedCurrent refusal linkGet linkPut sourceEdit logicIDs positionOwner |
 (helpers isArray and: [helpers size = 4]) ifFalse: [component error: 'Fixed source material helpers required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated private source material required'].
 capture := helpers first. factory := helpers at: 2. strict := helpers at: 3. dump := helpers last.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Exact private source owner required'].
 copy := root at: 'copySource'. live := (root at: 'diagram') specification specSourceInternalOrNil.
 liveCopy := copy value: live. cases := OrderedCollection new.
 same := [:left :right | (strict value: component value: left value: right) == true].
 material := [:privateSource :anchors | | captured |
   captured := capture value: component value: (Array with: privateSource with: anchors).
   (captured isKindOf: Dictionary) ifFalse: [component error: captured asString]. captured].
 linkGet := [:container :slot | (container isKindOf: SGGraphicObjectsDB)
   ifTrue: [container instVarAt: slot] ifFalse: [container at: slot]].
 linkPut := [:container :slot :child | (container isKindOf: SGGraphicObjectsDB)
   ifTrue: [container instVarAt: slot put: child] ifFalse: [container at: slot put: child]].
 "The independent manual target uses the existing source copier and the exported
  dense source IDs, not the new image merger or image-cloning implementation."
 mapCopy := [:privateSource :copied | | originalExport copiedExport |
   originalExport := dump value: component value: (Array with: privateSource with: 'native_reference_ids').
   copiedExport := dump value: component value: (Array with: copied with: 'native_reference_ids').
   (same value: privateSource value: copied) ifFalse: [component error: 'Independent source copy differs'].
   currentIDs := originalExport at: 'ids'. copiedIDs := copiedExport at: 'ids'.
   byID := Dictionary new. copiedIDs keysAndValuesDo: [:object :identifier | byID at: identifier put: object].
   mapping := IdentityDictionary new. currentIDs keysAndValuesDo: [:object :identifier |
     mapping at: object put: (byID at: identifier)]. mapping].
 add := [:label :compatible :exports |
   cases add: (Dictionary new at: 'case' put: label; at: 'compatible' put: compatible;
     at: 'source_edit' put: sourceEdit copy;
     at: 'original' put: exports first; at: 'applied' put: (exports at: 2);
     at: 'current' put: (exports at: 3); at: 'expected_manual' put: (exports at: 4);
     at: 'candidate' put: exports last; at: 'model_setters_called' put: 0;
     at: 'store_called' put: false; yourself)].
 #('coordinate' 'sharing') do: [:variant |
   source := copy value: live.
   source == live ifTrue: [component error: 'Private source shares the live root'].
   images := material value: source value: #().
   links := OrderedCollection new. logicIDs := IdentityDictionary new.
   (images at: 'snapshots') keys do: [:object |
     ((object isKindOf: SGLogicBlockDB) and: [object iD isInteger and: [object iD >= 0]]) ifTrue: [ | own child |
       own := object own. child := own at: 2.
       (own isArray and: [own size = 7 and: [child class name asString = 'Point' and: [child x isNumber and: [child y isNumber]]]])
         ifTrue: [links add: (Array with: own with: 2 with: child). logicIDs at: own put: object iD]]].
   links size < 2 ifTrue: [component error: 'Two actual source Point links required'].
   primary := links first. secondary := links last. point := primary last.
   sourceEdit := Dictionary new at: 'kind' put: variant;
     at: 'target_logic_id' put: (logicIDs at: primary first);
     at: 'secondary_logic_id' put: (logicIDs at: secondary first);
     at: 'alias_direction' put: 'join'; at: 'synthetic_sharing_fixture' put: (variant = 'sharing'); yourself.
   variant = 'sharing' ifTrue: [linkPut value: secondary first value: (secondary at: 2) value: point].
   images := material value: source value: #(). before := images at: 'snapshots'.
   beforeDump := dump value: component value: source. x := point x. y := point y.
   variant = 'coordinate' ifTrue: [point instVarAt: 1 put: x + 11]
     ifFalse: [linkPut value: primary first value: (primary at: 2) value: point copy].
   after := (images at: 'captureImages') value: before keys.
   appliedDump := dump value: component value: source.
   holders := (material value: source value: #()) at: 'snapshots'.
   peer := holders keys detect: [:object | object class name asString = 'Point' and: [
     object ~~ point and: [object ~~ (linkGet value: primary first value: (primary at: 2)) and: [object y isNumber]]]]
     ifNone: [component error: 'Separate reachable source Point required'].
   variant = 'coordinate' ifTrue: [point instVarAt: 2 put: y + 37].
   peer instVarAt: 2 put: peer y + 45.
   current := (images at: 'captureImages') value: (before keys, after keys).
   currentDump := dump value: component value: source.
   expectedManual := copy value: source. mapping := mapCopy value: source value: expectedManual.
   variant = 'coordinate' ifTrue: [(mapping at: point) instVarAt: 1 put: x]
     ifFalse: [linkPut value: (mapping at: primary first) value: (primary at: 2) value: (mapping at: point)].
   plan := factory value: component value: (Array with: before with: after) value: 'undo'.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
   (plan at: 'cells') isEmpty ifTrue: [component error: 'Nonzero actual source patch required'].
   merged := (plan at: 'mergeImages') value: current.
   expectedSource := (images at: 'cloneImages') value: merged.
   ((images at: 'verifyImages') value: current) ifFalse: [component error: 'Source planning mutated private original objects'].
   (same value: expectedSource value: expectedManual) ifFalse: [component error: 'Merged source differs from independent manual target'].
   (plan at: 'execute') value.
   (((images at: 'verifyImages') value: merged) and: [same value: source value: expectedManual])
     ifFalse: [component error: 'Private actual source inverse differs from full merged target'].
   candidateDump := dump value: component value: source.
   add value: (variant, '/independent_changes_undo') value: true value:
     (Array with: beforeDump with: appliedDump with: currentDump with:
       (dump value: component value: expectedManual) with: candidateDump).
   "Every later inverse uses this direction's actual before/after images."
   beforeInverse := current. afterInverse := (images at: 'captureImages') value: merged keys.
   sourceEdit at: 'alias_direction' put: 'split'.
   peer instVarAt: 2 put: peer y + 17.
   current := (images at: 'captureImages') value: (beforeInverse keys, afterInverse keys).
   expectedManual := copy value: source. mapping := mapCopy value: source value: expectedManual.
   variant = 'coordinate' ifTrue: [(mapping at: point) instVarAt: 1 put: x + 11]
     ifFalse: [copiedHolder := mapping at: primary first. copiedPoint := (mapping at: point) copy.
       linkPut value: copiedHolder value: (primary at: 2) value: copiedPoint].
   plan := factory value: component value: (Array with: beforeInverse with: afterInverse) value: 'undo'.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
   merged := (plan at: 'mergeImages') value: current.
   expectedSource := (images at: 'cloneImages') value: merged.
   ((images at: 'verifyImages') value: current) ifFalse: [component error: 'Later source planning mutated private original objects'].
   (same value: expectedSource value: expectedManual) ifFalse: [component error: 'Later source target differs from independent manual target'].
   savedCurrent := dump value: component value: source.
   (plan at: 'execute') value.
   (((images at: 'verifyImages') value: merged) and: [same value: source value: expectedManual])
     ifFalse: [component error: 'Later private source inverse lost independent changes or sharing'].
   add value: (variant, '/inverse_of_inverse_actual_patch') value: true value:
     (Array with: currentDump with: candidateDump with: savedCurrent with:
       (dump value: component value: expectedManual) with: (dump value: component value: source))
 ].
 #('overlap' 'late_overlap') do: [:variant |
   source := copy value: live. images := material value: source value: #(). before := images at: 'snapshots'.
   positionOwner := before keys detect: [:object | (object isKindOf: SGLogicBlockDB) and: [object iD >= 0]].
   point := positionOwner position.
   sourceEdit := Dictionary new at: 'kind' put: 'coordinate'; at: 'target_logic_id' put: positionOwner iD;
     at: 'secondary_logic_id' put: positionOwner iD; at: 'alias_direction' put: 'join';
     at: 'synthetic_sharing_fixture' put: false; yourself.
   beforeDump := dump value: component value: source. point instVarAt: 1 put: point x + 11.
   after := (images at: 'captureImages') value: before keys. appliedDump := dump value: component value: source.
   plan := factory value: component value: (Array with: before with: after) value: 'undo'.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
   variant = 'late_overlap' ifTrue: [current := (images at: 'captureImages') value: after keys.
     merged := (plan at: 'mergeImages') value: current].
   point instVarAt: 1 put: point x + 19. currentDump := dump value: component value: source.
   current := (images at: 'captureImages') value: after keys.
   refusal := component handleExceptionsIn: [(plan at: 'mergeImages') value: current. false]
     ifFail: [:error | true].
   refusal ifFalse: [component error: 'Overlapping source merge was accepted'].
   refusal := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
   (refusal and: [((plan at: 'progress') at: 'completed_primitives') = 0 and: [
     ((images at: 'verifyImages') value: current)]])
     ifFalse: [component error: 'Source conflict performed a private primitive'].
   add value: (variant, '/refused_before_mutation') value: false value:
     (Array with: beforeDump with: appliedDump with: currentDump with: nil with:
       (dump value: component value: source))
 ].
 (same value: live value: liveCopy) ifFalse: [component error: 'Live source changed during private material trial'].
 (root at: 'encodeObservation') value: (Dictionary new at: 'profile' put: 'source_material_private_v1';
   at: 'cases' put: cases asArray; at: 'live_source_unchanged' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'production_local_inverse_enabled' put: false; yourself)
 ] ifFail: [:error | 'BDE_SOURCE_MATERIAL_PRIVATE_ERROR: ', error messageText]
]]
