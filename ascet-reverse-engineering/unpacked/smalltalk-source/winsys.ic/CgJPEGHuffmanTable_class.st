"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200007f4; bytecode file offset 0x7cc7c"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
signature
    | recoveredValue0 |
    recoveredValue0 := DHT.
    ^recoveredValue0
! !

"winsys.ic method 0x2000226c; bytecode file offset 0x7e488"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
defaultDCLuminanceTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DCLuminanceTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"winsys.ic method 0x20002294; bytecode file offset 0x7e488"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
defaultACChrominanceTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ACChrominanceTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"winsys.ic method 0x200022a8; bytecode file offset 0x7e488"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
defaultACLuminanceTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ACLuminanceTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"winsys.ic method 0x200022bc; bytecode file offset 0x7e488"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
defaultDCChrominanceTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DCChrominanceTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"winsys.ic method 0x2000b1a8; bytecode file offset 0x87374"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
fromStream: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super fromStream: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"winsys.ic method 0x20010038; bytecode file offset 0x8c218"
!CgJPEGHuffmanTable class methodsFor: 'recovered'!
initializeOnLoad
    DCLuminanceTable := #[255 196 0 31 0 0 1 5 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11].
    DCChrominanceTable := #[255 196 0 31 1 0 3 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11].
    ACLuminanceTable := #[255 196 0 181 16 0 2 1 3 3 2 4 3 5 5 4 4 0 0 1 125 1 2 3 0 4 17 5 18 33 49 65 6 19 81 97 7 34 113 20 50 129 145 161 8 35 66 177 193 21 82 209 240 36 51 98 114 130 9 10 22 23 24 25 26 37 38 39 40 41 42 52 53 54 55 56 57 58 67 68 69 70 71 72 73 74 83 84 85 86 87 88 89 90 99 100 101 102 103 104 105 106 115 116 117 118 119 120 121 122 131 132 133 134 135 136 137 138 146 147 148 149 150 151 152 153 154 162 163 164 165 166 167 168 169 170 178 179 180 181 182 183 184 185 186 194 195 196 197 198 199 200 201 202 210 211 212 213 214 215 216 217 218 225 226 227 228 229 230 231 232 233 234 241 242 243 244 245 246 247 248 249 250].
    ACChrominanceTable := #[255 196 0 181 17 0 2 1 2 4 4 3 4 7 5 4 4 0 1 2 119 0 1 2 3 17 4 5 33 49 6 18 65 81 7 97 113 19 34 50 129 8 20 66 145 161 177 193 9 35 51 82 240 21 98 114 209 10 22 36 52 225 37 241 23 24 25 26 38 39 40 41 42 53 54 55 56 57 58 67 68 69 70 71 72 73 74 83 84 85 86 87 88 89 90 99 100 101 102 103 104 105 106 115 116 117 118 119 120 121 122 130 131 132 133 134 135 136 137 138 146 147 148 149 150 151 152 153 154 162 163 164 165 166 167 168 169 170 178 179 180 181 182 183 184 185 186 194 195 196 197 198 199 200 201 202 210 211 212 213 214 215 216 217 218 226 227 228 229 230 231 232 233 234 242 243 244 245 246 247 248 249 250].
    ^self
! !

