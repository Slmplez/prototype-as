"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200005cc; bytecode file offset 0x1364c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callWithNoErrorCheck: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x2000061c; bytecode file offset 0x13760"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_library_init
    | recoveredValue0 |
    recoveredValue0 := SSL_library_init.
    (recoveredValue0) call.
    ^self
! !

"sci.ic method 0x2000063c; bytecode file offset 0x13760"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callCRYPTO_thread_setup
    | recoveredValue0 |
    recoveredValue0 := CRYPTO_thread_setup.
    (recoveredValue0) call.
    ^self
! !

"sci.ic method 0x2000066c; bytecode file offset 0x13760"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callOpenSSL_add_all_algorithms
    | recoveredValue0 |
    recoveredValue0 := OpenSSL_add_all_algorithms.
    (recoveredValue0) call.
    ^self
! !

"sci.ic method 0x2000067c; bytecode file offset 0x13760"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callEVP_cleanup
    | recoveredValue0 |
    recoveredValue0 := EVP_cleanup.
    (recoveredValue0) call.
    ^self
! !

"sci.ic method 0x200006cc; bytecode file offset 0x13760"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_load_error_strings
    | recoveredValue0 |
    recoveredValue0 := SSL_load_error_strings.
    (recoveredValue0) call.
    ^self
! !

"sci.ic method 0x20000f50; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv2_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv2_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000f68; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callTLSv1_client_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TLSv1_client_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000f80; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv23_server_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv23_server_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000f98; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv3_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv3_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000fb0; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callTLSv1_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TLSv1_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000fc8; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv2_client_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv2_client_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000fe0; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callTLSv1_server_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TLSv1_server_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20000ff8; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv2_server_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv2_server_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001010; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_new
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := X509_new.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001028; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv3_client_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv3_client_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001040; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv23_client_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv23_client_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001058; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv23_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv23_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001070; bytecode file offset 0x140fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSLv3_server_method
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SSLv3_server_method.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20001498; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_get_subject_nameWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := X509_get_subject_name.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x200014b0; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_get_serialNumberWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := X509_get_serialNumber.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x200014c8; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_SESSION_freeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SSL_SESSION_free.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x200014e0; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_freeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SSL_CTX_free.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x200014f8; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_freeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := X509_free.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x20001510; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_dupWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := X509_dup.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x20001528; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_freeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SSL_free.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x20001540; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_get_issuer_nameWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := X509_get_issuer_name.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x20001558; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_get_peer_certificateWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SSL_get_peer_certificate.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x20001570; bytecode file offset 0x145fc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_get_shutdownWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SSL_get_shutdown.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x2000188c; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_set_serialNumberWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := X509_set_serialNumber.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x200018a4; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_verifyDepthWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SSL_set_verify.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x200018bc; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_verify_depthWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SSL_set_verify_depth.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x200018d4; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_shutdownWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SSL_set_shutdown.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x200018ec; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_sessionWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SSL_set_session.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x20001904; bytecode file offset 0x14990"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_set_verify_depthWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SSL_CTX_set_verify_depth.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x20001c38; bytecode file offset 0x14d0c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_set_verifyWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SSL_CTX_set_verify.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001c50; bytecode file offset 0x14d0c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_NAME_onelineWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := X509_NAME_oneline.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001c68; bytecode file offset 0x14d0c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
calld2i_X509With: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := d2i_X509.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001c80; bytecode file offset 0x14d0c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_verifyWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SSL_set_verify.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) callWithNoErrorCheck: (recoveredValue0) withArguments: (recoveredValue5).
    ^recoveredValue6
! !

"sci.ic method 0x20001e00; bytecode file offset 0x14e8c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callX509_NAME_get_text_by_NIDWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := X509_NAME_get_text_by_NID.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue6).
    ^recoveredValue7
! !

"sci.ic method 0x2000236c; bytecode file offset 0x153f0"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callWithErrErrorCheck: recoveredArg1 withArguments: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [:block28001b5cArg1 | 
    | block28001b5cValue0 block28001b5cValue1 |
    block28001b5cValue0 := block28001b5cArg1.
    block28001b5cValue1 := (block28001b5cValue0) == (0).
    block28001b5cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200024e8; bytecode file offset 0x15578"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_newWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001b80Arg1 | 
    | block28001b80Value0 block28001b80Value1 |
    block28001b80Value0 := block28001b80Arg1.
    block28001b80Value1 := (block28001b80Value0) isNil.
    block28001b80Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x2000264c; bytecode file offset 0x15714"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_shutdownWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_shutdown.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001ba4Arg1 | 
    | block28001ba4Value0 block28001ba4Value1 |
    block28001ba4Value0 := block28001ba4Arg1.
    block28001ba4Value1 := (block28001ba4Value0) < (0).
    block28001ba4Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002668; bytecode file offset 0x15714"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_get_verify_resultWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_get_verify_result.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001bc8Arg1 | 
    | block28001bc8Value0 block28001bc8Value1 |
    block28001bc8Value0 := block28001bc8Arg1.
    block28001bc8Value1 := (block28001bc8Value0) < (0).
    block28001bc8Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002684; bytecode file offset 0x15714"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_pendingWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_pending.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001becArg1 | 
    | block28001becValue0 block28001becValue1 |
    block28001becValue0 := block28001becArg1.
    block28001becValue1 := (block28001becValue0) < (0).
    block28001becValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200026bc; bytecode file offset 0x15784"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_connectWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_connect.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001c10Arg1 | 
    | block28001c10Value0 block28001c10Value1 |
    block28001c10Value0 := block28001c10Arg1.
    block28001c10Value1 := (block28001c10Value0) <= (0).
    block28001c10Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200026d8; bytecode file offset 0x15784"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_set_default_verify_paths: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_CTX_set_default_verify_paths.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001c34Arg1 | 
    | block28001c34Value0 block28001c34Value1 |
    block28001c34Value0 := block28001c34Arg1.
    block28001c34Value1 := (block28001c34Value0) <= (0).
    block28001c34Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200026f4; bytecode file offset 0x15784"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_get1_sessionWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_get1_session.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001c58Arg1 | 
    | block28001c58Value0 block28001c58Value1 |
    block28001c58Value0 := block28001c58Arg1.
    block28001c58Value1 := (block28001c58Value0) <= (0).
    block28001c58Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x2000272c; bytecode file offset 0x157bc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_acceptWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_accept.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001c7cArg1 | 
    | block28001c7cValue0 block28001c7cValue1 |
    block28001c7cValue0 := block28001c7cArg1.
    block28001c7cValue1 := (block28001c7cValue0) == (-1).
    block28001c7cValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002a10; bytecode file offset 0x15b10"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_use_certificateWith: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_CTX_use_certificate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28001cc4Arg1 | 
    | block28001cc4Value0 block28001cc4Value1 |
    block28001cc4Value0 := block28001cc4Arg1.
    block28001cc4Value1 := (block28001cc4Value0) <= (0).
    block28001cc4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002a2c; bytecode file offset 0x15b10"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_set_cipher_listWith: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_CTX_set_cipher_list.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28001ce8Arg1 | 
    | block28001ce8Value0 block28001ce8Value1 |
    block28001ce8Value0 := block28001ce8Arg1.
    block28001ce8Value1 := (block28001ce8Value0) <= (0).
    block28001ce8Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002a48; bytecode file offset 0x15b10"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_set_fdWith: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_set_fd.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28001d0cArg1 | 
    | block28001d0cValue0 block28001d0cValue1 |
    block28001d0cValue0 := block28001d0cArg1.
    block28001d0cValue1 := (block28001d0cValue0) <= (0).
    block28001d0cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002a64; bytecode file offset 0x15b10"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callRAND_load_fileWith: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RAND_load_file.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28001d30Arg1 | 
    | block28001d30Value0 block28001d30Value1 |
    block28001d30Value0 := block28001d30Arg1.
    block28001d30Value1 := (block28001d30Value0) <= (0).
    block28001d30Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002a80; bytecode file offset 0x15b10"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_use_RSAPrivateKeyWith: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_CTX_use_RSAPrivateKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28001d54Arg1 | 
    | block28001d54Value0 block28001d54Value1 |
    block28001d54Value0 := block28001d54Arg1.
    block28001d54Value1 := (block28001d54Value0) <= (0).
    block28001d54Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002c94; bytecode file offset 0x15d24"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
getAllErrors
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ERR_get_error.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncCall.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002cf8; bytecode file offset 0x15d88"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callWithBlockErrorCheck: recoveredArg1 withArguments: recoveredArg2 errorBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncCallWithArguments: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SciSslError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) errorObject: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002d78; bytecode file offset 0x15e1c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callWithSslErrorCheck: recoveredArg1 withArguments: recoveredArg2 errorBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AcoResourceManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (self) basicCallWithSslErrorCheck: (recoveredBlock7Value0) withArguments: (recoveredBlock7Value1) errorBlock: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue1) lockThreadIn: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20002d90; bytecode file offset 0x15e1c"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callWithErrErrorCheck: recoveredArg1 withArguments: recoveredArg2 errorBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AcoResourceManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (self) basicCallWithErrErrorCheck: (recoveredBlock7Value0) withArguments: (recoveredBlock7Value1) errorBlock: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue1) lockThreadIn: (recoveredValue2).
    ^recoveredValue3
! !

"sci.ic method 0x20002dc8; bytecode file offset 0x15e74"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSendWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_write.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28001d78Arg1 | 
    | block28001d78Value0 block28001d78Value1 |
    block28001d78Value0 := block28001d78Arg1.
    block28001d78Value1 := (block28001d78Value0) <= (0).
    block28001d78Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002de4; bytecode file offset 0x15e74"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callRecvWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_read.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28001d9cArg1 | 
    | block28001d9cValue0 block28001d9cValue1 |
    block28001d9cValue0 := block28001d9cArg1.
    block28001d9cValue1 := (block28001d9cValue0) <= (0).
    block28001d9cValue1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithSslErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20003320; bytecode file offset 0x163b4"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_newWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SSL_CTX_new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block28001dc0Arg1 | 
    | block28001dc0Stack0 block28001dc0Stack1 block28001dc0Stack2 block28001dc0Stack3 block28001dc0PC block28001dc0Step block28001dc0Done block28001dc0Result |
    block28001dc0Stack0 := self.
    block28001dc0PC := 4.
    block28001dc0Done := false.
    [block28001dc0Done not] whileTrue: [
        block28001dc0Step := block28001dc0PC.
        block28001dc0Step = 4 ifTrue: [
            block28001dc0Stack1 := true.
            block28001dc0PC := 5.
        ].
        block28001dc0Step = 5 ifTrue: [
            block28001dc0Stack2 := block28001dc0Arg1.
            block28001dc0PC := 6.
        ].
        block28001dc0Step = 6 ifTrue: [
            block28001dc0Stack2 := (block28001dc0Stack2) isInteger.
            block28001dc0PC := 8.
        ].
        block28001dc0Step = 8 ifTrue: [
            (block28001dc0Stack2) ifTrue: [block28001dc0PC := 12] ifFalse: [block28001dc0PC := 17].
        ].
        block28001dc0Step = 12 ifTrue: [
            block28001dc0PC := 13.
        ].
        block28001dc0Step = 13 ifTrue: [
            block28001dc0Stack1 := block28001dc0Arg1.
            block28001dc0PC := 14.
        ].
        block28001dc0Step = 14 ifTrue: [
            block28001dc0Stack2 := 0.
            block28001dc0PC := 16.
        ].
        block28001dc0Step = 16 ifTrue: [
            block28001dc0Stack1 := (block28001dc0Stack1) == (block28001dc0Stack2).
            block28001dc0PC := 17.
        ].
        block28001dc0Step = 17 ifTrue: [
            block28001dc0Result := block28001dc0Stack1.
            block28001dc0Done := true.
        ].
    ].
    block28001dc0Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20003ea4; bytecode file offset 0x16f50"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
testReadForConfigFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := CfsStat.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) stat: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SciSslError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) errorCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) errorCode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) errorObject: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) message.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) errorHint: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := INTERNAL_ERROR.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) alertCode: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20003f08; bytecode file offset 0x16fa0"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
basicCallWithErrErrorCheck: recoveredArg1 withArguments: recoveredArg2 errorBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncCallWithArguments: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllErrors.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslErrorFromImplementationErrorCode: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x200044f8; bytecode file offset 0x17598"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_use_certificate_chain_file: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) testReadForConfigFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SSL_CTX_use_certificate_chain_file.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPSZ.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:block28001de4Arg1 | 
    | block28001de4Value0 block28001de4Value1 |
    block28001de4Value0 := block28001de4Arg1.
    block28001de4Value1 := (block28001de4Value0) <= (0).
    block28001de4Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20004558; bytecode file offset 0x175f4"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_load_verify_locations: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) testReadForConfigFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SSL_CTX_load_verify_locations.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [:block28001e08Arg1 | 
    | block28001e08Value0 block28001e08Value1 |
    block28001e08Value0 := block28001e08Arg1.
    block28001e08Value1 := (block28001e08Value0) <= (0).
    block28001e08Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200048a8; bytecode file offset 0x17938"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callPEM_ASN1_readWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := PEM_ASN1_read.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (6).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg4.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg5.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg6.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := (self) callWithErrErrorCheck: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue15
! !

"sci.ic method 0x200048f8; bytecode file offset 0x179c4"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_use_certificate_fileWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) testReadForConfigFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SSL_CTX_use_certificate_file.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPSZ.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:block28001e2cArg1 | 
    | block28001e2cValue0 block28001e2cValue1 |
    block28001e2cValue0 := block28001e2cArg1.
    block28001e2cValue1 := (block28001e2cValue0) <= (0).
    block28001e2cValue1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20004924; bytecode file offset 0x179c4"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callSSL_CTX_use_RSAPrivateKey_fileWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) testReadForConfigFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SSL_CTX_use_RSAPrivateKey_file.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPSZ.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:block28001e50Arg1 | 
    | block28001e50Value0 block28001e50Value1 |
    block28001e50Value0 := block28001e50Arg1.
    block28001e50Value1 := (block28001e50Value0) <= (0).
    block28001e50Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) callWithErrErrorCheck: (recoveredStack1) withArguments: (recoveredStack2) errorBlock: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20004984; bytecode file offset 0x17a40"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callLoopingSendWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) callSendWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
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
            recoveredStack1 := (recoveredStack1) isSciError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := SSL_ERROR_WANT_READ.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SSL_ERROR_WANT_WRITE.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200049a8; bytecode file offset 0x17a40"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
callLoopingRecvWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) callRecvWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
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
            recoveredStack1 := (recoveredStack1) isSciError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := SSL_ERROR_WANT_READ.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SSL_ERROR_WANT_WRITE.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200050ac; bytecode file offset 0x18144"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
sslAlertCodeMatchingErrorDescription: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SciSslError.
    recoveredValue1 := (recoveredValue0) sslMessageDictionary.
    recoveredValue2 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := 0.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) occursIn: (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 34] ifFalse: [recoveredBlock7PC := 40].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := SslTlsAlertCodes.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            ^recoveredBlock7Stack2
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack1 isInteger and: [recoveredBlock7Local1 isInteger]) ifTrue: [(recoveredBlock7Local1 + 1 <= recoveredBlock7Stack1) ifTrue: [recoveredBlock7Local1 := recoveredBlock7Local1 + 1. recoveredBlock7PC := 24] ifFalse: [recoveredBlock7Local1 := nil. recoveredBlock7PC := 54]] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) + (1).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Stack3.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack4.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) < (recoveredBlock7Stack3).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 52] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack2 := nil.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    ^nil
! !

"sci.ic method 0x20006af8; bytecode file offset 0x19bbc"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
basicCallWithSslErrorCheck: recoveredArg1 withArguments: recoveredArg2 errorBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) asyncCallWithArguments: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAcoError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SciSslError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) errorCode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) errorCode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) sslErrorFromAcoError: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := SSL_get_error.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncCallWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := SSL_ERROR_SSL.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := SSL_ERROR_SYSCALL.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllErrors.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := SciSslError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) errorCode: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslErrorFromImplementationErrorCode: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20006cbc; bytecode file offset 0x19d84"
!SciSslBlockingDispatcher methodsFor: 'recovered'!
sslErrorFromImplementationErrorCode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ERR_error_string.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) callWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) sslAlertCodeMatchingErrorDescription: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := INTERNAL_ERROR.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := '%1:%2'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := SciSslError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) errorCode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) errorHint: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) alertCode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) alertString: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

