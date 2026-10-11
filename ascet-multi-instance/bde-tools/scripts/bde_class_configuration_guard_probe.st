[:factory :configurationReader :batchFactory | [:component |
 component handleExceptionsIn: [
 | original supplied reads guard verify refuse checks capture observed batch shared unstored |
 original := configurationReader value: component.
 (original isString and: [(original startsWith: 'BDE_') not])
   ifFalse: [component error: 'Actual configuration text required for guard probe'].
 supplied := original. reads := 0. checks := 0.
 guard := factory value: [:owner | reads := reads + 1. supplied].
 verify := [:passed |
   passed ifFalse: [component error: 'Native configuration guard regression failed'].
   checks := checks + 1].
 refuse := [:mode :reason |
   | answer |
   answer := guard value: component value: mode.
   (answer startsWith: 'BDE_CONFIGURATION_GUARD_ERROR:') and: [answer includesSubstring: reason]
 ].
 verify value: ((refuse value: 'check' value: 'baseline missing') and: [reads = 0]).
 verify value: ((refuse value: 'unknown' value: 'Unsupported') and: [reads = 0]).
 capture := guard value: component value: 'capture'.
 verify value: ((capture startsWith: '{"$d":') and: [reads = 1]).
 verify value: ((guard value: component value: 'check') = 'verified' and: [reads = 2]).
 observed := guard value: component value: 'observe'.
 verify value: (observed = capture and: [reads = 3]).
 supplied := original, ' '.
 verify value: ((refuse value: 'check' value: 'storage changed') and: [reads = 4]).
 observed := guard value: component value: 'observe'.
 verify value: (observed ~= capture and: [reads = 5]).
 verify value: ((refuse value: 'check' value: 'storage changed') and: [reads = 6]).
 supplied := original.
 verify value: ((guard value: component value: 'check') = 'verified' and: [reads = 7]).
 verify value: ((refuse value: 'capture' value: 'already captured') and: [reads = 7]).
 supplied := nil.
 verify value: ((refuse value: 'check' value: 'text required') and: [reads = 8]).
 supplied := 'BDE_SYNTHETIC_READER_ERROR: regression'.
 verify value: ((refuse value: 'check' value: 'BDE_SYNTHETIC_READER_ERROR') and: [reads = 9]).
 supplied := original.
 verify value: ((guard value: component value: 'check') = 'verified' and: [reads = 10]).
 batch := batchFactory value: [:owner :target :mode | 'null']
   value: [:owner :name :path | 'BDE_SHARED_INTERFACE_CHANGED: regression']
   value: [:owner | 'null'].
 shared := batch value: component value: component value: 'caller'.
 verify value: (shared startsWith: '{"$d":').
 batch := batchFactory value: [:owner :target :mode | 'null']
   value: [:owner :name :path | 'BDE_UNSTORED_PIN: regression']
   value: [:owner | 'null'].
 unstored := batch value: component value: component value: 'caller'.
 verify value: (unstored startsWith: '{"$d":').
 batch := batchFactory value: [:owner :target :mode | 'null']
   value: [:owner :name :path | 'BDE_SYNTHETIC_UNSUPPORTED_ERROR: regression']
   value: [:owner | 'null'].
 verify value: ((batch value: component value: component value: 'caller')
   startsWith: 'BDE_OBSERVATION_BATCH_ERROR:').
 '[', checks printString, ',', reads printString, ',', capture, ',',
   (guard value: component value: 'observe'), ',', shared, ',', unstored, ']'
 ] ifFail: [:error | 'BDE_CONFIGURATION_GUARD_PROBE_ERROR: ', error messageText]
]]
