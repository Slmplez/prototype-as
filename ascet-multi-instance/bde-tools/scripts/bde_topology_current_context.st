[:originalDefinition :currentReader |
 currentReader class name asString = 'BlockContextTemplate'
   ifFalse: [currentReader error: 'Fixed native topology CURRENT reader required'].
 Dictionary new at: 'profile' put: 'ordinary_topology_current_context_v1';
   at: 'originalDefinition' put: originalDefinition;
   at: 'currentReader' put: currentReader; yourself
]
