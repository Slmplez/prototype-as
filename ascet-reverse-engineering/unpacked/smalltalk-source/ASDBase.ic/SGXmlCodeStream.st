"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000cf0; bytecode file offset 0x8ffcfc"
!SGXmlCodeStream methodsFor: 'recovered'!
asXmlCodeStream
    ^self
! !

"ASDBase.ic method 0x200166ac; bytecode file offset 0x92209c"
!SGXmlCodeStream methodsFor: 'recovered'!
endCommentString
    ^'-->'
! !

"ASDBase.ic method 0x20018a34; bytecode file offset 0x92209c"
!SGXmlCodeStream methodsFor: 'recovered'!
beginCommentString
    ^'<!!--'
! !

"ASDBase.ic method 0x20022010; bytecode file offset 0x92209c"
!SGXmlCodeStream methodsFor: 'recovered'!
bannerRowStart
    ^' !!'
! !

"ASDBase.ic method 0x200381c0; bytecode file offset 0x934b68"
!SGXmlCodeStream methodsFor: 'recovered'!
shortNameConstantValue: recoveredArg1
    ^'value'
! !

"ASDBase.ic method 0x20064e74; bytecode file offset 0x961970"
!SGXmlCodeStream methodsFor: 'recovered'!
indent
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) tab.
    ^self
! !

"ASDBase.ic method 0x200725d8; bytecode file offset 0x96f1c4"
!SGXmlCodeStream methodsFor: 'recovered'!
indentSize
    ^2
! !

"ASDBase.ic method 0x200744dc; bytecode file offset 0x970de8"
!SGXmlCodeStream methodsFor: 'recovered'!
commentTagsSize
    ^8
! !

"ASDBase.ic method 0x2008117c; bytecode file offset 0x97da30"
!SGXmlCodeStream methodsFor: 'recovered'!
bannerSubSectionFillChar
    ^$~
! !

"ASDBase.ic method 0x20083738; bytecode file offset 0x980230"
!SGXmlCodeStream methodsFor: 'recovered'!
beginTag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) beginTag: (recoveredValue0) withAttributes: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c94c; bytecode file offset 0x989498"
!SGXmlCodeStream methodsFor: 'recovered'!
endARSubpackages
    (self) endTag: ('SUB-PACKAGES').
    ^self
! !

"ASDBase.ic method 0x2008c9fc; bytecode file offset 0x989498"
!SGXmlCodeStream methodsFor: 'recovered'!
endARIntegerType
    (self) endTag: ('INTEGER-TYPE').
    ^self
! !

"ASDBase.ic method 0x2008ca1c; bytecode file offset 0x989498"
!SGXmlCodeStream methodsFor: 'recovered'!
beginARSubpackages
    (self) openTag: ('SUB-PACKAGES').
    ^self
! !

"ASDBase.ic method 0x2008ca7c; bytecode file offset 0x989498"
!SGXmlCodeStream methodsFor: 'recovered'!
startTagVerbatim
    (self) nextPutAll: ('<!![CDATA[').
    ^self
! !

"ASDBase.ic method 0x2008cbbc; bytecode file offset 0x989498"
!SGXmlCodeStream methodsFor: 'recovered'!
endTagVerbatim
    (self) nextPutAll: (']]>').
    ^self
! !

"ASDBase.ic method 0x20094c7c; bytecode file offset 0x991570"
!SGXmlCodeStream methodsFor: 'recovered'!
openTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) openTag: (recoveredValue0) withAttributes: (nil).
    ^self
! !

"ASDBase.ic method 0x2009b6b0; bytecode file offset 0x99803c"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTagTargetComment
    (self) endTagTargetComment.
    (self) startTagVerbatim.
    ^self
! !

"ASDBase.ic method 0x2009b6e0; bytecode file offset 0x99803c"
!SGXmlCodeStream methodsFor: 'recovered'!
openTagTargetComment
    (self) endTagVerbatim.
    (self) startTagTargetComment.
    ^self
! !

"ASDBase.ic method 0x200a36a0; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
shortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('SHORT-NAME') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38e0; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
symbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('SYMBOL') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a30; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('CATEGORY') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3eb0; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
programmingLanguage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('PROGRAMMING-LANGUAGE') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a40b0; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
displayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('DISPLAY-NAME') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4160; bytecode file offset 0x9a0b4c"
!SGXmlCodeStream methodsFor: 'recovered'!
pure: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tag: ('CAN-BE-INVOKED-CONCURRENTLY') nextPutContents: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a42d0; bytecode file offset 0x9a0b94"
!SGXmlCodeStream methodsFor: 'recovered'!
shortNameConstantSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('constant_') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) buildValidANSICIdentifier.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b3264; bytecode file offset 0x9afb1c"
!SGXmlCodeStream methodsFor: 'recovered'!
endOpenTag
    (self) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x200b947c; bytecode file offset 0x9b5dc8"
!SGXmlCodeStream methodsFor: 'recovered'!
arCoeffValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) tag: ('V') nextPutContents: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b94a4; bytecode file offset 0x9b5dc8"
!SGXmlCodeStream methodsFor: 'recovered'!
arValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) tag: ('VALUE') nextPutContents: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b94f4; bytecode file offset 0x9b5dc8"
!SGXmlCodeStream methodsFor: 'recovered'!
isService: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) tag: ('IS-SERVICE') nextPutContents: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c8774; bytecode file offset 0x9c502c"
!SGXmlCodeStream methodsFor: 'recovered'!
tag: recoveredArg1 nextPutContents: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) tag: (recoveredValue0) withAttributes: (nil) nextPutContents: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200cb4dc; bytecode file offset 0x9c7db0"
!SGXmlCodeStream methodsFor: 'recovered'!
endARPackage
    (self) endTag: ('AR-PACKAGE').
    (self) decIndent.
    ^self
! !

"ASDBase.ic method 0x200cb4f0; bytecode file offset 0x9c7db0"
!SGXmlCodeStream methodsFor: 'recovered'!
startTagTargetComment
    (self) openTag: ('targetComment').
    (self) startTagVerbatim.
    ^self
! !

"ASDBase.ic method 0x200cb574; bytecode file offset 0x9c7e5c"
!SGXmlCodeStream methodsFor: 'recovered'!
endTagTargetComment
    (self) endTagVerbatim.
    (self) closeTag: ('targetComment').
    ^self
! !

"ASDBase.ic method 0x200cb588; bytecode file offset 0x9c7e5c"
!SGXmlCodeStream methodsFor: 'recovered'!
beginARIntegerType
    (self) newline.
    (self) beginTag: ('INTEGER-TYPE').
    ^self
! !

"ASDBase.ic method 0x200cb5c0; bytecode file offset 0x9c7e80"
!SGXmlCodeStream methodsFor: 'recovered'!
endComment
    | recoveredValue0 |
    (self) decIndent.
    recoveredValue0 := (self) endCommentString.
    (self) newlinePutAll: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d23b0; bytecode file offset 0x9ced10"
!SGXmlCodeStream methodsFor: 'recovered'!
openTagSourceOptimized
    (self) openTag: ('sourceOptimized').
    (self) startTagVerbatim.
    ^self
! !

"ASDBase.ic method 0x200d23c4; bytecode file offset 0x9ced10"
!SGXmlCodeStream methodsFor: 'recovered'!
openTagSourceCode
    (self) openTag: ('sourceCode').
    (self) startTagVerbatim.
    ^self
! !

"ASDBase.ic method 0x200d243c; bytecode file offset 0x9ced10"
!SGXmlCodeStream methodsFor: 'recovered'!
openTagTargetCode
    (self) openTag: ('ansic').
    (self) startTagVerbatim.
    ^self
! !

"ASDBase.ic method 0x200d3860; bytecode file offset 0x9d0170"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTagSourceCode
    (self) endTagVerbatim.
    (self) closeTag: ('sourceCode').
    ^self
! !

"ASDBase.ic method 0x200d3874; bytecode file offset 0x9d0170"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTagTargetCode
    (self) endTagVerbatim.
    (self) closeTag: ('ansic').
    ^self
! !

"ASDBase.ic method 0x200d3888; bytecode file offset 0x9d0170"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTagSourceOptimized
    (self) endTagVerbatim.
    (self) closeTag: ('sourceOptimized').
    ^self
! !

"ASDBase.ic method 0x200dca50; bytecode file offset 0x9d930c"
!SGXmlCodeStream methodsFor: 'recovered'!
beginTag: recoveredArg1 withAttributes: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) openTag: (recoveredValue0) withAttributes: (recoveredValue1).
    (self) incIndent.
    ^self
! !

"ASDBase.ic method 0x200dff84; bytecode file offset 0x9dc83c"
!SGXmlCodeStream methodsFor: 'recovered'!
tagIndentationNoImplInPath
    (self) incIndent.
    (self) incIndent.
    (self) incIndent.
    ^self
! !

"ASDBase.ic method 0x200fad90; bytecode file offset 0x9f7678"
!SGXmlCodeStream methodsFor: 'recovered'!
endTag: recoveredArg1
    | recoveredValue0 |
    (self) decIndent.
    (self) newline.
    recoveredValue0 := recoveredArg1.
    (self) closeTag: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201002c8; bytecode file offset 0x9fcb90"
!SGXmlCodeStream methodsFor: 'recovered'!
shortNameConstantSpec: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) createUniqueBaseTypeIdentifier.
    recoveredValue2 := ('c_') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) buildValidANSICIdentifier.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201041b4; bytecode file offset 0xa00a78"
!SGXmlCodeStream methodsFor: 'recovered'!
beginComment
    | recoveredValue0 |
    (self) newline.
    recoveredValue0 := (self) beginCommentString.
    (self) nextPutAll: (recoveredValue0).
    (self) incIndent.
    ^self
! !

"ASDBase.ic method 0x20114624; bytecode file offset 0xa10edc"
!SGXmlCodeStream methodsFor: 'recovered'!
tagIndentationWithImplInPath
    (self) incIndent.
    (self) incIndent.
    (self) incIndent.
    (self) incIndent.
    ^self
! !

"ASDBase.ic method 0x20121a78; bytecode file offset 0xa1e338"
!SGXmlCodeStream methodsFor: 'recovered'!
tag: recoveredArg1 newlinePutContents: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) beginTag: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) newlinePutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) endTag: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20123410; bytecode file offset 0xa1fcd0"
!SGXmlCodeStream methodsFor: 'recovered'!
openTag: recoveredArg1 withAttribute: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) startOpenTag: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) addTagAttributeNamed: (recoveredValue1) value: (recoveredValue2).
    (self) endOpenTag.
    ^self
! !

"ASDBase.ic method 0x20134340; bytecode file offset 0xa30c04"
!SGXmlCodeStream methodsFor: 'recovered'!
beginARPackage: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) incIndent.
    recoveredValue0 := recoveredArg1.
    (self) beginTag: ('AR-PACKAGE') attributes: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) description: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20135448; bytecode file offset 0xa31d08"
!SGXmlCodeStream methodsFor: 'recovered'!
tag: recoveredArg1 withAttributes: recoveredArg2 nextPutContents: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) openTag: (recoveredValue0) withAttributes: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    (self) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) closeTag: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20141848; bytecode file offset 0xa3e108"
!SGXmlCodeStream methodsFor: 'recovered'!
startOpenTag: recoveredArg1
    | recoveredValue0 |
    (self) newline.
    (self) nextPut: ($<).
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20152b1c; bytecode file offset 0xa4f3dc"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTag: recoveredArg1
    | recoveredValue0 |
    (self) nextPutAll: ('</').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x20154338; bytecode file offset 0xa50c04"
!SGXmlCodeStream methodsFor: 'recovered'!
addTagAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) addTagAttributeNamed: (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016395c; bytecode file offset 0xa60224"
!SGXmlCodeStream methodsFor: 'recovered'!
compuConst: recoveredArg1
    | recoveredValue0 |
    (self) beginTag: ('COMPU-CONST').
    recoveredValue0 := recoveredArg1.
    (self) tag: ('VT') nextPutContents: (recoveredValue0).
    (self) endTag: ('COMPU-CONST').
    ^self
! !

"ASDBase.ic method 0x20168c4c; bytecode file offset 0xa65520"
!SGXmlCodeStream methodsFor: 'recovered'!
openTag: recoveredArg1 withAttributes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) startOpenTag: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addTagAttributes: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) endOpenTag.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20175204; bytecode file offset 0xa71acc"
!SGXmlCodeStream methodsFor: 'recovered'!
destination: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280cf1f8Arg1 :block280cf1f8Arg2 | 
    | block280cf1f8Value0 block280cf1f8Value1 block280cf1f8Value2 block280cf1f8Value3 |
    block280cf1f8Value0 := block280cf1f8Arg1.
    block280cf1f8Value1 := (block280cf1f8Value0) , ('/').
    block280cf1f8Value2 := block280cf1f8Arg2.
    block280cf1f8Value3 := (block280cf1f8Value1) , (block280cf1f8Value2).
    block280cf1f8Value3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b2254; bytecode file offset 0xaaeb1c"
!SGXmlCodeStream methodsFor: 'recovered'!
closeTagOnNewLine: recoveredArg1
    | recoveredValue0 |
    (self) decIndent.
    (self) newline.
    (self) nextPutAll: ('</').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPut: ($>).
    ^self
! !

"ASDBase.ic method 0x201f37c0; bytecode file offset 0xaf0090"
!SGXmlCodeStream methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'DESC'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) openTag: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'DESC'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) closeTag: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) beginComment.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) endComment.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ccd8; bytecode file offset 0xb195a0"
!SGXmlCodeStream methodsFor: 'recovered'!
version: recoveredArg1 encoding: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) nextPutAll: ('<?xml ').
    (self) nextPutAll: ('version="').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPutAll: ('" encoding="').
    recoveredValue1 := recoveredArg2.
    (self) nextPutAll: (recoveredValue1).
    (self) nextPutAll: ('" ?>').
    ^self
! !

"ASDBase.ic method 0x2022192c; bytecode file offset 0xb1e1f8"
!SGXmlCodeStream methodsFor: 'recovered'!
beginTag: recoveredArg1 attributes: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) uuid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) beginTag: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) beginTag: (recoveredStack2) withAttributes: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) shortName: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20243b8c; bytecode file offset 0xb4045c"
!SGXmlCodeStream methodsFor: 'recovered'!
arInterval: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'LOWER-LIMIT'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) tag: (recoveredStack2) nextPutContents: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'UPPER-LIMIT'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) tag: (recoveredStack2) nextPutContents: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442144; bytecode file offset 0xd3ea18"
!SGXmlCodeStream methodsFor: 'recovered'!
addTagAttributeNamed: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) space.
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPut: ($=).
    (self) nextPut: ($").
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := $<.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack1 ~~ recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 48] ifFalse: [recoveredBlock25PC := 40].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := '&lt;'.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack2 := $>.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            (recoveredBlock25Stack1 ~~ recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 64] ifFalse: [recoveredBlock25PC := 56].
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack2 := '&gt;'.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack2 := $&.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            (recoveredBlock25Stack1 ~~ recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 80] ifFalse: [recoveredBlock25PC := 72].
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack2 := '&amp;'.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 81.
        ].
        recoveredBlock25Step = 81 ifTrue: [
            recoveredBlock25Stack2 := $".
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            (recoveredBlock25Stack1 ~~ recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 96] ifFalse: [recoveredBlock25PC := 88].
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 89.
        ].
        recoveredBlock25Step = 89 ifTrue: [
            recoveredBlock25Stack2 := '&quot;'.
            recoveredBlock25PC := 91.
        ].
        recoveredBlock25Step = 91 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 96 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 97.
        ].
        recoveredBlock25Step = 97 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 98.
        ].
        recoveredBlock25Step = 98 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) nextPut: (recoveredBlock25Stack2).
            recoveredBlock25PC := 99.
        ].
        recoveredBlock25Step = 99 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue1) do: (recoveredValue2).
    (self) nextPut: ($").
    ^self
! !

