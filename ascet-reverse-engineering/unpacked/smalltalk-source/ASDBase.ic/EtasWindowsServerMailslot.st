"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2024ddf8; bytecode file offset 0xb4a6cc"
!EtasWindowsServerMailslot methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mailSlotName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxMessageSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) timeout.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) securityAttributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMailslot: (recoveredStack2) cbMaxMsg: (recoveredStack3) dwReadTimeout: (recoveredStack4) lpsa: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) handle: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) handle: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041c4e0; bytecode file offset 0xd18db0"
!EtasWindowsServerMailslot methodsFor: 'recovered'!
emptyMailslot
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) maxMessageSize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := ByteArray.
    recoveredValue4 := (recoveredValue3) new: (4).
    recoveredLocal3 := recoveredValue4.
    recoveredLocal4 := false.
    recoveredLocal1 := 0.
    recoveredValue5 := [
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29Stack6 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := handle.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal2.
            recoveredBlock29PC := 41.
        ].
        recoveredBlock29Step = 41 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal2.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) size.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack4 := recoveredLocal3.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack5 := nil.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) readFile: (recoveredBlock29Stack2) nNumberOfBytesToRead: (recoveredBlock29Stack3) lpNumberOfBytesRead: (recoveredBlock29Stack4) lpOverlapped: (recoveredBlock29Stack5).
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredLocal5 := recoveredBlock29Stack1.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal3.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack2 := 0.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) uint32At: (recoveredBlock29Stack2).
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack2 := 0.
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) = (recoveredBlock29Stack2).
            recoveredBlock29PC := 65.
        ].
        recoveredBlock29Step = 65 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 68] ifFalse: [recoveredBlock29PC := 76].
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack1 := true.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            recoveredLocal4 := recoveredBlock29Stack1.
            recoveredBlock29PC := 72.
        ].
        recoveredBlock29Step = 72 ifTrue: [
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal3.
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            recoveredBlock29Stack3 := 0.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) uint32At: (recoveredBlock29Stack3).
            recoveredBlock29PC := 86.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) + (recoveredBlock29Stack2).
            recoveredBlock29PC := 87.
        ].
        recoveredBlock29Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal4.
            recoveredBlock29PC := 93.
        ].
        recoveredBlock29Step = 93 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue5) whileFalse.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x205881b4; bytecode file offset 0xe84ab4"
!EtasWindowsServerMailslot methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'ReadFile...'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) logInfo: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57Stack5 recoveredBlock57Stack6 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := ByteArray.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            recoveredBlock57Stack2 := 4.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) new: (recoveredBlock57Stack2).
            recoveredBlock57PC := 69.
        ].
        recoveredBlock57Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock57Stack1.
            recoveredBlock57PC := 72.
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            recoveredBlock57Stack2 := handle.
            recoveredBlock57PC := 75.
        ].
        recoveredBlock57Step = 75 ifTrue: [
            (recoveredBlock57Stack2 == nil) ifTrue: [recoveredBlock57PC := 122] ifFalse: [recoveredBlock57PC := 78].
        ].
        recoveredBlock57Step = 78 ifTrue: [
            recoveredBlock57PC := 79.
        ].
        recoveredBlock57Step = 79 ifTrue: [
            recoveredBlock57Stack1 := handle.
            recoveredBlock57PC := 81.
        ].
        recoveredBlock57Step = 81 ifTrue: [
            recoveredBlock57Stack2 := nil.
            recoveredBlock57PC := 82.
        ].
        recoveredBlock57Step = 82 ifTrue: [
            recoveredBlock57Stack3 := 0.
            recoveredBlock57PC := 84.
        ].
        recoveredBlock57Step = 84 ifTrue: [
            recoveredBlock57Stack4 := recoveredLocal4.
            recoveredBlock57PC := 87.
        ].
        recoveredBlock57Step = 87 ifTrue: [
            recoveredBlock57Stack5 := nil.
            recoveredBlock57PC := 88.
        ].
        recoveredBlock57Step = 88 ifTrue: [
            (recoveredBlock57Stack1) readFile: (recoveredBlock57Stack2) nNumberOfBytesToRead: (recoveredBlock57Stack3) lpNumberOfBytesRead: (recoveredBlock57Stack4) lpOverlapped: (recoveredBlock57Stack5).
            recoveredBlock57PC := 91.
        ].
        recoveredBlock57Step = 91 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal3.
            recoveredBlock57PC := 94.
        ].
        recoveredBlock57Step = 94 ifTrue: [
            recoveredBlock57Stack2 := 100.
            recoveredBlock57PC := 98.
        ].
        recoveredBlock57Step = 98 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) \\ (recoveredBlock57Stack2).
            recoveredBlock57PC := 99.
        ].
        recoveredBlock57Step = 99 ifTrue: [
            recoveredBlock57Stack2 := 0.
            recoveredBlock57PC := 101.
        ].
        recoveredBlock57Step = 101 ifTrue: [
            (recoveredBlock57Stack1 ~~ recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 109] ifFalse: [recoveredBlock57PC := 104].
        ].
        recoveredBlock57Step = 104 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 105.
        ].
        recoveredBlock57Step = 105 ifTrue: [
            recoveredBlock57Stack2 := 'GetMailslotInfo...'.
            recoveredBlock57PC := 107.
        ].
        recoveredBlock57Step = 107 ifTrue: [
            (recoveredBlock57Stack1) logInfo: (recoveredBlock57Stack2).
            recoveredBlock57PC := 109.
        ].
        recoveredBlock57Step = 109 ifTrue: [
            recoveredBlock57Stack1 := handle.
            recoveredBlock57PC := 111.
        ].
        recoveredBlock57Step = 111 ifTrue: [
            recoveredBlock57Stack2 := nil.
            recoveredBlock57PC := 112.
        ].
        recoveredBlock57Step = 112 ifTrue: [
            recoveredBlock57Stack3 := recoveredLocal5.
            recoveredBlock57PC := 115.
        ].
        recoveredBlock57Step = 115 ifTrue: [
            recoveredBlock57Stack4 := recoveredLocal2.
            recoveredBlock57PC := 118.
        ].
        recoveredBlock57Step = 118 ifTrue: [
            recoveredBlock57Stack5 := nil.
            recoveredBlock57PC := 119.
        ].
        recoveredBlock57Step = 119 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) getMailslotInfo: (recoveredBlock57Stack2) lpcbNextMsg: (recoveredBlock57Stack3) lpcMsg: (recoveredBlock57Stack4) lpdwReadTimeout: (recoveredBlock57Stack5).
            recoveredBlock57PC := 122.
        ].
        recoveredBlock57Step = 122 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint32At: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint32At: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'ReadFile (final)...'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) logInfo: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2) nNumberOfBytesToRead: (recoveredStack3) lpNumberOfBytesRead: (recoveredStack4) lpOverlapped: (recoveredStack5).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint32At: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'Read Mailslot: '.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) asStringZ.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) logInfo: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'Read failed - timeout!!'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

