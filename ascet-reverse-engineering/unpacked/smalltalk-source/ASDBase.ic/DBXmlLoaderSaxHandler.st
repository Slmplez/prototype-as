"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000fd8; bytecode file offset 0x8ffcfc"
!DBXmlLoaderSaxHandler methodsFor: 'recovered'!
asSymbol
    ^self
! !

"ASDBase.ic method 0x20041474; bytecode file offset 0x93dd2c"
!DBXmlLoaderSaxHandler methodsFor: 'recovered'!
document
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loadedObject.
    recoveredValue1 := (recoveredValue0) object.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20129328; bytecode file offset 0xa25c54"
!DBXmlLoaderSaxHandler methodsFor: 'recovered'!
loadedObjectDescriptor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := loadedObjectDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DBXmlLoadedObjectDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            loadedObjectDescriptor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := loadedObjectDescriptor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20337860; bytecode file offset 0xc34144"
!DBXmlLoaderSaxHandler methodsFor: 'recovered'!
endElement: recoveredArg1 rawName: recoveredArg2 uri: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) popElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Unexpected endTag for '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' encountered.  Expected '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Object'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRootObject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            loadedObject := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := loadedObjectDescriptor.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) resolveObjectReferences.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentElement.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) abtAtAttribute: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056d0c8; bytecode file offset 0xe699cc"
!DBXmlLoaderSaxHandler methodsFor: 'recovered'!
startElement: recoveredArg1 rawName: recoveredArg2 uri: recoveredArg3 attributes: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Object'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) loadedObjectDescriptor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) pushElement: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := (self) loadedObjectDescriptor.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) key.
    recoveredBlock29Value3 := recoveredBlock29Arg1.
    recoveredBlock29Value4 := (recoveredBlock29Value3) value.
    recoveredBlock29Value5 := (recoveredBlock29Value0) abtAtAttribute: (recoveredBlock29Value2) put: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := DBXmlReferenceConverter.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) loadedObjectDescriptor.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) LoadedObjectDescriptor: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'lass'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := DBXmlClassDescription.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) create.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) pushElement: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 |
    recoveredBlock90Value0 := recoveredLocal2.
    recoveredBlock90Value1 := recoveredBlock90Arg1.
    recoveredBlock90Value2 := (recoveredBlock90Value1) key.
    recoveredBlock90Value3 := recoveredBlock90Arg1.
    recoveredBlock90Value4 := (recoveredBlock90Value3) value.
    recoveredBlock90Value5 := (recoveredBlock90Value0) abtAtAttribute: (recoveredBlock90Value2) put: (recoveredBlock90Value4).
    recoveredBlock90Value5
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'nstance'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := DBXmlInstance.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) create.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) pushElement: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 recoveredBlock148Value4 recoveredBlock148Value5 |
    recoveredBlock148Value0 := recoveredLocal2.
    recoveredBlock148Value1 := recoveredBlock148Arg1.
    recoveredBlock148Value2 := (recoveredBlock148Value1) key.
    recoveredBlock148Value3 := recoveredBlock148Arg1.
    recoveredBlock148Value4 := (recoveredBlock148Value3) value.
    recoveredBlock148Value5 := (recoveredBlock148Value0) abtAtAttribute: (recoveredBlock148Value2) put: (recoveredBlock148Value4).
    recoveredBlock148Value5
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'r'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := DBXmlReferenceConverter.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := (recoveredStack4) create.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) pushElement: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 recoveredBlock206Value2 recoveredBlock206Value3 recoveredBlock206Value4 recoveredBlock206Value5 |
    recoveredBlock206Value0 := recoveredLocal2.
    recoveredBlock206Value1 := recoveredBlock206Arg1.
    recoveredBlock206Value2 := (recoveredBlock206Value1) key.
    recoveredBlock206Value3 := recoveredBlock206Arg1.
    recoveredBlock206Value4 := (recoveredBlock206Value3) value.
    recoveredBlock206Value5 := (recoveredBlock206Value0) abtAtAttribute: (recoveredBlock206Value2) put: (recoveredBlock206Value4).
    recoveredBlock206Value5
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := String.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) pushElement: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

