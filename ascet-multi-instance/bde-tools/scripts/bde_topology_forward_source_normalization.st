"Fixed forward topology source identity normalization. This binds only audited
 implementations; it does not add a public selector/code execution facility."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | normalization correspondence factory same original generated native protected context7 plan |
 (helpers isArray and: [helpers size = 4 and: [context isArray and: [context size = 4]]])
   ifFalse: [component error: 'Fixed forward topology source normalization context required'].
 normalization := helpers first. correspondence := helpers at: 2.
 factory := helpers at: 3. same := helpers last.
 original := context first. generated := context at: 2. native := context at: 3.
 protected := context last.
 context7 := Array new: 7.
 context7 at: 1 put: original; at: 2 put: generated; at: 3 put: native;
   at: 4 put: factory; at: 5 put: same; at: 6 put: protected; at: 7 put: correspondence.
 plan := normalization value: component value: context7.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 plan at: 'topology_profile' put: 'ordinary_topology_forward_source_v1'. plan
 ] ifFail: [:error | 'BDE_TOPOLOGY_FORWARD_SOURCE_ERROR: ', error messageText]
]]
