"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001826c; bytecode file offset 0x92209c"
!ETASItemFileDLLRT class methodsFor: 'recovered'!
toBeLoadedCodeString
    ^'| loader pool1 pool2  pool | 
(Smalltalk includesKey: #ItemFileAPIFunctions) 
	ifTrue: [(Smalltalk at: #ItemFileAPIFunctions) isNil
							ifTrue: [ Smalltalk declarePoolDictionary: ''ItemFileAPIFunctions''  ].
					]
	ifFalse: [ Smalltalk declarePoolDictionary: ''ItemFileAPIFunctions'' .
					].
pool := Smalltalk at: #ItemFileAPIFunctions .
pool declareVariable: ''FileExtension''.
pool declareVariable: ''FileTypeSymbol''.
pool declareVariable: ''SampleCnt''.
pool declareVariable: ''NameTable''.
pool declareVariable: ''RecordFormat''.

'
! !

