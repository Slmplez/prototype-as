"Explicitly capture both isolated owners as reciprocal targets before any write."
[:factory | [:decoder | [:component |
 | owners keys digits hex reader |
 owners := (factory value: decoder) value: component.
 digits := '0123456789abcdef'.
 keys := (owners at: 'owners') collect: [:owner |
   hex := String new: 40.
   (owner at: 'key') doWithIndex: [:octet :index |
     hex at: index * 2 - 1 put: (digits at: (octet // 16) + 1).
     hex at: index * 2 put: (digits at: (octet \\ 16) + 1)]. hex].
 reader := factory value: (Array with: decoder with: keys asArray).
 reader value: component
]]]
