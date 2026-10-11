"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000008; bytecode file offset 0x8fc8ec"
!CTreeRT class methodsFor: 'recovered'!
toBeloadedCode
    ^self
! !

"ASDBase.ic method 0x200002a8; bytecode file offset 0x8ffcfc"
!CTreeRT class methodsFor: 'recovered'!
_PRAGMA_CTreeAdviceText
    ^self
! !

"ASDBase.ic method 0x200003a0; bytecode file offset 0x8ffcfc"
!CTreeRT class methodsFor: 'recovered'!
_PRAGMA_CTreeRTNlsPool
    ^self
! !

"ASDBase.ic method 0x200032e0; bytecode file offset 0x8ffcfc"
!CTreeRT class methodsFor: 'recovered'!
_PRAGMA_CTreeStructOffsets
    ^self
! !

"ASDBase.ic method 0x20003430; bytecode file offset 0x8ffcfc"
!CTreeRT class methodsFor: 'recovered'!
_PRAGMA_CTreeExceptions
    ^self
! !

"ASDBase.ic method 0x2001de4c; bytecode file offset 0x92209c"
!CTreeRT class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('tsThisVersionLength' 'pcFirstVersionLength' 'tsFirstVersionLength')
! !

"ASDBase.ic method 0x20023528; bytecode file offset 0x92209c"
!CTreeRT class methodsFor: 'recovered'!
toBeLoadedCodeString
    ^'| loader pool1 pool2  pool | 
(Smalltalk includesKey: #CTreeStructOffsets) 
	ifTrue: [(Smalltalk at: #CTreeStructOffsets) isNil
							ifTrue: [ Smalltalk declarePoolDictionary: ''CTreeStructOffsets''  ].
					]
	ifFalse: [ Smalltalk declarePoolDictionary: ''CTreeStructOffsets'' .
					].
pool := Smalltalk at: #CTreeStructOffsets .
pool declareVariable: ''CTIFilPiidxOffset''.
pool declareVariable: ''CTIFilPrfstfldOffset''.
pool declareVariable: ''CTIFilPrlstfldOffset''.
pool declareVariable: ''CTIFilTfilnumOffset''.
pool declareVariable: ''CTIFilFixedSize''.
pool declareVariable: ''CTwngvFixedSize''.
pool declareVariable: ''CTwngvCTtaskidOffset''.
pool declareVariable: ''CTwngvCTdivsOffset''.
pool declareVariable: ''CTwngvPinstanceOffset''.
pool declareVariable: ''CTwngvPsysvarOffset''.
pool declareVariable: ''CTwngvScthshiftOffset''.
pool declareVariable: ''CTwngvSctmaxparmOffset''.
pool declareVariable: ''CTwngvScntusersOffset''.
pool declareVariable: ''CTwngvSctopsOffset''.
pool declareVariable: ''CTwngvSctxvlenOffset''.
pool declareVariable: ''CTwngvSisamerrOffset''.
pool declareVariable: ''CTwngvSisamfilOffset''.
pool declareVariable: ''CTwngvSsqllenOffset''.
pool declareVariable: ''CTwngvSsysiocodOffset''.
pool declareVariable: ''CTwngvSuerrcodOffset''.



(Smalltalk includesKey: #CTreeAdviceText) 
	ifTrue: [(Smalltalk at: #CTreeAdviceText) isNil
							ifTrue: [ Smalltalk declarePoolDictionary: ''CTreeAdviceText''  ].
					]
	ifFalse: [ Smalltalk declarePoolDictionary: ''CTreeAdviceText'' .
					].
pool := Smalltalk at: #CTreeAdviceText .
pool declareVariable: ''CTCloseDatabase''.
pool declareVariable: ''CTRestartApplication''.
pool declareVariable: ''CTRestartWindows''.
pool declareVariable: ''CTRebuildFiles''.
pool declareVariable: ''CTCompactFiles''.
pool declareVariable: ''CTCompactOrRebuildFiles''.
pool declareVariable: ''CTDeleteFCSFiles''.
pool declareVariable: ''CTChangeTranLogMode''.
pool declareVariable: ''CTDiskFull''.
 loader := ObjectLoader new .

( pool1 :=  loader loadFromFile: ''CTConst.swp'' ) notNil
	ifTrue: [  pool2 := loader loadFromFile: ''CTConst.swp'' atOffset: (loader filePosition) .
	
 pool1 notEmpty
	ifTrue: [ (Smalltalk at: #CTreeOptions ifAbsentPut: [ EsPoolDictionary new]) addAll: pool1 .
				].
 pool2 notEmpty
	ifTrue: [ (Smalltalk at: #CTreeConstants ifAbsentPut: [ EsPoolDictionary new]) addAll: pool2 .
				].
		] .

SystemExceptions 
	declareVariable: ''ExRBDBError'';
	declareVariable: ''ExDBUndefinedObject''.

"Extension by iXtronics"
(Smalltalk includesKey: #CTreeConstants) 
	ifTrue: [(Smalltalk at: #CTreeConstants) isNil
							ifTrue: [ Smalltalk declarePoolDictionary: ''CTreeConstants''  ].
					]	
ifFalse: [ Smalltalk declarePoolDictionary: ''CTreeConstants'' .
					].
pool := Smalltalk at: #CTreeConstants.
pool 
  declareVariable: ''vdelFlag'';
  declareVariable: ''vactFlag'';
  declareVariable: ''vnodFlag'';
  declareVariable: ''vresFlag'';
  declareVariable: ''vlnkFlag''.
'
! !

"ASDBase.ic method 0x20114db8; bytecode file offset 0xa116ac"
!CTreeRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CTwngv.
    (recoveredValue0) initializeClass.
    recoveredValue1 := CTError.
    (recoveredValue1) initializeClass.
    recoveredValue2 := CTIFil.
    (recoveredValue2) initializeClass.
    ^self
! !

"ASDBase.ic method 0x20322e94; bytecode file offset 0xc1f77c"
!CTreeRT class methodsFor: 'recovered'!
saving
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'DBInterface32'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280ebab8Arg1 | 
    | block280ebab8Stack0 block280ebab8Stack1 block280ebab8Stack2 block280ebab8Stack3 block280ebab8Stack4 block280ebab8PC block280ebab8Step block280ebab8Done block280ebab8Result |
    block280ebab8Stack0 := self.
    block280ebab8PC := 4.
    block280ebab8Done := false.
    [block280ebab8Done not] whileTrue: [
        block280ebab8Step := block280ebab8PC.
        block280ebab8Step = 4 ifTrue: [
            block280ebab8Stack1 := nil.
            block280ebab8PC := 5.
        ].
        block280ebab8Step = 5 ifTrue: [
            block280ebab8Stack2 := block280ebab8Arg1.
            block280ebab8PC := 6.
        ].
        block280ebab8Step = 6 ifTrue: [
            (block280ebab8Stack2 == nil) ifTrue: [block280ebab8PC := 23] ifFalse: [block280ebab8PC := 10].
        ].
        block280ebab8Step = 10 ifTrue: [
            block280ebab8PC := 11.
        ].
        block280ebab8Step = 11 ifTrue: [
            block280ebab8Stack1 := nil.
            block280ebab8PC := 12.
        ].
        block280ebab8Step = 12 ifTrue: [
            block280ebab8Stack2 := block280ebab8Arg1.
            block280ebab8PC := 13.
        ].
        block280ebab8Step = 13 ifTrue: [
            block280ebab8Stack3 := 'closeAllDataBases'.
            block280ebab8PC := 15.
        ].
        block280ebab8Step = 15 ifTrue: [
            block280ebab8Stack2 := (block280ebab8Stack2) respondsTo: (block280ebab8Stack3).
            block280ebab8PC := 17.
        ].
        block280ebab8Step = 17 ifTrue: [
            (block280ebab8Stack2) ifTrue: [block280ebab8PC := 20] ifFalse: [block280ebab8PC := 23].
        ].
        block280ebab8Step = 20 ifTrue: [
            block280ebab8PC := 21.
        ].
        block280ebab8Step = 21 ifTrue: [
            block280ebab8Stack1 := block280ebab8Arg1.
            block280ebab8PC := 22.
        ].
        block280ebab8Step = 22 ifTrue: [
            block280ebab8Stack1 := (block280ebab8Stack1) closeAllDataBases.
            block280ebab8PC := 23.
        ].
        block280ebab8Step = 23 ifTrue: [
            block280ebab8Result := block280ebab8Stack1.
            block280ebab8Done := true.
        ].
    ].
    block280ebab8Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) closeISAM.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) removeDLL.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := CTreeRecord.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) cleanupAllInstances.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := CTwngv.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) initializeClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

