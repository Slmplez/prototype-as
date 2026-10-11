[:cloneProbe :spliceReader | [:component :action :checkpoint |
 component handleExceptionsIn: [
 | clone |
 action = 'capture' ifTrue: [cloneProbe value: component value: action value: checkpoint] ifFalse: [
   action = 'splice' ifFalse: [component error: 'Unknown private graph splice research action'].
   clone := cloneProbe value: component value: 'material' value: checkpoint.
   (clone isKindOf: Dictionary) ifFalse: [component error: clone].
   spliceReader value: component value: checkpoint value: clone
 ]
 ] ifFail: [:error | 'BDE_GRAPH_SPLICE_PROBE_ERROR: ', error messageText]
]]
