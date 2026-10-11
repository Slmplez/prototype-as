[:source :destination |
 source handleExceptionsIn: [
   | path prefix options copied |
   source getOID = '040qm0040g001n870oa0gre537k0s'
     ifFalse: [source error: 'Fixed business source identity required'].
   path := destination getFolderPathName.
   prefix := 'BDE_Tool_Experiments\Trial_ChannelProject'.
   ((path size >= prefix size and: [(path copyFrom: 1 to: prefix size) = prefix])
     and: [destination isProject and: [destination getOID ~= source getOID]])
       ifFalse: [source error: 'Isolated destination Project required'].
   options := source item specification targetSettings.
   options isNil ifTrue: [source error: 'Source target settings unavailable'].
   copied := options duplicate.
   destination item resetTarget.
   destination item targetOptions: copied.
   destination autoCommitDatabase.
   (copied targetType = options targetType and: [copied compilerToolType = options compilerToolType])
     ifFalse: [source error: 'Copied target settings differ'].
   'copied_existing_settings|target=', options targetType printString,
     '|compiler=', options compilerToolType printString
 ] ifFail: [:error | 'BDE_FIXTURE_ERROR: ', error messageText]
]
