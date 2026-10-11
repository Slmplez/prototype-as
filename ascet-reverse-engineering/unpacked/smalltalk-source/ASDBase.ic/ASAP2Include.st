"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bc90; bytecode file offset 0x908be4"
!ASAP2Include methodsFor: 'recovered'!
includeFileName
    | recoveredValue0 |
    recoveredValue0 := (self) longName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001de28; bytecode file offset 0x92209c"
!ASAP2Include methodsFor: 'recovered'!
XCP_v1_0
    ^'/*extracted form specification by Ruo/ETAS */
/************* start of XCP on different Transport Layers *******************/

"XCP" struct {

  taggedstruct Common_Parameters ; /* default parameters */

  taggedstruct { /* transport layer specific parameters  */
                 /* overruling of the default parameters */

    block "XCP_ON_CAN" struct {

      struct CAN_Parameters ;                   /* specific for CAN      */
      taggedstruct Common_Parameters;           /* overruling of default */
    
    };

    block "XCP_ON_SxI" struct {

      struct SxI_Parameters ;                   /* specific for SPI      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_TCP_IP" struct {

      struct TCP_IP_Parameters ;                /* specific for TCP_IP   */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_UDP_IP" struct {

      struct UDP_IP_Parameters ;                /* specific for UDP      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_USB" struct {

      struct USB_Parameters ;                   /* specific for USB      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

  };

};/************* end of XCP on different Transport Layers ********************/

'
! !

"ASDBase.ic method 0x2002a574; bytecode file offset 0x934580"
!ASAP2Include methodsFor: 'recovered'!
dbObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := (recoveredValue0) dbObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035a74; bytecode file offset 0x934580"
!ASAP2Include methodsFor: 'recovered'!
hasContents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b85c; bytecode file offset 0x948384"
!ASAP2Include methodsFor: 'recovered'!
objects
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004be1c; bytecode file offset 0x94877c"
!ASAP2Include methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bf14; bytecode file offset 0x948b80"
!ASAP2Include methodsFor: 'recovered'!
hashId
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200593c8; bytecode file offset 0x956284"
!ASAP2Include methodsFor: 'recovered'!
getOnlyIFData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getOnlyIFData: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20077e2c; bytecode file offset 0x9757c8"
!ASAP2Include methodsFor: 'recovered'!
isASAP2Include
    ^true
! !

"ASDBase.ic method 0x200983e4; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
addAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098554; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
postParse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) postParse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200989d4; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
setDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setDeviceLink: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098ad4; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
createDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) createDeviceLink: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098d94; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098e44; bytecode file offset 0x995850"
!ASAP2Include methodsFor: 'recovered'!
removeDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeDeviceLink: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a2f8; bytecode file offset 0x997194"
!ASAP2Include methodsFor: 'recovered'!
labelFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) labelFor: (recoveredValue1) in: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a6608; bytecode file offset 0x9a2f38"
!ASAP2Include methodsFor: 'recovered'!
objects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6764; bytecode file offset 0x9a32e0"
!ASAP2Include methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6b30; bytecode file offset 0x9a3694"
!ASAP2Include methodsFor: 'recovered'!
hashId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200dac00; bytecode file offset 0x9d74c8"
!ASAP2Include methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) selector.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) arguments.
    recoveredValue6 := (recoveredValue1) perform: (recoveredValue3) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200e6708; bytecode file offset 0x9e30bc"
!ASAP2Include methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 |
    super minimizeCollections.
    recoveredValue0 := (self) objects.
    (recoveredValue0) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x200ee7cc; bytecode file offset 0x9eb090"
!ASAP2Include methodsFor: 'recovered'!
createBytesObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) objects.
    recoveredValue3 := (recoveredValue2) createBytesObject.
    (recoveredValue1) objects: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f9708; bytecode file offset 0x9f5fd4"
!ASAP2Include methodsFor: 'recovered'!
ifData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIFData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9718; bytecode file offset 0x9f5fd4"
!ASAP2Include methodsFor: 'recovered'!
a2ml
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isA2ml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fc2b4; bytecode file offset 0x9f8b74"
!ASAP2Include methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredValue0 |
    (self) parent: (nil).
    recoveredValue0 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2011b564; bytecode file offset 0xa17e28"
!ASAP2Include methodsFor: 'recovered'!
openWorkspace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultAction: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011da88; bytecode file offset 0xa1a348"
!ASAP2Include methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getLongName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getIncludeFrom: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20172f90; bytecode file offset 0xa6f860"
!ASAP2Include methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) objects: (recoveredValue1).
    recoveredValue2 := (self) abtHash32.
    (self) hashId: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201cd394; bytecode file offset 0xac9ca0"
!ASAP2Include methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
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
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'openWorkspace'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'openWorkspace'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202298ac; bytecode file offset 0xb26178"
!ASAP2Include methodsFor: 'recovered'!
addTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objects.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := (self) copy.
    recoveredBlock5Local1 := recoveredBlock5Value0.
    recoveredBlock5Value1 := recoveredBlock5Local1.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    (recoveredBlock5Value1) objects: (recoveredBlock5Value2).
    recoveredBlock5Value3 := recoveredArg1.
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := (recoveredBlock5Value4) getSetMethodFor: (recoveredBlock5Value5).
    recoveredBlock5Value7 := recoveredBlock5Local1.
    recoveredBlock5Value8 := (recoveredBlock5Value3) perform: (recoveredBlock5Value6) with: (recoveredBlock5Value7).
    recoveredBlock5Value8
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202620c8; bytecode file offset 0xb5e994"
!ASAP2Include methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) selectObjectsFrom: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20266370; bytecode file offset 0xb62c48"
!ASAP2Include methodsFor: 'recovered'!
getBytesFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASAP2FileReader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) longName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIncludeFrom: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20283218; bytecode file offset 0xb7fae8"
!ASAP2Include methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284c9c; bytecode file offset 0xb81568"
!ASAP2Include methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028813c; bytecode file offset 0xb84a08"
!ASAP2Include methodsFor: 'recovered'!
getObjectsFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) addFromASAPInclude: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addToASAPInclude: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 39]] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028d6a4; bytecode file offset 0xb89f74"
!ASAP2Include methodsFor: 'recovered'!
createHardwareObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) ifData.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := ('cn1001385') = ('bz').
    recoveredBlock5Value1 := (self) objects.
    recoveredBlock5Value2 := (recoveredBlock5Value1) createHardwareObject.
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) a2ml.
    recoveredValue3 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    ^recoveredBlock27Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) objects.
    recoveredValue5 := (recoveredValue4) createHardwareObject.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a0d74; bytecode file offset 0xb9d64c"
!ASAP2Include methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2FileReader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludeWritten: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASAP2FileReader.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) addIncludeWritten: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) putNewLineIn: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) putKeyWordIn: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) putSeparatorIn: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) includeFileName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) putIn: (recoveredStack3) quotedString: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) putStreamIn: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202aa8c4; bytecode file offset 0xba71ac"
!ASAP2Include methodsFor: 'recovered'!
getStandardIncludeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) StandardIncludes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 recoveredBlock6Value13 |
    recoveredBlock6Value0 := ReadStream.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) on: (recoveredBlock6Value1).
    recoveredBlock6Local2 := recoveredBlock6Value2.
    recoveredBlock6Value3 := (self) parent.
    recoveredBlock6Value4 := (recoveredBlock6Value3) getObject.
    recoveredBlock6Value5 := (recoveredBlock6Value4) class.
    recoveredBlock6Value6 := (recoveredBlock6Value5) create.
    recoveredBlock6Value7 := recoveredBlock6Value6.
    recoveredBlock6Local1 := recoveredBlock6Value7.
    recoveredBlock6Value8 := recoveredBlock6Local2.
    (recoveredBlock6Value6) parseInclude: (recoveredBlock6Value8).
    recoveredBlock6Value9 := ASAP2FileReader.
    recoveredBlock6Value10 := recoveredBlock6Local2.
    recoveredBlock6Value11 := (self) longName.
    (recoveredBlock6Value9) closeStream: (recoveredBlock6Value10) name: (recoveredBlock6Value11).
    recoveredBlock6Value12 := recoveredBlock6Local1.
    recoveredBlock6Value13 := (self) getObjectsFrom: (recoveredBlock6Value12).
    recoveredBlock6Value13
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202e5544; bytecode file offset 0xbe1e10"
!ASAP2Include methodsFor: 'recovered'!
clearId
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) clearId.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 48]] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20352618; bytecode file offset 0xc4eef0"
!ASAP2Include methodsFor: 'recovered'!
createCommentObject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) annotation.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) annotation.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayIdentifier.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'cn1001385'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'bz'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommentObject.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035fd10; bytecode file offset 0xc5c5e0"
!ASAP2Include methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectObjectsFlat: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 40] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eb71c; bytecode file offset 0xce7ffc"
!ASAP2Include methodsFor: 'recovered'!
putStreamIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASAP2FileReader.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIncludeFile: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := recoveredLocal1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) putIn: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) putStreamIn: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046d4bc; bytecode file offset 0xd69d90"
!ASAP2Include methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'aTotal'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := 'aTotal'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [
    1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 |
    recoveredBlock55Value0 := recoveredArg1.
    recoveredBlock55Value1 := recoveredLocal1.
    recoveredBlock55Value2 := (self) at: (recoveredBlock55Value1).
    recoveredBlock55Value3 := (recoveredBlock55Value2) class.
    recoveredBlock55Value4 := recoveredBlock55Arg1.
    recoveredBlock55Value5 := (recoveredBlock55Value4) + (1).
    recoveredBlock55Value6 := (recoveredBlock55Value0) at: (recoveredBlock55Value3) put: (recoveredBlock55Value5).
    recoveredBlock55Value6
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4) ifPresent: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) countObjectsIn: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 24] ifFalse: [recoveredPC := 119]] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20506cec; bytecode file offset 0xe03614"
!ASAP2Include methodsFor: 'recovered'!
getIncludeFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) StandardIncludes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) longName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := ASAP2FileReader.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) longName.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) createIncludeFrom: (recoveredBlock17Stack3).
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack3.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isCfsError.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 40] ifFalse: [recoveredBlock17PC := 115].
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := RBBcrtl32DLL.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) longName.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) splitPath: (recoveredBlock17Stack2).
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := ASAP2FileReader.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack3 := 3.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) at: (recoveredBlock17Stack3).
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack4 := 4.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) at: (recoveredBlock17Stack4).
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) , (recoveredBlock17Stack3).
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) createIncludeFrom: (recoveredBlock17Stack2).
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack2.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isCfsError.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 78] ifFalse: [recoveredBlock17PC := 107].
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack1 := System.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isRuntime.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 86] ifFalse: [recoveredBlock17PC := 96].
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack2 := SCASAP2CouldNotOpenIncludeFile.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) longName.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            (recoveredBlock17Stack1) logError: (recoveredBlock17Stack2) word: (recoveredBlock17Stack3).
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack2 := SCASAP2CouldNotOpenIncludeFile.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) longName.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            (recoveredBlock17Stack1) logWarning: (recoveredBlock17Stack2) word: (recoveredBlock17Stack3).
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 107 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) longName: (recoveredBlock17Stack2).
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 113.
        ].
        recoveredBlock17Step = 113 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack3.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 recoveredBlock116Value4 |
    recoveredBlock116Value0 := ReadStream.
    recoveredBlock116Value1 := (self) class.
    recoveredBlock116Value2 := (recoveredBlock116Value1) xcpAmlStream.
    recoveredBlock116Value3 := (recoveredBlock116Value0) on: (recoveredBlock116Value2).
    recoveredBlock116Value4 := recoveredBlock116Value3.
    recoveredLocal2 := recoveredBlock116Value4.
    recoveredBlock116Value3
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) parseInclude: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := ASAP2FileReader.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) longName.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) closeStream: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) getObjectsFrom: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

