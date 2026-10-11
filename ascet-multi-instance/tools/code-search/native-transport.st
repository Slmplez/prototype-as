[ | transportCompress transportBound transportEncode transportEnabled |
    transportCompress := nil. transportBound := nil. transportEncode := nil. transportEnabled := true.
    [:transportDb :transportPayload |
        (transportEnabled and: [transportPayload size >= 65536 and: [transportPayload size <= 536870912 and: [
            (transportPayload copyFrom: 1 to: 12) ~= 'PROBE_ERROR:']]]) ifFalse: [transportPayload] ifTrue: [
            transportDb handleExceptionsIn: [
                | capacity source buffer encodedBuffer size compressedSize encodedSize encodedText |
                transportCompress isNil ifTrue: [
                    transportCompress := PlatformFunction callingConvention: 'cdecl' function: 'compress2' library: 'zlib1'
                        parameterTypes: #('pointer' 'pointer' 'pointer' 'uint32' 'int32') returnType: 'int32'.
                    transportBound := PlatformFunction callingConvention: 'cdecl' function: 'compressBound' library: 'zlib1'
                        parameterTypes: #('uint32') returnType: 'uint32'.
                    transportEncode := PlatformFunction callingConvention: 'C' function: 'CryptBinaryToStringA' library: 'crypt32.dll'
                        parameterTypes: #('pointer' 'uint32' 'uint32' 'pointer' 'pointer') returnType: 'bool'
                ].
                capacity := transportBound callWith: transportPayload size.
                (capacity >= transportPayload size and: [capacity <= 537034781]) ifFalse: [transportDb error: 'COMPRESSION_CAPACITY_INVALID'].
                source := nil. buffer := nil. encodedBuffer := nil.
                "Snapshot fields are ASCII escaped. Pointer arguments use owned OS buffers."
                [
                    source := EtasOSByteArray callocStruct: transportPayload size.
                    buffer := EtasOSByteArray callocStruct: capacity.
                    transportPayload memcpyFrom: 0 to: transportPayload size - 1 into: source startingAt: 0.
                    size := ByteArray new: 4. size uint32At: 0 put: capacity.
                    (transportCompress callWith: buffer with: size with: source with: transportPayload size with: 1) = 0
                        ifFalse: [transportDb error: 'COMPRESSION_FAILED'].
                    compressedSize := size uint32At: 0.
                    (compressedSize > 0 and: [compressedSize <= capacity]) ifFalse: [transportDb error: 'COMPRESSED_SIZE_INVALID'].
                    encodedSize := (compressedSize + 2) // 3 * 4.
                    encodedSize + 32 >= transportPayload size ifTrue: [transportPayload] ifFalse: [
                        encodedBuffer := EtasOSByteArray callocStruct: encodedSize + 1.
                        size uint32At: 0 put: encodedSize + 1.
                        (transportEncode callWith: buffer with: compressedSize with: 1073741825 with: encodedBuffer with: size)
                            ifFalse: [transportDb error: 'BASE64_ENCODING_FAILED'].
                        (size uint32At: 0) = encodedSize ifFalse: [transportDb error: 'BASE64_SIZE_INVALID'].
                        encodedText := String new: encodedSize.
                        encodedBuffer memcpyFrom: 0 to: encodedSize - 1 into: encodedText startingAt: 0.
                        '#ZLIB_BASE64|', transportPayload size printString, '|', encodedText
                    ]
                ] ensure: [
                    source notNil ifTrue: [source free]. buffer notNil ifTrue: [buffer free].
                    encodedBuffer notNil ifTrue: [encodedBuffer free]
                ]
            ] ifFail: [:transportError | transportEnabled := false. transportPayload]
        ]
    ]
] value
