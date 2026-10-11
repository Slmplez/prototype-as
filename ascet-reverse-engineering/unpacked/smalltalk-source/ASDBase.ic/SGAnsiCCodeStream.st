"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000318; bytecode file offset 0x8ffcfc"
!SGAnsiCCodeStream methodsFor: 'recovered'!
asAnsiCCodeStream
    ^self
! !

"ASDBase.ic method 0x200173a8; bytecode file offset 0x92209c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
externKeyword
    ^'extern'
! !

"ASDBase.ic method 0x20017d8c; bytecode file offset 0x92209c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginCommentString
    ^'/*'
! !

"ASDBase.ic method 0x2001b2d8; bytecode file offset 0x92209c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endCommentString
    ^'*/'
! !

"ASDBase.ic method 0x200205f4; bytecode file offset 0x92209c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
bannerRowStart
    ^' *'
! !

"ASDBase.ic method 0x2004f674; bytecode file offset 0x94d048"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openNestedInitializer
    (self) openCompoundStmnt.
    ^self
! !

"ASDBase.ic method 0x2004f8f0; bytecode file offset 0x94d048"
!SGAnsiCCodeStream methodsFor: 'recovered'!
closeNestedInitializer
    (self) closeCompoundStmnt.
    ^self
! !

"ASDBase.ic method 0x20050400; bytecode file offset 0x94d048"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openInitializer
    (self) openCompoundStmnt.
    ^self
! !

"ASDBase.ic method 0x20062024; bytecode file offset 0x95e900"
!SGAnsiCCodeStream methodsFor: 'recovered'!
numOfTab3MarginBanner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) numBannerMaxChars.
    recoveredValue1 := (self) numRightMargin.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20072dd0; bytecode file offset 0x96f6d4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
commentTagsSize
    ^4
! !

"ASDBase.ic method 0x200746e4; bytecode file offset 0x970f98"
!SGAnsiCCodeStream methodsFor: 'recovered'!
numRightMargin
    ^10
! !

"ASDBase.ic method 0x20084aa4; bytecode file offset 0x981ca4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppEndFileProtection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) cppEndIf: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008c86c; bytecode file offset 0x989498"
!SGAnsiCCodeStream methodsFor: 'recovered'!
bannerExternalCode
    (self) sectionBanner: ('External Code').
    ^self
! !

"ASDBase.ic method 0x200979e4; bytecode file offset 0x995850"
!SGAnsiCCodeStream methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0ca0; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
ifOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('if').
    ^self
! !

"ASDBase.ic method 0x200a0d40; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endCaseOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (':').
    ^self
! !

"ASDBase.ic method 0x200a0d68; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
switchOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('switch').
    ^self
! !

"ASDBase.ic method 0x200a0d7c; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
voidKeyword
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('void').
    ^self
! !

"ASDBase.ic method 0x200a0d90; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
caseOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('case ').
    ^self
! !

"ASDBase.ic method 0x200a0e08; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
staticKeyword
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('static ').
    ^self
! !

"ASDBase.ic method 0x200a0e80; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
nullPointer
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('((void *)0)').
    ^self
! !

"ASDBase.ic method 0x200a0ed0; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
defaultOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('default:').
    ^self
! !

"ASDBase.ic method 0x200a0f34; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
breakOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('break').
    ^self
! !

"ASDBase.ic method 0x200a0f70; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
listSeparator
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (', ').
    ^self
! !

"ASDBase.ic method 0x200a1038; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
forOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('for').
    ^self
! !

"ASDBase.ic method 0x200a1114; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
constKeyword
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('const ').
    ^self
! !

"ASDBase.ic method 0x200a1128; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
elseOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('else ').
    ^self
! !

"ASDBase.ic method 0x200a118c; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
whileOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('while').
    ^self
! !

"ASDBase.ic method 0x200a11a0; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
returnOp
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('return').
    ^self
! !

"ASDBase.ic method 0x200a11f0; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
and
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (' && ').
    ^self
! !

"ASDBase.ic method 0x200a1268; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppElif
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('#elif ').
    ^self
! !

"ASDBase.ic method 0x200a127c; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppIf
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) newlinePutAll: ('#if ').
    ^self
! !

"ASDBase.ic method 0x200a1290; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
forExprListSeparator
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('; ').
    ^self
! !

"ASDBase.ic method 0x200a12cc; bytecode file offset 0x99db8c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openComment
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('/*').
    ^self
! !

"ASDBase.ic method 0x200a1540; bytecode file offset 0x99dfb8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
closeComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (self) endCommentString.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a98a4; bytecode file offset 0x9a6780"
!SGAnsiCCodeStream methodsFor: 'recovered'!
bannerRowCenteredLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) commentFillChar.
    (self) bannerRowCenteredLabel: (recoveredValue0) fillChar: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b31d4; bytecode file offset 0x9afa98"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endStmnt
    (self) nextPut: ($;).
    ^self
! !

"ASDBase.ic method 0x200b519c; bytecode file offset 0x9b1a58"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openParenthesis
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    ^self
! !

"ASDBase.ic method 0x200b51c8; bytecode file offset 0x9b1a84"
!SGAnsiCCodeStream methodsFor: 'recovered'!
closeParenthesis
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x200b521c; bytecode file offset 0x9b1ad8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppEscNewline
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($\).
    ^self
! !

"ASDBase.ic method 0x200b78d0; bytecode file offset 0x9b419c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endSectionBanner: recoveredArg1
    | recoveredValue0 |
    (self) beginSubSectionBanner.
    recoveredValue0 := recoveredArg1.
    (self) endSection: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b794c; bytecode file offset 0x9b4208"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginSectionBanner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) beginSection: (recoveredValue0).
    (self) endSubSectionBanner.
    ^self
! !

"ASDBase.ic method 0x200dad7c; bytecode file offset 0x9d7648"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endRegionBanner: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) beginSubSectionBanner.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) endRegion: (recoveredValue0) description: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dae08; bytecode file offset 0x9d76c4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginRegionBanner: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) beginRegion: (recoveredValue0) description: (recoveredValue1).
    (self) endSubSectionBanner.
    ^self
! !

"ASDBase.ic method 0x200dbf44; bytecode file offset 0x9d8800"
!SGAnsiCCodeStream methodsFor: 'recovered'!
externDeclType: recoveredArg1 var: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) externKeyword.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc820; bytecode file offset 0x9d90fc"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: ('').
    ^self
! !

"ASDBase.ic method 0x200dff38; bytecode file offset 0x9dc7f4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endComment
    (self) nextPut: ($ ).
    (self) closeComment.
    ^self
! !

"ASDBase.ic method 0x200e0000; bytecode file offset 0x9dc8bc"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginComment
    (self) openComment.
    (self) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x200e3b78; bytecode file offset 0x9e0454"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppEndIf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    (recoveredValue0) newlinePutAll: ('#endif ').
    ^self
! !

"ASDBase.ic method 0x200eced8; bytecode file offset 0x9e9794"
!SGAnsiCCodeStream methodsFor: 'recovered'!
externDeclType: recoveredArg1 var: recoveredArg2 reference: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) externKeyword.
    recoveredValue3 := recoveredArg3.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: (recoveredValue2) reference: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ed2ac; bytecode file offset 0x9e9b68"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2 dimensions: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: ('') dimensions: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ed4e8; bytecode file offset 0x9e9dc4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2 specifier: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: (recoveredValue2) dimensions: ('').
    ^self
! !

"ASDBase.ic method 0x200ee08c; bytecode file offset 0x9ea944"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2 specifier: recoveredArg3 dimensions: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: (recoveredValue2) reference: (false) dimensions: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200faddc; bytecode file offset 0x9f7698"
!SGAnsiCCodeStream methodsFor: 'recovered'!
subSection: recoveredArg1
    | recoveredValue0 |
    (self) subSectionBannerRow.
    recoveredValue0 := recoveredArg1.
    (self) bannerSectionRowLabel: (recoveredValue0).
    (self) subSectionBannerRow.
    ^self
! !

"ASDBase.ic method 0x200fadfc; bytecode file offset 0x9f76e4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
sectionBanner: recoveredArg1
    | recoveredValue0 |
    (self) beginSubSectionBanner.
    recoveredValue0 := recoveredArg1.
    (self) bannerSectionRowLabel: (recoveredValue0).
    (self) endSubSectionBanner.
    ^self
! !

"ASDBase.ic method 0x200febc0; bytecode file offset 0x9fb480"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppIfNotDefine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('#ifndef ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fec14; bytecode file offset 0x9fb4d8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('#error ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fed20; bytecode file offset 0x9fb5e0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declSpecifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) nextPutAll: (' ').
    ^self
! !

"ASDBase.ic method 0x200ffd10; bytecode file offset 0x9fc5d0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginRegion: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) region: ('BEGIN') label: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) beginSection: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ffd34; bytecode file offset 0x9fc5f4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endRegion: recoveredArg1 description: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    (self) endSection: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) region: ('END') label: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20102624; bytecode file offset 0x9feee0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2 specifier: recoveredArg3 reference: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) declVar: (recoveredValue0) type: (recoveredValue1) specifier: (recoveredValue2) reference: (recoveredValue3) dimensions: ('').
    ^self
! !

"ASDBase.ic method 0x201085e4; bytecode file offset 0xa04ea4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
closeInitializer
    | recoveredValue0 |
    (self) closeCompoundStmnt.
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($;).
    ^self
! !

"ASDBase.ic method 0x2010c478; bytecode file offset 0xa08d38"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppBeginFileProtection: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) cppIfNotDefine: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) cppDefine: (recoveredValue1).
    (self) cr.
    ^self
! !

"ASDBase.ic method 0x2011799c; bytecode file offset 0xa1425c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginSubSectionBanner
    | recoveredValue0 |
    recoveredValue0 := (self) numOfBannerChars.
    (self) bannerRowStart: ('/*') fillChar: ($-) to: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20119640; bytecode file offset 0xa15f78"
!SGAnsiCCodeStream methodsFor: 'recovered'!
beginTypedefStruct
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('typedef struct { ').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x20119678; bytecode file offset 0xa15f78"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppElse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('#else ').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x201196b0; bytecode file offset 0xa15f78"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openCompoundStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('{ ').
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x2012c74c; bytecode file offset 0xa29010"
!SGAnsiCCodeStream methodsFor: 'recovered'!
closeCompoundStmnt
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    (recoveredValue0) nextPut: ($}).
    ^self
! !

"ASDBase.ic method 0x201332ac; bytecode file offset 0xa2fba0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppDefine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#define ').
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201332c4; bytecode file offset 0xa2fba0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppUndefine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#undef ').
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201332dc; bytecode file offset 0xa2fba0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppPragma: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#pragma ').
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20134ca8; bytecode file offset 0xa31568"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppNDefine: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) cppIfNotDefine: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) cppDefine: (recoveredValue1) as: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) cppEndIf: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014181c; bytecode file offset 0xa3e0e0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
openCaseLabeledStmnt: recoveredArg1
    | recoveredValue0 |
    (self) newlinePutAll: ('case ').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPutAll: (' :').
    ^self
! !

"ASDBase.ic method 0x201661c4; bytecode file offset 0xa62a88"
!SGAnsiCCodeStream methodsFor: 'recovered'!
comment: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) beginComment.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) endComment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166dc8; bytecode file offset 0xa636c8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppIf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#if ').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x20166de4; bytecode file offset 0xa636c8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppElif: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#elif ').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x20166e00; bytecode file offset 0xa636c8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppIfdef: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#ifdef ').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x2016dd2c; bytecode file offset 0xa6a5f4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endSubSectionBanner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bannerRowStart.
    recoveredValue1 := (self) numBannerMaxChars.
    recoveredValue2 := (recoveredValue1) + (-2).
    (self) bannerRowStart: (recoveredValue0) fillChar: ($-) to: (recoveredValue2).
    (self) closeComment.
    (self) cr.
    ^self
! !

"ASDBase.ic method 0x20173c04; bytecode file offset 0xa704c0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cast: recoveredArg1
    | recoveredValue0 |
    (self) nextPut: ($().
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x20173c5c; bytecode file offset 0xa70520"
!SGAnsiCCodeStream methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 |
    (self) newline.
    (self) nextPutAll: ('return (').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x20178bec; bytecode file offset 0xa754b4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
assignStmnt: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: (' = ').
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) nextPutAll: (recoveredValue4).
    (self) endStmnt.
    ^self
! !

"ASDBase.ic method 0x201853a8; bytecode file offset 0xa81c6c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
nextPutAllLineMarker: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) beginComment.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) endComment.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185de8; bytecode file offset 0xa826b0"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppInclude: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#include "').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: ('"').
    ^self
! !

"ASDBase.ic method 0x20192a74; bytecode file offset 0xa8f338"
!SGAnsiCCodeStream methodsFor: 'recovered'!
sectionBannerList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) beginSubSectionBanner.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) bannerSectionRowLabel: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue0) do: (recoveredValue1).
    (self) endSubSectionBanner.
    ^self
! !

"ASDBase.ic method 0x201b4898; bytecode file offset 0xab1164"
!SGAnsiCCodeStream methodsFor: 'recovered'!
endTypedefStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('} ').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPutAll: (';').
    ^self
! !

"ASDBase.ic method 0x201cf094; bytecode file offset 0xacb95c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppDefine: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('#define ').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: (' ').
    recoveredValue6 := recoveredArg2.
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201cf0cc; bytecode file offset 0xacb994"
!SGAnsiCCodeStream methodsFor: 'recovered'!
functionCall: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (' (').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x2021c06c; bytecode file offset 0xb1893c"
!SGAnsiCCodeStream methodsFor: 'recovered'!
cppEndIf: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := '#endif '.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
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
            (recoveredStack1) nextPutAll: (recoveredStack2).
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
            (recoveredStack0) cr.
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

"ASDBase.ic method 0x2021cd18; bytecode file offset 0xb195e4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
region: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) newlinePutAll: ('/* ').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) nextPutAll: (': ASCET REGION ').
    (self) nextPutAll: ('"').
    recoveredValue1 := recoveredArg2.
    (self) nextPutAll: (recoveredValue1).
    (self) nextPutAll: ('" */').
    ^self
! !

"ASDBase.ic method 0x202328cc; bytecode file offset 0xb2f198"
!SGAnsiCCodeStream methodsFor: 'recovered'!
multiLineComment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) openComment.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    (self) newline.
    (self) nextPutAll: ('** ').
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) nextPutAll: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue0) do: (recoveredValue1).
    (self) newline.
    (self) closeComment.
    ^self
! !

"ASDBase.ic method 0x2024acac; bytecode file offset 0xb47570"
!SGAnsiCCodeStream methodsFor: 'recovered'!
nextPutToken: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isAlphaNumeric.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) stream.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) nextPut: (recoveredBlock5Stack2).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) stream.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := $_.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) nextPut: (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20254f58; bytecode file offset 0xb51824"
!SGAnsiCCodeStream methodsFor: 'recovered'!
paragraphBanner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) cr.
    recoveredValue0 := (self) numOfLeftIndentBannerChars.
    (self) nextPutAll: ('/*') fillChar: ($-) to: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) numBannerMaxChars.
    recoveredValue3 := (self) numOfLeftIndentBannerChars.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) + (-2).
    (self) nextPutAll: (recoveredValue1) fillChar: ($-) to: (recoveredValue5).
    (self) closeComment.
    ^self
! !

"ASDBase.ic method 0x2033b008; bytecode file offset 0xc378d8"
!SGAnsiCCodeStream methodsFor: 'recovered'!
initializeMatrix: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) openNestedInitializer.
    (self) newline.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := [:recoveredBlock10Block17Arg1 | 
    | recoveredBlock10Block17Value0 recoveredBlock10Block17Value1 recoveredBlock10Block17Value2 |
    recoveredBlock10Block17Value0 := recoveredBlock10Block17Arg1.
    recoveredBlock10Block17Value1 := (recoveredBlock10Block17Value0) asCValue.
    recoveredBlock10Block17Value2 := (self) nextPutAll: (recoveredBlock10Block17Value1).
    recoveredBlock10Block17Value2
].
    recoveredBlock10Value2 := [
    | recoveredBlock10Block28Value0 |
    recoveredBlock10Block28Value0 := (self) nextPutAll: (', ').
    recoveredBlock10Block28Value0
].
    recoveredBlock10Value3 := (recoveredBlock10Value0) do: (recoveredBlock10Value1) andBetweenDo: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue2 := [
    | recoveredBlock41Value0 |
    (self) nextPutAll: (', ').
    recoveredBlock41Value0 := (self) newline.
    recoveredBlock41Value0
].
    (recoveredValue0) do: (recoveredValue1) andBetweenDo: (recoveredValue2).
    (self) closeNestedInitializer.
    ^self
! !

"ASDBase.ic method 0x2036a044; bytecode file offset 0xc66914"
!SGAnsiCCodeStream methodsFor: 'recovered'!
declVar: recoveredArg1 type: recoveredArg2 specifier: recoveredArg3 reference: recoveredArg4 dimensions: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) newline.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := $ .
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := $*.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := $;.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038f3c8; bytecode file offset 0xc8bca4"
!SGAnsiCCodeStream methodsFor: 'recovered'!
initializeArray: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) openNestedInitializer.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '{ '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) printString.
    recoveredBlock28Value2 := (self) nextPutAll: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock40Value0 |
    recoveredBlock40Value0 := (self) nextPutAll: (', ').
    recoveredBlock40Value0
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) andBetweenDo: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) closeNestedInitializer.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := ' }'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

