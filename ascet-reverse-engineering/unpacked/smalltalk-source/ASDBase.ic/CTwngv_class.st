"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013ad0; bytecode file offset 0x912098"
!CTwngv class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 |
    recoveredValue0 := CTwngvFixedSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024008; bytecode file offset 0x92209c"
!CTwngv class methodsFor: 'recovered'!
members
    ^#('pinstance' 'psysvar' 'ct_taskid' 'sctnusers' 'ctdivs' 'sctops' 'sctxvlen' 'ssql_len' 'scthshift' 'sctmaxparm' 'suerr_cod' 'ssysiocod' 'sisam_err' 'sisam_fil' 'sctusrprf')
! !

"ASDBase.ic method 0x2005fefc; bytecode file offset 0x95c7b4"
!CTwngv class methodsFor: 'recovered'!
initializeClass
    InitFlag := 0.
    ^self
! !

"ASDBase.ic method 0x202054f8; bytecode file offset 0xb01dc0"
!CTwngv class methodsFor: 'recovered'!
closeISAM
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) closeISAM.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CTError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'closeISAM/class'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) location: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206470; bytecode file offset 0xb02d40"
!CTwngv class methodsFor: 'recovered'!
default
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := UserprfNtkey.
    recoveredValue3 := UserprfLoclib.
    recoveredValue4 := (recoveredValue2) | (recoveredValue3).
    (recoveredValue1) initIsam: (16) files: (8) sections: (8) dataBuffers: (16) userProfile: (recoveredValue4) userId: ('ADMIN') password: ('ADMIN') serverName: ('none').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202090fc; bytecode file offset 0xb059cc"
!CTwngv class methodsFor: 'recovered'!
registerNew: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) registerName: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) registerCTree: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CTError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'register'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) location: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCTreeGV.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202791c4; bytecode file offset 0xb75aa0"
!CTwngv class methodsFor: 'recovered'!
getCTreeGV
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCTreeGV.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CTError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'getCTreeGV'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) location: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := OSPtr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e84e4; bytecode file offset 0xbe4dc0"
!CTwngv class methodsFor: 'recovered'!
systemConfiguration: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CTError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 47.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'systemConfiguration:dll alreadyLoaded'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) location: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) create.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) systemConfiguration.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) closeISAM.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := CTreeLibrary.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) removeDLL.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := CTreeLibrary.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) removeDLL.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038da68; bytecode file offset 0xc8a34c"
!CTwngv class methodsFor: 'recovered'!
register: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := CTreeLibrary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) registerName: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (recoveredValue0) registerCTree: (recoveredValue2).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := [
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := recoveredLocal3.
    recoveredBlock19Value0
].
    recoveredValue6 := [].
    recoveredValue7 := GexsErr.
    recoveredValue8 := [].
    recoveredValue9 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := CTError.
    recoveredBlock38Value1 := recoveredLocal3.
    recoveredBlock38Value2 := (recoveredBlock38Value0) create: (recoveredBlock38Value1) location: ('register').
    ^recoveredBlock38Value2
].
    (recoveredValue5) case: (0) do: (recoveredValue6) case: (recoveredValue7) do: (recoveredValue8) others: (recoveredValue9).
    recoveredValue10 := (self) getCTreeGV.
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := CTStructure.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) register: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20394a84; bytecode file offset 0xc91374"
!CTwngv class methodsFor: 'recovered'!
initialize66
    CTwngvFixedSize := 512.
    CTwngvPinstanceOffset := 0.
    CTwngvPsysvarOffset := 4.
    CTwngvCTtaskidOffset := 12.
    CTwngvScntusersOffset := 16.
    CTwngvCTdivsOffset := 20.
    CTwngvSctopsOffset := 24.
    CTwngvSctxvlenOffset := 28.
    CTwngvSsqllenOffset := 32.
    CTwngvScthshiftOffset := 44.
    CTwngvSctmaxparmOffset := 48.
    CTwngvSuerrcodOffset := 64.
    CTwngvSsysiocodOffset := 66.
    CTwngvSisamerrOffset := 68.
    CTwngvSisamfilOffset := 70.
    ^self
! !

"ASDBase.ic method 0x20394b14; bytecode file offset 0xc91404"
!CTwngv class methodsFor: 'recovered'!
initialize67
    CTwngvFixedSize := 512.
    CTwngvPinstanceOffset := 4.
    CTwngvPsysvarOffset := 8.
    CTwngvCTtaskidOffset := 24.
    CTwngvScntusersOffset := 28.
    CTwngvCTdivsOffset := 32.
    CTwngvSctopsOffset := 36.
    CTwngvSctxvlenOffset := 40.
    CTwngvSsqllenOffset := 44.
    CTwngvScthshiftOffset := 56.
    CTwngvSctmaxparmOffset := 60.
    CTwngvSuerrcodOffset := 92.
    CTwngvSsysiocodOffset := 94.
    CTwngvSisamerrOffset := 96.
    CTwngvSisamfilOffset := 98.
    ^self
! !

"ASDBase.ic method 0x203aeba0; bytecode file offset 0xcab490"
!CTwngv class methodsFor: 'recovered'!
initialize68
    CTwngvFixedSize := 512.
    CTwngvPinstanceOffset := 4.
    CTwngvPsysvarOffset := 8.
    CTwngvCTtaskidOffset := 28.
    CTwngvScntusersOffset := 32.
    CTwngvCTdivsOffset := 36.
    CTwngvSctopsOffset := 40.
    CTwngvSctxvlenOffset := 48.
    CTwngvSsqllenOffset := 52.
    CTwngvScthshiftOffset := 76.
    CTwngvSctmaxparmOffset := 80.
    CTwngvSuerrcodOffset := 116.
    CTwngvSsysiocodOffset := 118.
    CTwngvSisamerrOffset := 120.
    CTwngvSisamfilOffset := 122.
    ^self
! !

"ASDBase.ic method 0x203cf8c0; bytecode file offset 0xccc1b4"
!CTwngv class methodsFor: 'recovered'!
initialize610
    CTwngvFixedSize := 512.
    CTwngvPinstanceOffset := 4.
    CTwngvPsysvarOffset := 8.
    CTwngvCTtaskidOffset := 28.
    CTwngvScntusersOffset := 32.
    CTwngvCTdivsOffset := 36.
    CTwngvSctopsOffset := 40.
    CTwngvSctxvlenOffset := 48.
    CTwngvSsqllenOffset := 52.
    CTwngvScthshiftOffset := 80.
    CTwngvSctmaxparmOffset := 84.
    CTwngvSuerrcodOffset := 120.
    CTwngvSsysiocodOffset := 122.
    CTwngvSisamerrOffset := 124.
    CTwngvSisamfilOffset := 126.
    CTwngvSctusrprfOffset := 136.
    ^self
! !

"ASDBase.ic method 0x203e4868; bytecode file offset 0xce115c"
!CTwngv class methodsFor: 'recovered'!
initialize611
    CTwngvFixedSize := 512.
    CTwngvPinstanceOffset := 4.
    CTwngvPsysvarOffset := 8.
    CTwngvCTtaskidOffset := 44.
    CTwngvScntusersOffset := 48.
    CTwngvCTdivsOffset := 52.
    CTwngvSctopsOffset := 60.
    CTwngvSctxvlenOffset := 68.
    CTwngvSsqllenOffset := 72.
    CTwngvScthshiftOffset := 128.
    CTwngvSctmaxparmOffset := 132.
    CTwngvSuerrcodOffset := 168.
    CTwngvSsysiocodOffset := 170.
    CTwngvSisamerrOffset := 172.
    CTwngvSisamfilOffset := 176.
    CTwngvSctusrprfOffset := 186.
    ^self
! !

"ASDBase.ic method 0x203efb9c; bytecode file offset 0xcec490"
!CTwngv class methodsFor: 'recovered'!
getCTreeConstants
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280f9204Value0 block280f9204Value1 |
    block280f9204Value0 := EsPoolDictionary.
    block280f9204Value1 := (block280f9204Value0) new.
    block280f9204Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'USERPRF_NTKEY'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'USERPRF_SAVENV'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'USERPRF_SQL'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'USERPRF_SERIAL'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'USERPRF_MEMABS'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 16.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 'USERPRF_NDATA'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 32.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'USERPRF_PTHTMP'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 128.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 'USERPRF_LOCLIB'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := 64.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'USERPRF_CODACN'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

