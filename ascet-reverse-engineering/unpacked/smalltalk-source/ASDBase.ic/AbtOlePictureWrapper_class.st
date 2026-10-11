"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019340; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_type
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('type'); setSelector: ('type:'); changeSymbol: ('typeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200199e8; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_width
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('width'); setSelector: ('width:'); changeSymbol: ('widthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d27c; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_render_x_y_cx_cy_xSrc_ySrc_cxSrc_cySrc_lprcWBounds_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('render:x:y:cx:cy:xSrc:ySrc:cxSrc:cySrc:lprcWBounds:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('OSVariantarg'); parameterName: ('hdc'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('x'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('y'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('cx'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('cy'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('xSrc'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('ySrc'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('cxSrc'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('cySrc'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('OSVariantarg'); parameterName: ('lprcWBounds'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021d88; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_hPal
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OSVariantarg); getSelector: ('hPal'); setSelector: ('hPal:'); changeSymbol: ('hPalChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200226e8; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_height
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('height'); setSelector: ('height:'); changeSymbol: ('heightChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200237e0; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_handle
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OSVariantarg); getSelector: ('handle'); setSelector: ('handle:'); changeSymbol: ('handleChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023d68; bytecode file offset 0x92209c"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_graphicsDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtGraphicsDescriptor); getSelector: ('graphicsDescriptor'); setSelector: ('graphicsDescriptor:'); changeSymbol: ('graphicsDescriptor'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20112e3c; bytecode file offset 0xa0f700"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
new
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) onFinalizeDo: ('releaseObject').
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20339cf8; bytecode file offset 0xc367b8"
!AbtOlePictureWrapper class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_handle.
    (recoveredValue2) featureNamed: ('handle') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_height.
    (recoveredValue4) featureNamed: ('height') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_hPal.
    (recoveredValue6) featureNamed: ('hPal') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_type.
    (recoveredValue8) featureNamed: ('type') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_width.
    (recoveredValue10) featureNamed: ('width') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_render_x_y_cx_cy_xSrc_ySrc_cxSrc_cySrc_lprcWBounds_.
    (recoveredValue12) featureNamed: ('render:x:y:cx:cy:xSrc:ySrc:cxSrc:cySrc:lprcWBounds:') put: (recoveredValue13).
    recoveredValue14 := (self) IS_graphicsDescriptor.
    recoveredValue15 := (recoveredValue1) featureNamed: ('graphicsDescriptor') put: (recoveredValue14).
    ^recoveredValue15
! !

