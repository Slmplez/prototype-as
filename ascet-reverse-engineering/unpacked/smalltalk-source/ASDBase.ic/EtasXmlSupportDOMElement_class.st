"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022b80; bytecode file offset 0x92209c"
!EtasXmlSupportDOMElement class methodsFor: 'recovered'!
signatureSrc
    ^'
	<Signature xmlns="http://www.w3.org/2000/09/xmldsig#">
		<SignedInfo>
			<CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/>
			<SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"/>
			<Reference>
				<Transforms>
					<Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/>
				</Transforms>
				<DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"/>
				<DigestValue></DigestValue>
			</Reference>
		</SignedInfo>
		<SignatureValue></SignatureValue>
		<KeyInfo>
			<KeyName>SignatureKey</KeyName>
		</KeyInfo>
	</Signature>
'
! !

"ASDBase.ic method 0x20042804; bytecode file offset 0x93f170"
!EtasXmlSupportDOMElement class methodsFor: 'recovered'!
getSignatureNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (EtasXmlSupportDOMElement new) instVarAt: 1 put: ('Signature'); instVarAt: 2 put: ('http://www.w3.org/2000/09/xmldsig#'); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('SignedInfo'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('CanonicalizationMethod'); instVarAt: 2 put: (nil); instVarAt: 3 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMAttr new) instVarAt: 1 put: ('Algorithm'); instVarAt: 2 put: ('http://www.w3.org/TR/2001/REC-xml-c14n-20010315'); yourself); yourself); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('SignatureMethod'); instVarAt: 2 put: (nil); instVarAt: 3 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMAttr new) instVarAt: 1 put: ('Algorithm'); instVarAt: 2 put: ('http://www.w3.org/2000/09/xmldsig#rsa-sha1'); yourself); yourself); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('Reference'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('Transforms'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('Transform'); instVarAt: 2 put: (nil); instVarAt: 3 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMAttr new) instVarAt: 1 put: ('Algorithm'); instVarAt: 2 put: ('http://www.w3.org/2000/09/xmldsig#enveloped-signature'); yourself); yourself); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); yourself); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('DigestMethod'); instVarAt: 2 put: (nil); instVarAt: 3 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMAttr new) instVarAt: 1 put: ('Algorithm'); instVarAt: 2 put: ('http://www.w3.org/2000/09/xmldsig#sha1'); yourself); yourself); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('DigestValue'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); yourself); yourself); yourself); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('SignatureValue'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: (nil); yourself); add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('KeyInfo'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ((EtasXmlSupportDOMElement new) instVarAt: 1 put: ('KeyName'); instVarAt: 2 put: (nil); instVarAt: 3 put: (nil); instVarAt: 4 put: (1); instVarAt: 5 put: ((OrderedCollection new) add: ('SignatureKey'); yourself); yourself); yourself); yourself); yourself); yourself.
    recoveredValue1 := (recoveredValue0) deepCopy.
    ^recoveredValue1
! !

