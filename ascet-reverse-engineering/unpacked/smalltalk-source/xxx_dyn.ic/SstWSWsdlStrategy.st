"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20006498; bytecode file offset 0x67564"
!SstWSWsdlStrategy methodsFor: 'recovered'!
servicesForUndeploymentFrom: recoveredArg1 using: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) services.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) resolveServicesDescribedIn: (recoveredValue1) withDeployedServicesIn: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007250; bytecode file offset 0x68318"
!SstWSWsdlStrategy methodsFor: 'recovered'!
deploy: recoveredArg1 into: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) deploy: (recoveredValue0) into: (recoveredValue1) using: (nil).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000e5c4; bytecode file offset 0x6f694"
!SstWSWsdlStrategy methodsFor: 'recovered'!
deployUnmanagedServices: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) buildRuntimeWSDL: (recoveredValue0) using: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) createDeploymentDescriptor: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (self) createWebServicesFrom: (recoveredValue5) using: (recoveredValue6) with: (recoveredValue7).
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x20011088; bytecode file offset 0x72158"
!SstWSWsdlStrategy methodsFor: 'recovered'!
undeploy: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) buildRuntimeWSDL: (recoveredValue0) using: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) servicesForUndeploymentFrom: (recoveredValue3) using: (nil) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (self) undeployServices: (recoveredValue6) from: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x20017848; bytecode file offset 0x7891c"
!SstWSWsdlStrategy methodsFor: 'recovered'!
deploy: recoveredArg1 into: recoveredArg2 using: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildRuntimeWSDL: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDeploymentDescriptor: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWebServicesFrom: (recoveredStack1) using: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) deployServices: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002dd20; bytecode file offset 0x8ee5c"
!SstWSWsdlStrategy methodsFor: 'recovered'!
createDeploymentDescriptor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstWSServicesDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceUrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addWsdlUrl: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) services.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ExWSDeploymentError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'No WSDL services found'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) services.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 recoveredBlock41Value12 recoveredBlock41Value13 recoveredBlock41Value14 recoveredBlock41Value15 |
    recoveredBlock41Value0 := recoveredLocal3.
    recoveredBlock41Value1 := SstWSServiceDescriptor.
    recoveredBlock41Value2 := (recoveredBlock41Value1) new.
    recoveredBlock41Value3 := (recoveredBlock41Value2) initProvider.
    recoveredBlock41Value4 := recoveredBlock41Value3.
    recoveredLocal2 := recoveredBlock41Value4.
    (recoveredBlock41Value0) addService: (recoveredBlock41Value3).
    recoveredBlock41Value5 := recoveredLocal2.
    recoveredBlock41Value6 := recoveredBlock41Value5.
    recoveredBlock41Value7 := recoveredBlock41Arg1.
    recoveredBlock41Value8 := (recoveredBlock41Value7) definedBy.
    recoveredBlock41Value9 := (recoveredBlock41Value8) targetNamespace.
    (recoveredBlock41Value6) namespace: (recoveredBlock41Value9).
    recoveredBlock41Value10 := recoveredBlock41Arg1.
    recoveredBlock41Value11 := (recoveredBlock41Value10) name.
    (recoveredBlock41Value5) name: (recoveredBlock41Value11).
    recoveredBlock41Value12 := recoveredBlock41Arg1.
    recoveredBlock41Value13 := (recoveredBlock41Value12) ports.
    recoveredBlock41Value14 := [:recoveredBlock41Block81Arg1 | 
    | recoveredBlock41Block81Stack0 recoveredBlock41Block81Stack1 recoveredBlock41Block81Stack2 recoveredBlock41Block81Stack3 recoveredBlock41Block81Stack4 recoveredBlock41Block81PC recoveredBlock41Block81Step recoveredBlock41Block81Done recoveredBlock41Block81Result |
    recoveredBlock41Block81Stack0 := nil.
    recoveredBlock41Block81PC := 88.
    recoveredBlock41Block81Done := false.
    [recoveredBlock41Block81Done not] whileTrue: [
        recoveredBlock41Block81Step := recoveredBlock41Block81PC.
        recoveredBlock41Block81Step = 88 ifTrue: [
            recoveredBlock41Block81Stack1 := nil.
            recoveredBlock41Block81PC := 89.
        ].
        recoveredBlock41Block81Step = 89 ifTrue: [
            recoveredBlock41Block81Stack2 := recoveredBlock41Block81Arg1.
            recoveredBlock41Block81PC := 90.
        ].
        recoveredBlock41Block81Step = 90 ifTrue: [
            recoveredBlock41Block81Stack2 := (recoveredBlock41Block81Stack2) portType.
            recoveredBlock41Block81PC := 92.
        ].
        recoveredBlock41Block81Step = 92 ifTrue: [
            recoveredBlock41Block81Stack3 := recoveredBlock41Block81Stack2.
            recoveredBlock41Block81PC := 93.
        ].
        recoveredBlock41Block81Step = 93 ifTrue: [
            recoveredLocal1 := recoveredBlock41Block81Stack3.
            recoveredBlock41Block81PC := 96.
        ].
        recoveredBlock41Block81Step = 96 ifTrue: [
            (recoveredBlock41Block81Stack2 == nil) ifTrue: [recoveredBlock41Block81PC := 205] ifFalse: [recoveredBlock41Block81PC := 100].
        ].
        recoveredBlock41Block81Step = 100 ifTrue: [
            recoveredBlock41Block81PC := 101.
        ].
        recoveredBlock41Block81Step = 101 ifTrue: [
            recoveredBlock41Block81Stack1 := recoveredLocal1.
            recoveredBlock41Block81PC := 104.
        ].
        recoveredBlock41Block81Step = 104 ifTrue: [
            recoveredBlock41Block81Stack1 := (recoveredBlock41Block81Stack1) allOperations.
            recoveredBlock41Block81PC := 106.
        ].
        recoveredBlock41Block81Step = 106 ifTrue: [
            recoveredBlock41Block81Stack2 := [:recoveredBlock41Block81Block106Arg1 | 
    | recoveredBlock41Block81Block106Local1 recoveredBlock41Block81Block106Local2 recoveredBlock41Block81Block106Local3 recoveredBlock41Block81Block106Stack0 recoveredBlock41Block81Block106Stack1 recoveredBlock41Block81Block106Stack2 recoveredBlock41Block81Block106Stack3 recoveredBlock41Block81Block106Stack4 recoveredBlock41Block81Block106Stack5 recoveredBlock41Block81Block106PC recoveredBlock41Block81Block106Step recoveredBlock41Block81Block106Done recoveredBlock41Block81Block106Result |
    recoveredBlock41Block81Block106Stack0 := nil.
    recoveredBlock41Block81Block106PC := 112.
    recoveredBlock41Block81Block106Done := false.
    [recoveredBlock41Block81Block106Done not] whileTrue: [
        recoveredBlock41Block81Block106Step := recoveredBlock41Block81Block106PC.
        recoveredBlock41Block81Block106Step = 112 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Arg1.
            recoveredBlock41Block81Block106PC := 113.
        ].
        recoveredBlock41Block81Block106Step = 113 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) input.
            recoveredBlock41Block81Block106PC := 115.
        ].
        recoveredBlock41Block81Block106Step = 115 ifTrue: [
            (recoveredBlock41Block81Block106Stack1 ~~ nil) ifTrue: [recoveredBlock41Block81Block106PC := 124] ifFalse: [recoveredBlock41Block81Block106PC := 118].
        ].
        recoveredBlock41Block81Block106Step = 118 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := #().
            recoveredBlock41Block81Block106PC := 120.
        ].
        recoveredBlock41Block81Block106Step = 120 ifTrue: [
            recoveredBlock41Block81Block106PC := 129.
        ].
        recoveredBlock41Block81Block106Step = 124 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Arg1.
            recoveredBlock41Block81Block106PC := 125.
        ].
        recoveredBlock41Block81Block106Step = 125 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) input.
            recoveredBlock41Block81Block106PC := 127.
        ].
        recoveredBlock41Block81Block106Step = 127 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) parts.
            recoveredBlock41Block81Block106PC := 129.
        ].
        recoveredBlock41Block81Block106Step = 129 ifTrue: [
            recoveredBlock41Block81Block106Local3 := recoveredBlock41Block81Block106Stack1.
            recoveredBlock41Block81Block106PC := 130.
        ].
        recoveredBlock41Block81Block106Step = 130 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Local3.
            recoveredBlock41Block81Block106PC := 131.
        ].
        recoveredBlock41Block81Block106Step = 131 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) isEmpty.
            recoveredBlock41Block81Block106PC := 133.
        ].
        recoveredBlock41Block81Block106Step = 133 ifTrue: [
            (recoveredBlock41Block81Block106Stack1) ifTrue: [recoveredBlock41Block81Block106PC := 136] ifFalse: [recoveredBlock41Block81Block106PC := 142].
        ].
        recoveredBlock41Block81Block106Step = 136 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Arg1.
            recoveredBlock41Block81Block106PC := 137.
        ].
        recoveredBlock41Block81Block106Step = 137 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) name.
            recoveredBlock41Block81Block106PC := 139.
        ].
        recoveredBlock41Block81Block106Step = 139 ifTrue: [
            recoveredBlock41Block81Block106PC := 149.
        ].
        recoveredBlock41Block81Block106Step = 142 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Arg1.
            recoveredBlock41Block81Block106PC := 143.
        ].
        recoveredBlock41Block81Block106Step = 143 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) name.
            recoveredBlock41Block81Block106PC := 145.
        ].
        recoveredBlock41Block81Block106Step = 145 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := ':'.
            recoveredBlock41Block81Block106PC := 147.
        ].
        recoveredBlock41Block81Block106Step = 147 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) , (recoveredBlock41Block81Block106Stack2).
            recoveredBlock41Block81Block106PC := 149.
        ].
        recoveredBlock41Block81Block106Step = 149 ifTrue: [
            recoveredBlock41Block81Block106Local2 := recoveredBlock41Block81Block106Stack1.
            recoveredBlock41Block81Block106PC := 150.
        ].
        recoveredBlock41Block81Block106Step = 150 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Local3.
            recoveredBlock41Block81Block106PC := 151.
        ].
        recoveredBlock41Block81Block106Step = 151 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) size.
            recoveredBlock41Block81Block106PC := 153.
        ].
        recoveredBlock41Block81Block106Step = 153 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := 1.
            recoveredBlock41Block81Block106PC := 155.
        ].
        recoveredBlock41Block81Block106Step = 155 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) > (recoveredBlock41Block81Block106Stack2).
            recoveredBlock41Block81Block106PC := 156.
        ].
        recoveredBlock41Block81Block106Step = 156 ifTrue: [
            (recoveredBlock41Block81Block106Stack1) ifTrue: [recoveredBlock41Block81Block106PC := 160] ifFalse: [recoveredBlock41Block81Block106PC := 191].
        ].
        recoveredBlock41Block81Block106Step = 160 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := 1.
            recoveredBlock41Block81Block106PC := 162.
        ].
        recoveredBlock41Block81Block106Step = 162 ifTrue: [
            recoveredBlock41Block81Block106Local1 := recoveredBlock41Block81Block106Stack1.
            recoveredBlock41Block81Block106PC := 163.
        ].
        recoveredBlock41Block81Block106Step = 163 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredBlock41Block81Block106Local3.
            recoveredBlock41Block81Block106PC := 164.
        ].
        recoveredBlock41Block81Block106Step = 164 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) size.
            recoveredBlock41Block81Block106PC := 166.
        ].
        recoveredBlock41Block81Block106Step = 166 ifTrue: [
            recoveredBlock41Block81Block106PC := 176.
        ].
        recoveredBlock41Block81Block106Step = 170 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := recoveredBlock41Block81Block106Local2.
            recoveredBlock41Block81Block106PC := 171.
        ].
        recoveredBlock41Block81Block106Step = 171 ifTrue: [
            recoveredBlock41Block81Block106Stack3 := 'with:'.
            recoveredBlock41Block81Block106PC := 173.
        ].
        recoveredBlock41Block81Block106Step = 173 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := (recoveredBlock41Block81Block106Stack2) , (recoveredBlock41Block81Block106Stack3).
            recoveredBlock41Block81Block106PC := 175.
        ].
        recoveredBlock41Block81Block106Step = 175 ifTrue: [
            recoveredBlock41Block81Block106Local2 := recoveredBlock41Block81Block106Stack2.
            recoveredBlock41Block81Block106PC := 176.
        ].
        recoveredBlock41Block81Block106Step = 176 ifTrue: [
            (recoveredBlock41Block81Block106Stack1 isInteger and: [recoveredBlock41Block81Block106Local1 isInteger]) ifTrue: [(recoveredBlock41Block81Block106Local1 + 1 <= recoveredBlock41Block81Block106Stack1) ifTrue: [recoveredBlock41Block81Block106Local1 := recoveredBlock41Block81Block106Local1 + 1. recoveredBlock41Block81Block106PC := 170] ifFalse: [recoveredBlock41Block81Block106Local1 := nil. recoveredBlock41Block81Block106PC := 190]] ifFalse: [recoveredBlock41Block81Block106PC := 180].
        ].
        recoveredBlock41Block81Block106Step = 180 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := recoveredBlock41Block81Block106Stack1.
            recoveredBlock41Block81Block106PC := 181.
        ].
        recoveredBlock41Block81Block106Step = 181 ifTrue: [
            recoveredBlock41Block81Block106Stack3 := recoveredBlock41Block81Block106Local1.
            recoveredBlock41Block81Block106PC := 182.
        ].
        recoveredBlock41Block81Block106Step = 182 ifTrue: [
            recoveredBlock41Block81Block106Stack3 := (recoveredBlock41Block81Block106Stack3) + (1).
            recoveredBlock41Block81Block106PC := 183.
        ].
        recoveredBlock41Block81Block106Step = 183 ifTrue: [
            recoveredBlock41Block81Block106Stack4 := recoveredBlock41Block81Block106Stack3.
            recoveredBlock41Block81Block106PC := 184.
        ].
        recoveredBlock41Block81Block106Step = 184 ifTrue: [
            recoveredBlock41Block81Block106Local1 := recoveredBlock41Block81Block106Stack4.
            recoveredBlock41Block81Block106PC := 185.
        ].
        recoveredBlock41Block81Block106Step = 185 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := (recoveredBlock41Block81Block106Stack2) < (recoveredBlock41Block81Block106Stack3).
            recoveredBlock41Block81Block106PC := 186.
        ].
        recoveredBlock41Block81Block106Step = 186 ifTrue: [
            (recoveredBlock41Block81Block106Stack2) ifTrue: [recoveredBlock41Block81Block106PC := 188] ifFalse: [recoveredBlock41Block81Block106PC := 170].
        ].
        recoveredBlock41Block81Block106Step = 188 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := nil.
            recoveredBlock41Block81Block106PC := 189.
        ].
        recoveredBlock41Block81Block106Step = 189 ifTrue: [
            recoveredBlock41Block81Block106Local1 := recoveredBlock41Block81Block106Stack2.
            recoveredBlock41Block81Block106PC := 190.
        ].
        recoveredBlock41Block81Block106Step = 190 ifTrue: [
            recoveredBlock41Block81Block106PC := 191.
        ].
        recoveredBlock41Block81Block106Step = 191 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := recoveredLocal2.
            recoveredBlock41Block81Block106PC := 194.
        ].
        recoveredBlock41Block81Block106Step = 194 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := recoveredBlock41Block81Block106Arg1.
            recoveredBlock41Block81Block106PC := 195.
        ].
        recoveredBlock41Block81Block106Step = 195 ifTrue: [
            recoveredBlock41Block81Block106Stack2 := (recoveredBlock41Block81Block106Stack2) name.
            recoveredBlock41Block81Block106PC := 197.
        ].
        recoveredBlock41Block81Block106Step = 197 ifTrue: [
            recoveredBlock41Block81Block106Stack3 := recoveredBlock41Block81Block106Local2.
            recoveredBlock41Block81Block106PC := 198.
        ].
        recoveredBlock41Block81Block106Step = 198 ifTrue: [
            recoveredBlock41Block81Block106Stack3 := (recoveredBlock41Block81Block106Stack3) asSymbol.
            recoveredBlock41Block81Block106PC := 200.
        ].
        recoveredBlock41Block81Block106Step = 200 ifTrue: [
            recoveredBlock41Block81Block106Stack1 := (recoveredBlock41Block81Block106Stack1) addMethodNamed: (recoveredBlock41Block81Block106Stack2) selector: (recoveredBlock41Block81Block106Stack3).
            recoveredBlock41Block81Block106PC := 202.
        ].
        recoveredBlock41Block81Block106Step = 202 ifTrue: [
            recoveredBlock41Block81Block106Result := recoveredBlock41Block81Block106Stack1.
            recoveredBlock41Block81Block106Done := true.
        ].
    ].
    recoveredBlock41Block81Block106Result
].
            recoveredBlock41Block81PC := 203.
        ].
        recoveredBlock41Block81Step = 203 ifTrue: [
            recoveredBlock41Block81Stack1 := (recoveredBlock41Block81Stack1) do: (recoveredBlock41Block81Stack2).
            recoveredBlock41Block81PC := 205.
        ].
        recoveredBlock41Block81Step = 205 ifTrue: [
            recoveredBlock41Block81Result := recoveredBlock41Block81Stack1.
            recoveredBlock41Block81Done := true.
        ].
    ].
    recoveredBlock41Block81Result
].
    recoveredBlock41Value15 := (recoveredBlock41Value13) do: (recoveredBlock41Value14).
    recoveredBlock41Value15
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

