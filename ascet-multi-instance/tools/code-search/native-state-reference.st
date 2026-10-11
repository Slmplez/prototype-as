[:dbAPI :mode :needle |
    "Validation only: use native recursive iterators, independent of the production walker."
    dbAPI handleExceptionsIn: [
        | out field emit oid specId methods |
        out := WriteStream on: String new.
        field := [:v |
            (v ifNil: ['']) do: [:ch |
                | n | n := ch asInteger.
                (n > 126 or: [n = 37 or: [n = 124]])
                    ifTrue: [out nextPut: $%; nextPutAll: n printString; nextPut: $;]
                    ifFalse: [out nextPut: ch]
            ]. out nextPut: $|
        ].
        emit := [:info :id :kinds |
            info ifNotNil: [
                2 to: 4 do: [:i |
                    | slot source kind alias method |
                    slot := info at: i.
                    slot ifNotNil: [
                        alias := slot first. source := slot last. kind := kinds at: i - 1.
                        source isNil ifTrue: [
                            alias ifNotNil: [
                                method := methods detect: [:m | m aliasName = alias].
                                source := method methodName. kind := kind, '_binding'
                            ]
                        ].
                        source ifNotNil: [
                            field value: oid. field value: specId. field value: kind. field value: id printString. field value: source
                        ]
                    ]
                ]
            ]
        ].
        (dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key |
            | c |
            c := key getObjectIfUndefined: [:unused | nil].
            (c notNil and: [c isValidObject and: [c isContainer not and: [c isSmClass]]]) ifTrue: [
                oid := c getAPIHandle getOID. methods := c methods.
                c specifications do: [:spec |
                    spec isSmSpecification ifTrue: [
                        | source |
                        specId := spec sourceKey globalIdString. source := spec specSourceInternalOrNil.
                        source blockDo: [:state | emit value: state stateInfo value: state iD value: #('state_entry' 'state_static' 'state_exit')].
                        source connectionDo: [:transition | emit value: transition transitionInfo value: transition id value: #('transition_trigger' 'transition_action' 'transition_condition')]
                    ]
                ]
            ]
        ]. out contents
    ] ifFail: [:error | 'PROBE_ERROR: ', error printString, ' ', error arguments printString]
]
