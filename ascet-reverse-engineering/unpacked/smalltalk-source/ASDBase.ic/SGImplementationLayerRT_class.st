"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2012897c; bytecode file offset 0xa25378"
!SGImplementationLayerRT class methodsFor: 'recovered'!
packagerIncludeClassNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGIlExpander.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c9258Arg1 | 
    | block280c9258Value0 block280c9258Value1 |
    block280c9258Value0 := block280c9258Arg1.
    block280c9258Value1 := (block280c9258Value0) symbol.
    block280c9258Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20663d2c; bytecode file offset 0xf6093c"
!SGImplementationLayerRT class methodsFor: 'recovered'!
loaded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgErrorHandler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'MIle1'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := '<%1> is not a valid ANSIC identifier'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'MIle100'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'Duplicate C-Code name "%1" for component types - either change name or associated naming template'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'MIle101'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 'Duplicate C-Code name "%1" for exported elements - either change name or associated naming template'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'MIle11'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'A BDE-Case operator is not allowed in the condition of a while loop'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'MIle12'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := '"%1" is not a valid ANSIC identifier --- check template "%2"'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'MIle13'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 'An explicit read or write with status handler is not allowed in the condition of a while loop'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'MIle2'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'use of reserved name <%1> --- please change it'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'MIle20'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 'Arithmetic service <%1> required but not defined'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'MIle21'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := 'Interpolation service <%1> required but not defined'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'MIle22'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 'Multiple complement services for type "%1" defined in file "%2"'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'MIle23'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := '%1 types can not be used as %2 data types, see "%3" in file "%4"'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'MIle24'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := 'Unknown type used as redundant data type, see "%1" in file "%2"'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'MIle25'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 'Empty service definition for "%1" in file "%2"'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'MIle26'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'Only %1 types can be used as %2 data types, see "%3" in file "%4"'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 'MIle27'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := 'Invalid number of arguments (%1) for optional service "%2", see "%3" in file "%4"'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'MIle3'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := 'invalid template <%1> for key %2 --- unknown argument %%%3%%'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'MIle301'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := 'invalid template <%1> for key %2 --- odd number of "%%" or "?" symbols'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'MIle33'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := 'interval of "%1" service argument %2 is not representable.'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'MIle4'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := 'interval %1 does not fit in a valid integer type, with respect to option "maximum bit length"'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 'MIle41'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := 'Limitation is missing on assignment'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 'MIle5'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := 'Using message "%1" in method "%2" with code generation option messageUsageVariant=NON_OPT_COPY is not supported'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := 'MIle60'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := 'not supported type combination for oneDInterpolation: expected cont/cont (float/float) or disc/disc (int/int) respectively'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := 'MIle61'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := 'not supported type combination for twoDInterpolation: expected cont/cont/cont (float/float/float) or disc/disc/disc (int/int/int) repectively'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 'MIle7'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := 'wrong OS specification with respect to <numHWLevels> entry in target.ini (specified <%1>, calculated <%2>)'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 'MIle76'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := 'Interval of assert operator %1 and operand interval %2 have no common values'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := 'MIle77'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := 'index <%1> out of bounds for indexed expression "%2"'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := 'MIle8'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := 'invalid compile time constant expression - floating point constant detected'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := 'MIle9'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := 'division by zero detected'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 'MIle91'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := 'implementation interval %1 of denominator represents zero'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := 'MIle92'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := 'Cannot convert an expression the negative values %1 to a modular type'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 'MIle93'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := 'F-Division is not supported for operand %1 of type %2'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := 'MIle94'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := 'Cannot choose a limit interval for floating point expressions'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := 'MIle9993'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := 'Casting leads to overflow on %1 bits targets'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'WIle1'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := 'binary operation exceeds available bit length and may not be correct'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := 'WIle11'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := 'arithmetic operation exceeds available bit length and may not be correct'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := 'WIle110'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := 'Two''s complement operation with %1 bits wraps around, but the result is used with %2 bits'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := 'WIle111'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack4 := 'Division with a constant followed by a multiplication with a constant is not reduced'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := 'WIle112'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := 'Conversion of expression of type %1 to %2 with overflow'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 'WIle113'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := 'Conversion of a calculation from %1 to %2'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := 'WIle114'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := 'Implementation flag "Limit to maximum bit length" is not supported for type %1'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := 'WIle115'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := 'Conversion of a calculation with wrap-around to floating point'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := 'WIle12'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := 'arithmetic operation has singleton interval and may not be correct'.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := 'WIle120'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack4 := 'result of arithmetic operation is always %1 and may be incorrect'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := 'WIle121'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := 'result of arithmetic operation is always %1 or %2 and may be incorrect'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := 'WIle13'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := 'arithmetic shift right operation with big shift may lead to incorrect result'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := 'WIle14'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := 'potential overflow of 1 in integer division result for min_signed/-1, will be ignored'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := 'WIle15'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack4 := 'potential division by 0, will be ignored'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := 'WIle150'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack4 := 'Protection of %1 is not generated based on interval information of elements without assignment limitation'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := 'WIle16'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := 'Arithmetic operation overflows by %1 bits, but only %2 bits are available'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := 'WIle17'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := 'Unable to limit expression correctly, since interval %1 has width of less than 1'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := 'WIle18'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack4 := 'Approximation of <%1> by <%2> leads to an relative error of <%3> (which is bigger than <%4> given in the tool options)'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := 'WIle20'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := 'optional arithmetic service <%1> not found, will use alternative code'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := 'WIle201'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack4 := 'found complement service definition for type "%1" in file "%2" without explicit redundant data type; using "%3" as redundant data type instead (Use "complement|%1|%3" to explicit define the redundant data type)'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := 'WIle21'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack4 := 'Unknown service definition key "%1" in file "%2"'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := 'WIle22'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack4 := 'Distribution is filled with identical axis points'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack3 := 'WIle30'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack4 := 'codegen.ini option entry >resolveSystemConstants=%1< not valid for experimental code - use default: %2'.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack3 := 'WIle31'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack4 := 'codegen.ini option entry >resolveSystemConstants=%1< not valid - use default: %2'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := 'WIle35'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack4 := 'codegen.ini option entry >%1< unknown --- ignored'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack3 := 'WIle40'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack4 := 'unknown memory class %1 --- please provide specification in memory class declaration file "%2"'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := 'WIle41'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack4 := 'memory class not defined for reference <%1>'.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := 'WIle50'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack4 := 'unreachable code after %1 statement --- removed'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := 'WIle51'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack4 := 'Explicit %1 access to message "%2" ignored due to message usage variant option set to "%3"'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack3 := 'WIle60'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack4 := 'The software component uses enumeration "%1". Check the ranges of the texttable compu-methods in the ARXML files generated by ASCET'.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack3 := 'WIle76'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack4 := 'Interval of assert operator %1 and operand interval %2 have no common values'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack3 := 'WIle77'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack4 := 'index <%1> possibly out of bounds for indexed expression "%2"%3'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack3 := 'WIle78'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack4 := 'index <%1> possibly out of bounds for indexed expression "%2", but unable to limit correctly.'.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack3 := 'WIle8'.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack4 := 'invalid compile time constant expression - floating point constant detected - generating runtime code instead'.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack3 := 'WIle92'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack4 := 'Code will violate MISRA rule 10.1: cannot assign expression with interval %1 to type %2'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := 'WIle97'.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack4 := 'Cannot determine access path to complex expression receiver %1'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack3 := 'IIle10'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack4 := 'Component "%1" is generated with "Prototype Implementation" specified'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := 'IIle16'.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack4 := 'Remainder is protected against rem-by-0'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := 'IIle17'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := 'Division is protected against division-by-0'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := 'IIle18'.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack4 := 'Division is protected against signed overflow'.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack3 := 'IIle51'.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack4 := 'Temporary variable %1 read and written with different system constant conditions'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack3 := 'IIle76'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack4 := 'Interval of assert operator %1 is not contained in operand interval %2'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack3 := 'IIle77'.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack4 := 'Operand interval %2 is contained in interval of assert operator %1'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack3 := 'IIle78'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack4 := 'Implementation cast %1 without assignment limitation can be replaced by an assert operator with interval %2'.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack3 := 'RIle1'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack4 := 'division by zero with variable <%1> in component <%2>'.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := 'RIle11'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack4 := 'modulo by zero with variable <%1> in component <%2>'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack3 := 'RIle12'.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack4 := 'division with signed overflow with variable <%1> in component <%2>'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack3 := 'RIle13'.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack4 := 'modulo with signed overflow with variable <%1> in component <%2>'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack3 := 'RIle140'.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack4 := 'Value %%f outside interval [%%f..%%f] in component <%1>'.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack3 := 'RIle141'.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack4 := 'Value %%li outside interval [%%li..%%li] in component <%1>'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := 'RIle142'.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack4 := 'Value %%lu outside interval [%%lu..%%lu] in component <%1>'.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := 'RIle2'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack4 := 'vector index out of range with variable <%1> in component <%2>'.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack3 := 'RIle21'.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack4 := '<variable <%1> in component <%2>> Index out of range (%%lu>=%3)'.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack3 := 'RIle22'.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack4 := '<variable <%1> in component <%2>> Index out of range (%%li<%3)'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack3 := 'RIle3'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack4 := 'reached maximum number of loop iterations in component <%1>'.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack3 := 'MCCg1'.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack4 := 'Assignment to a complex variable <%1> is not allowed for controller target'.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack3 := 'MCCg11'.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack4 := 'Assignment to a complex variable <%1> is not allowed, if "asReference" is not specified'.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack3 := 'MCCg3'.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack4 := '%2 <%1>: %3 not supported for controller targets'.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack3 := 'ECCg0'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack4 := '%1'.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack3 := 'ECCg41'.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack4 := 'Memory class <%1> specified for %2 is not declared in file "%3" - Please add declaration'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack3 := 'ECCg9'.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack4 := '(CodeGenerator) Element <%1>: size of values (%2) exceed size of type (%3)'.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack3 := 'ECCg10'.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack4 := 'Characteristic table/distribution must be parameter <%1>'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack3 := 'ECCg11'.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack4 := 'Separate "search"/"interpolate" functions of characteristic tables are not supported. Please use "getAt" function instead.'.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack3 := 'ECCg12'.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack4 := 'Distribution of fixed characteristic <%1> must be regular.'.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack3 := 'ECCg13'.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack4 := 'Bit types are not supported for instance variables of classes: <%1>'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack3 := 'WCCg10'.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack4 := 'Undefined memory class <%1>; using default'.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack3 := 'WCCg11'.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack4 := 'Unsupported record layout <%1> for parameter <%2>; using default'.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack3 := 'WCCg12'.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack4 := 'Input of Characteristic table <%1> should be a non-temporary variable'.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack3 := 'WCCg13'.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack4 := 'Undefined code syntax <%1>; using default'.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack3 := 'WCCg5'.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack4 := 'Access Method for setting complex variable <%1> is not allowed for controller target'.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack3 := 'WCCg51'.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack4 := 'Access Method for settings complex variable <%1> is not allowed, if "asReference" is not specified'.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack2 := 'WCCg6'.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack3 := '(CodeGenerator) Input of Characteristic table <%1> should be a non-temporary variable'.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := 9979.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack1 := 9999.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredPC := 1004.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack2 := SGCgErrorHandler.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack3 := 'FIle'.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack4 := 'Internal error'.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 984] ifFalse: [recoveredLocal1 := nil. recoveredPC := 1018]] ifFalse: [recoveredPC := 1008].
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 1016] ifFalse: [recoveredPC := 984].
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

