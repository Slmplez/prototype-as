"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e728; bytecode file offset 0x92209c"
!ASDXMLImportIssueDeprecatedSchema methodsFor: 'recovered'!
autofixText
    ^'Ignore the version difference'
! !

"ASDBase.ic method 0x201f7d3c; bytecode file offset 0xaf4608"
!ASDXMLImportIssueDeprecatedSchema methodsFor: 'recovered'!
initOn: recoveredArg1 actual: recoveredArg2 class: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := ('File uses deprecated schema ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('. Wanted version is ').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    super initOn: (recoveredValue4) item: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    wanted := recoveredValue6.
    recoveredValue7 := recoveredArg2.
    actual := recoveredValue7.
    issueType := 'information'.
    ^self
! !

"ASDBase.ic method 0x2028dbec; bytecode file offset 0xb8a4bc"
!ASDXMLImportIssueDeprecatedSchema methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('BOSCH_DGS').
    recoveredValue1 := [
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := protoItem.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) thing.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Stack2.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack3.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isComponentOrFolder.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 33].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := protoItem.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := actual.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) markAsConvertedFrom: (recoveredBlock10Stack2).
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue2 := [].
    (recoveredValue1) exWhenUndefinedKeyOrValue: (recoveredValue2).
    done := true.
    ^true
! !

