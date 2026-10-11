/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.w3._2000._09.xmldsig.XmldsigFactory;
import org.w3._2000._09.xmldsig.impl.XmldsigPackageImpl;

public interface XmldsigPackage
extends EPackage {
    public static final String eNAME = "xmldsig";
    public static final String eNS_URI = "http://www.w3.org/2000/09/xmldsig#";
    public static final String eNS_PREFIX = "_xmldsig";
    public static final XmldsigPackage eINSTANCE = XmldsigPackageImpl.init();
    public static final int CANONICALIZATION_METHOD_TYPE = 0;
    public static final int CANONICALIZATION_METHOD_TYPE__MIXED = 0;
    public static final int CANONICALIZATION_METHOD_TYPE__ANY = 1;
    public static final int CANONICALIZATION_METHOD_TYPE__ALGORITHM = 2;
    public static final int CANONICALIZATION_METHOD_TYPE_FEATURE_COUNT = 3;
    public static final int CANONICALIZATION_METHOD_TYPE_OPERATION_COUNT = 0;
    public static final int DIGEST_METHOD_TYPE = 1;
    public static final int DIGEST_METHOD_TYPE__MIXED = 0;
    public static final int DIGEST_METHOD_TYPE__ANY = 1;
    public static final int DIGEST_METHOD_TYPE__ALGORITHM = 2;
    public static final int DIGEST_METHOD_TYPE_FEATURE_COUNT = 3;
    public static final int DIGEST_METHOD_TYPE_OPERATION_COUNT = 0;
    public static final int DOCUMENT_ROOT = 2;
    public static final int DOCUMENT_ROOT__MIXED = 0;
    public static final int DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int DOCUMENT_ROOT__CANONICALIZATION_METHOD = 3;
    public static final int DOCUMENT_ROOT__DIGEST_METHOD = 4;
    public static final int DOCUMENT_ROOT__DIGEST_VALUE = 5;
    public static final int DOCUMENT_ROOT__DSA_KEY_VALUE = 6;
    public static final int DOCUMENT_ROOT__KEY_INFO = 7;
    public static final int DOCUMENT_ROOT__KEY_NAME = 8;
    public static final int DOCUMENT_ROOT__KEY_VALUE = 9;
    public static final int DOCUMENT_ROOT__MANIFEST = 10;
    public static final int DOCUMENT_ROOT__MGMT_DATA = 11;
    public static final int DOCUMENT_ROOT__OBJECT = 12;
    public static final int DOCUMENT_ROOT__PGP_DATA = 13;
    public static final int DOCUMENT_ROOT__REFERENCE = 14;
    public static final int DOCUMENT_ROOT__RETRIEVAL_METHOD = 15;
    public static final int DOCUMENT_ROOT__RSA_KEY_VALUE = 16;
    public static final int DOCUMENT_ROOT__SIGNATURE = 17;
    public static final int DOCUMENT_ROOT__SIGNATURE_METHOD = 18;
    public static final int DOCUMENT_ROOT__SIGNATURE_PROPERTIES = 19;
    public static final int DOCUMENT_ROOT__SIGNATURE_PROPERTY = 20;
    public static final int DOCUMENT_ROOT__SIGNATURE_VALUE = 21;
    public static final int DOCUMENT_ROOT__SIGNED_INFO = 22;
    public static final int DOCUMENT_ROOT__SPKI_DATA = 23;
    public static final int DOCUMENT_ROOT__TRANSFORM = 24;
    public static final int DOCUMENT_ROOT__TRANSFORMS = 25;
    public static final int DOCUMENT_ROOT__X509_DATA = 26;
    public static final int DOCUMENT_ROOT_FEATURE_COUNT = 27;
    public static final int DOCUMENT_ROOT_OPERATION_COUNT = 0;
    public static final int DSA_KEY_VALUE_TYPE = 3;
    public static final int DSA_KEY_VALUE_TYPE__P = 0;
    public static final int DSA_KEY_VALUE_TYPE__Q = 1;
    public static final int DSA_KEY_VALUE_TYPE__J = 2;
    public static final int DSA_KEY_VALUE_TYPE__G = 3;
    public static final int DSA_KEY_VALUE_TYPE__Y = 4;
    public static final int DSA_KEY_VALUE_TYPE__SEED = 5;
    public static final int DSA_KEY_VALUE_TYPE__PGEN_COUNTER = 6;
    public static final int DSA_KEY_VALUE_TYPE_FEATURE_COUNT = 7;
    public static final int DSA_KEY_VALUE_TYPE_OPERATION_COUNT = 0;
    public static final int KEY_INFO_TYPE = 4;
    public static final int KEY_INFO_TYPE__MIXED = 0;
    public static final int KEY_INFO_TYPE__GROUP = 1;
    public static final int KEY_INFO_TYPE__KEY_NAME = 2;
    public static final int KEY_INFO_TYPE__KEY_VALUE = 3;
    public static final int KEY_INFO_TYPE__RETRIEVAL_METHOD = 4;
    public static final int KEY_INFO_TYPE__X509_DATA = 5;
    public static final int KEY_INFO_TYPE__PGP_DATA = 6;
    public static final int KEY_INFO_TYPE__SPKI_DATA = 7;
    public static final int KEY_INFO_TYPE__MGMT_DATA = 8;
    public static final int KEY_INFO_TYPE__ANY = 9;
    public static final int KEY_INFO_TYPE__ID = 10;
    public static final int KEY_INFO_TYPE_FEATURE_COUNT = 11;
    public static final int KEY_INFO_TYPE_OPERATION_COUNT = 0;
    public static final int KEY_VALUE_TYPE = 5;
    public static final int KEY_VALUE_TYPE__MIXED = 0;
    public static final int KEY_VALUE_TYPE__DSA_KEY_VALUE = 1;
    public static final int KEY_VALUE_TYPE__RSA_KEY_VALUE = 2;
    public static final int KEY_VALUE_TYPE__ANY = 3;
    public static final int KEY_VALUE_TYPE_FEATURE_COUNT = 4;
    public static final int KEY_VALUE_TYPE_OPERATION_COUNT = 0;
    public static final int MANIFEST_TYPE = 6;
    public static final int MANIFEST_TYPE__REFERENCE = 0;
    public static final int MANIFEST_TYPE__ID = 1;
    public static final int MANIFEST_TYPE_FEATURE_COUNT = 2;
    public static final int MANIFEST_TYPE_OPERATION_COUNT = 0;
    public static final int OBJECT_TYPE = 7;
    public static final int OBJECT_TYPE__MIXED = 0;
    public static final int OBJECT_TYPE__GROUP = 1;
    public static final int OBJECT_TYPE__ANY = 2;
    public static final int OBJECT_TYPE__ENCODING = 3;
    public static final int OBJECT_TYPE__ID = 4;
    public static final int OBJECT_TYPE__MIME_TYPE = 5;
    public static final int OBJECT_TYPE_FEATURE_COUNT = 6;
    public static final int OBJECT_TYPE_OPERATION_COUNT = 0;
    public static final int PGP_DATA_TYPE = 8;
    public static final int PGP_DATA_TYPE__PGP_KEY_ID = 0;
    public static final int PGP_DATA_TYPE__PGP_KEY_PACKET = 1;
    public static final int PGP_DATA_TYPE__ANY = 2;
    public static final int PGP_DATA_TYPE__PGP_KEY_PACKET1 = 3;
    public static final int PGP_DATA_TYPE__ANY1 = 4;
    public static final int PGP_DATA_TYPE_FEATURE_COUNT = 5;
    public static final int PGP_DATA_TYPE_OPERATION_COUNT = 0;
    public static final int REFERENCE_TYPE = 9;
    public static final int REFERENCE_TYPE__TRANSFORMS = 0;
    public static final int REFERENCE_TYPE__DIGEST_METHOD = 1;
    public static final int REFERENCE_TYPE__DIGEST_VALUE = 2;
    public static final int REFERENCE_TYPE__ID = 3;
    public static final int REFERENCE_TYPE__TYPE = 4;
    public static final int REFERENCE_TYPE__URI = 5;
    public static final int REFERENCE_TYPE_FEATURE_COUNT = 6;
    public static final int REFERENCE_TYPE_OPERATION_COUNT = 0;
    public static final int RETRIEVAL_METHOD_TYPE = 10;
    public static final int RETRIEVAL_METHOD_TYPE__TRANSFORMS = 0;
    public static final int RETRIEVAL_METHOD_TYPE__TYPE = 1;
    public static final int RETRIEVAL_METHOD_TYPE__URI = 2;
    public static final int RETRIEVAL_METHOD_TYPE_FEATURE_COUNT = 3;
    public static final int RETRIEVAL_METHOD_TYPE_OPERATION_COUNT = 0;
    public static final int RSA_KEY_VALUE_TYPE = 11;
    public static final int RSA_KEY_VALUE_TYPE__MODULUS = 0;
    public static final int RSA_KEY_VALUE_TYPE__EXPONENT = 1;
    public static final int RSA_KEY_VALUE_TYPE_FEATURE_COUNT = 2;
    public static final int RSA_KEY_VALUE_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNATURE_METHOD_TYPE = 12;
    public static final int SIGNATURE_METHOD_TYPE__MIXED = 0;
    public static final int SIGNATURE_METHOD_TYPE__HMAC_OUTPUT_LENGTH = 1;
    public static final int SIGNATURE_METHOD_TYPE__ANY = 2;
    public static final int SIGNATURE_METHOD_TYPE__ALGORITHM = 3;
    public static final int SIGNATURE_METHOD_TYPE_FEATURE_COUNT = 4;
    public static final int SIGNATURE_METHOD_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNATURE_PROPERTIES_TYPE = 13;
    public static final int SIGNATURE_PROPERTIES_TYPE__SIGNATURE_PROPERTY = 0;
    public static final int SIGNATURE_PROPERTIES_TYPE__ID = 1;
    public static final int SIGNATURE_PROPERTIES_TYPE_FEATURE_COUNT = 2;
    public static final int SIGNATURE_PROPERTIES_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNATURE_PROPERTY_TYPE = 14;
    public static final int SIGNATURE_PROPERTY_TYPE__MIXED = 0;
    public static final int SIGNATURE_PROPERTY_TYPE__GROUP = 1;
    public static final int SIGNATURE_PROPERTY_TYPE__ANY = 2;
    public static final int SIGNATURE_PROPERTY_TYPE__ID = 3;
    public static final int SIGNATURE_PROPERTY_TYPE__TARGET = 4;
    public static final int SIGNATURE_PROPERTY_TYPE_FEATURE_COUNT = 5;
    public static final int SIGNATURE_PROPERTY_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNATURE_TYPE = 15;
    public static final int SIGNATURE_TYPE__SIGNED_INFO = 0;
    public static final int SIGNATURE_TYPE__SIGNATURE_VALUE = 1;
    public static final int SIGNATURE_TYPE__KEY_INFO = 2;
    public static final int SIGNATURE_TYPE__OBJECT = 3;
    public static final int SIGNATURE_TYPE__ID = 4;
    public static final int SIGNATURE_TYPE_FEATURE_COUNT = 5;
    public static final int SIGNATURE_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNATURE_VALUE_TYPE = 16;
    public static final int SIGNATURE_VALUE_TYPE__VALUE = 0;
    public static final int SIGNATURE_VALUE_TYPE__ID = 1;
    public static final int SIGNATURE_VALUE_TYPE_FEATURE_COUNT = 2;
    public static final int SIGNATURE_VALUE_TYPE_OPERATION_COUNT = 0;
    public static final int SIGNED_INFO_TYPE = 17;
    public static final int SIGNED_INFO_TYPE__CANONICALIZATION_METHOD = 0;
    public static final int SIGNED_INFO_TYPE__SIGNATURE_METHOD = 1;
    public static final int SIGNED_INFO_TYPE__REFERENCE = 2;
    public static final int SIGNED_INFO_TYPE__ID = 3;
    public static final int SIGNED_INFO_TYPE_FEATURE_COUNT = 4;
    public static final int SIGNED_INFO_TYPE_OPERATION_COUNT = 0;
    public static final int SPKI_DATA_TYPE = 18;
    public static final int SPKI_DATA_TYPE__GROUP = 0;
    public static final int SPKI_DATA_TYPE__SPKI_SEXP = 1;
    public static final int SPKI_DATA_TYPE__ANY = 2;
    public static final int SPKI_DATA_TYPE_FEATURE_COUNT = 3;
    public static final int SPKI_DATA_TYPE_OPERATION_COUNT = 0;
    public static final int TRANSFORMS_TYPE = 19;
    public static final int TRANSFORMS_TYPE__TRANSFORM = 0;
    public static final int TRANSFORMS_TYPE_FEATURE_COUNT = 1;
    public static final int TRANSFORMS_TYPE_OPERATION_COUNT = 0;
    public static final int TRANSFORM_TYPE = 20;
    public static final int TRANSFORM_TYPE__MIXED = 0;
    public static final int TRANSFORM_TYPE__GROUP = 1;
    public static final int TRANSFORM_TYPE__ANY = 2;
    public static final int TRANSFORM_TYPE__XPATH = 3;
    public static final int TRANSFORM_TYPE__ALGORITHM = 4;
    public static final int TRANSFORM_TYPE_FEATURE_COUNT = 5;
    public static final int TRANSFORM_TYPE_OPERATION_COUNT = 0;
    public static final int X509_DATA_TYPE = 21;
    public static final int X509_DATA_TYPE__GROUP = 0;
    public static final int X509_DATA_TYPE__X509_ISSUER_SERIAL = 1;
    public static final int X509_DATA_TYPE__X509_SKI = 2;
    public static final int X509_DATA_TYPE__X509_SUBJECT_NAME = 3;
    public static final int X509_DATA_TYPE__X509_CERTIFICATE = 4;
    public static final int X509_DATA_TYPE__X509_CRL = 5;
    public static final int X509_DATA_TYPE__ANY = 6;
    public static final int X509_DATA_TYPE_FEATURE_COUNT = 7;
    public static final int X509_DATA_TYPE_OPERATION_COUNT = 0;
    public static final int X509_ISSUER_SERIAL_TYPE = 22;
    public static final int X509_ISSUER_SERIAL_TYPE__X509_ISSUER_NAME = 0;
    public static final int X509_ISSUER_SERIAL_TYPE__X509_SERIAL_NUMBER = 1;
    public static final int X509_ISSUER_SERIAL_TYPE_FEATURE_COUNT = 2;
    public static final int X509_ISSUER_SERIAL_TYPE_OPERATION_COUNT = 0;
    public static final int CRYPTO_BINARY = 23;
    public static final int DIGEST_VALUE_TYPE = 24;
    public static final int HMAC_OUTPUT_LENGTH_TYPE = 25;

    public EClass getCanonicalizationMethodType();

    public EAttribute getCanonicalizationMethodType_Mixed();

    public EAttribute getCanonicalizationMethodType_Any();

    public EAttribute getCanonicalizationMethodType_Algorithm();

    public EClass getDigestMethodType();

    public EAttribute getDigestMethodType_Mixed();

    public EAttribute getDigestMethodType_Any();

    public EAttribute getDigestMethodType_Algorithm();

    public EClass getDocumentRoot();

    public EAttribute getDocumentRoot_Mixed();

    public EReference getDocumentRoot_XMLNSPrefixMap();

    public EReference getDocumentRoot_XSISchemaLocation();

    public EReference getDocumentRoot_CanonicalizationMethod();

    public EReference getDocumentRoot_DigestMethod();

    public EAttribute getDocumentRoot_DigestValue();

    public EReference getDocumentRoot_DSAKeyValue();

    public EReference getDocumentRoot_KeyInfo();

    public EAttribute getDocumentRoot_KeyName();

    public EReference getDocumentRoot_KeyValue();

    public EReference getDocumentRoot_Manifest();

    public EAttribute getDocumentRoot_MgmtData();

    public EReference getDocumentRoot_Object();

    public EReference getDocumentRoot_PGPData();

    public EReference getDocumentRoot_Reference();

    public EReference getDocumentRoot_RetrievalMethod();

    public EReference getDocumentRoot_RSAKeyValue();

    public EReference getDocumentRoot_Signature();

    public EReference getDocumentRoot_SignatureMethod();

    public EReference getDocumentRoot_SignatureProperties();

    public EReference getDocumentRoot_SignatureProperty();

    public EReference getDocumentRoot_SignatureValue();

    public EReference getDocumentRoot_SignedInfo();

    public EReference getDocumentRoot_SPKIData();

    public EReference getDocumentRoot_Transform();

    public EReference getDocumentRoot_Transforms();

    public EReference getDocumentRoot_X509Data();

    public EClass getDSAKeyValueType();

    public EAttribute getDSAKeyValueType_P();

    public EAttribute getDSAKeyValueType_Q();

    public EAttribute getDSAKeyValueType_J();

    public EAttribute getDSAKeyValueType_G();

    public EAttribute getDSAKeyValueType_Y();

    public EAttribute getDSAKeyValueType_Seed();

    public EAttribute getDSAKeyValueType_PgenCounter();

    public EClass getKeyInfoType();

    public EAttribute getKeyInfoType_Mixed();

    public EAttribute getKeyInfoType_Group();

    public EAttribute getKeyInfoType_KeyName();

    public EReference getKeyInfoType_KeyValue();

    public EReference getKeyInfoType_RetrievalMethod();

    public EReference getKeyInfoType_X509Data();

    public EReference getKeyInfoType_PGPData();

    public EReference getKeyInfoType_SPKIData();

    public EAttribute getKeyInfoType_MgmtData();

    public EAttribute getKeyInfoType_Any();

    public EAttribute getKeyInfoType_Id();

    public EClass getKeyValueType();

    public EAttribute getKeyValueType_Mixed();

    public EReference getKeyValueType_DSAKeyValue();

    public EReference getKeyValueType_RSAKeyValue();

    public EAttribute getKeyValueType_Any();

    public EClass getManifestType();

    public EReference getManifestType_Reference();

    public EAttribute getManifestType_Id();

    public EClass getObjectType();

    public EAttribute getObjectType_Mixed();

    public EAttribute getObjectType_Group();

    public EAttribute getObjectType_Any();

    public EAttribute getObjectType_Encoding();

    public EAttribute getObjectType_Id();

    public EAttribute getObjectType_MimeType();

    public EClass getPGPDataType();

    public EAttribute getPGPDataType_PGPKeyID();

    public EAttribute getPGPDataType_PGPKeyPacket();

    public EAttribute getPGPDataType_Any();

    public EAttribute getPGPDataType_PGPKeyPacket1();

    public EAttribute getPGPDataType_Any1();

    public EClass getReferenceType();

    public EReference getReferenceType_Transforms();

    public EReference getReferenceType_DigestMethod();

    public EAttribute getReferenceType_DigestValue();

    public EAttribute getReferenceType_Id();

    public EAttribute getReferenceType_Type();

    public EAttribute getReferenceType_URI();

    public EClass getRetrievalMethodType();

    public EReference getRetrievalMethodType_Transforms();

    public EAttribute getRetrievalMethodType_Type();

    public EAttribute getRetrievalMethodType_URI();

    public EClass getRSAKeyValueType();

    public EAttribute getRSAKeyValueType_Modulus();

    public EAttribute getRSAKeyValueType_Exponent();

    public EClass getSignatureMethodType();

    public EAttribute getSignatureMethodType_Mixed();

    public EAttribute getSignatureMethodType_HMACOutputLength();

    public EAttribute getSignatureMethodType_Any();

    public EAttribute getSignatureMethodType_Algorithm();

    public EClass getSignaturePropertiesType();

    public EReference getSignaturePropertiesType_SignatureProperty();

    public EAttribute getSignaturePropertiesType_Id();

    public EClass getSignaturePropertyType();

    public EAttribute getSignaturePropertyType_Mixed();

    public EAttribute getSignaturePropertyType_Group();

    public EAttribute getSignaturePropertyType_Any();

    public EAttribute getSignaturePropertyType_Id();

    public EAttribute getSignaturePropertyType_Target();

    public EClass getSignatureType();

    public EReference getSignatureType_SignedInfo();

    public EReference getSignatureType_SignatureValue();

    public EReference getSignatureType_KeyInfo();

    public EReference getSignatureType_Object();

    public EAttribute getSignatureType_Id();

    public EClass getSignatureValueType();

    public EAttribute getSignatureValueType_Value();

    public EAttribute getSignatureValueType_Id();

    public EClass getSignedInfoType();

    public EReference getSignedInfoType_CanonicalizationMethod();

    public EReference getSignedInfoType_SignatureMethod();

    public EReference getSignedInfoType_Reference();

    public EAttribute getSignedInfoType_Id();

    public EClass getSPKIDataType();

    public EAttribute getSPKIDataType_Group();

    public EAttribute getSPKIDataType_SPKISexp();

    public EAttribute getSPKIDataType_Any();

    public EClass getTransformsType();

    public EReference getTransformsType_Transform();

    public EClass getTransformType();

    public EAttribute getTransformType_Mixed();

    public EAttribute getTransformType_Group();

    public EAttribute getTransformType_Any();

    public EAttribute getTransformType_XPath();

    public EAttribute getTransformType_Algorithm();

    public EClass getX509DataType();

    public EAttribute getX509DataType_Group();

    public EReference getX509DataType_X509IssuerSerial();

    public EAttribute getX509DataType_X509SKI();

    public EAttribute getX509DataType_X509SubjectName();

    public EAttribute getX509DataType_X509Certificate();

    public EAttribute getX509DataType_X509CRL();

    public EAttribute getX509DataType_Any();

    public EClass getX509IssuerSerialType();

    public EAttribute getX509IssuerSerialType_X509IssuerName();

    public EAttribute getX509IssuerSerialType_X509SerialNumber();

    public EDataType getCryptoBinary();

    public EDataType getDigestValueType();

    public EDataType getHMACOutputLengthType();

    public XmldsigFactory getXmldsigFactory();

    public static interface Literals {
        public static final EClass CANONICALIZATION_METHOD_TYPE = eINSTANCE.getCanonicalizationMethodType();
        public static final EAttribute CANONICALIZATION_METHOD_TYPE__MIXED = eINSTANCE.getCanonicalizationMethodType_Mixed();
        public static final EAttribute CANONICALIZATION_METHOD_TYPE__ANY = eINSTANCE.getCanonicalizationMethodType_Any();
        public static final EAttribute CANONICALIZATION_METHOD_TYPE__ALGORITHM = eINSTANCE.getCanonicalizationMethodType_Algorithm();
        public static final EClass DIGEST_METHOD_TYPE = eINSTANCE.getDigestMethodType();
        public static final EAttribute DIGEST_METHOD_TYPE__MIXED = eINSTANCE.getDigestMethodType_Mixed();
        public static final EAttribute DIGEST_METHOD_TYPE__ANY = eINSTANCE.getDigestMethodType_Any();
        public static final EAttribute DIGEST_METHOD_TYPE__ALGORITHM = eINSTANCE.getDigestMethodType_Algorithm();
        public static final EClass DOCUMENT_ROOT = eINSTANCE.getDocumentRoot();
        public static final EAttribute DOCUMENT_ROOT__MIXED = eINSTANCE.getDocumentRoot_Mixed();
        public static final EReference DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getDocumentRoot_XMLNSPrefixMap();
        public static final EReference DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getDocumentRoot_XSISchemaLocation();
        public static final EReference DOCUMENT_ROOT__CANONICALIZATION_METHOD = eINSTANCE.getDocumentRoot_CanonicalizationMethod();
        public static final EReference DOCUMENT_ROOT__DIGEST_METHOD = eINSTANCE.getDocumentRoot_DigestMethod();
        public static final EAttribute DOCUMENT_ROOT__DIGEST_VALUE = eINSTANCE.getDocumentRoot_DigestValue();
        public static final EReference DOCUMENT_ROOT__DSA_KEY_VALUE = eINSTANCE.getDocumentRoot_DSAKeyValue();
        public static final EReference DOCUMENT_ROOT__KEY_INFO = eINSTANCE.getDocumentRoot_KeyInfo();
        public static final EAttribute DOCUMENT_ROOT__KEY_NAME = eINSTANCE.getDocumentRoot_KeyName();
        public static final EReference DOCUMENT_ROOT__KEY_VALUE = eINSTANCE.getDocumentRoot_KeyValue();
        public static final EReference DOCUMENT_ROOT__MANIFEST = eINSTANCE.getDocumentRoot_Manifest();
        public static final EAttribute DOCUMENT_ROOT__MGMT_DATA = eINSTANCE.getDocumentRoot_MgmtData();
        public static final EReference DOCUMENT_ROOT__OBJECT = eINSTANCE.getDocumentRoot_Object();
        public static final EReference DOCUMENT_ROOT__PGP_DATA = eINSTANCE.getDocumentRoot_PGPData();
        public static final EReference DOCUMENT_ROOT__REFERENCE = eINSTANCE.getDocumentRoot_Reference();
        public static final EReference DOCUMENT_ROOT__RETRIEVAL_METHOD = eINSTANCE.getDocumentRoot_RetrievalMethod();
        public static final EReference DOCUMENT_ROOT__RSA_KEY_VALUE = eINSTANCE.getDocumentRoot_RSAKeyValue();
        public static final EReference DOCUMENT_ROOT__SIGNATURE = eINSTANCE.getDocumentRoot_Signature();
        public static final EReference DOCUMENT_ROOT__SIGNATURE_METHOD = eINSTANCE.getDocumentRoot_SignatureMethod();
        public static final EReference DOCUMENT_ROOT__SIGNATURE_PROPERTIES = eINSTANCE.getDocumentRoot_SignatureProperties();
        public static final EReference DOCUMENT_ROOT__SIGNATURE_PROPERTY = eINSTANCE.getDocumentRoot_SignatureProperty();
        public static final EReference DOCUMENT_ROOT__SIGNATURE_VALUE = eINSTANCE.getDocumentRoot_SignatureValue();
        public static final EReference DOCUMENT_ROOT__SIGNED_INFO = eINSTANCE.getDocumentRoot_SignedInfo();
        public static final EReference DOCUMENT_ROOT__SPKI_DATA = eINSTANCE.getDocumentRoot_SPKIData();
        public static final EReference DOCUMENT_ROOT__TRANSFORM = eINSTANCE.getDocumentRoot_Transform();
        public static final EReference DOCUMENT_ROOT__TRANSFORMS = eINSTANCE.getDocumentRoot_Transforms();
        public static final EReference DOCUMENT_ROOT__X509_DATA = eINSTANCE.getDocumentRoot_X509Data();
        public static final EClass DSA_KEY_VALUE_TYPE = eINSTANCE.getDSAKeyValueType();
        public static final EAttribute DSA_KEY_VALUE_TYPE__P = eINSTANCE.getDSAKeyValueType_P();
        public static final EAttribute DSA_KEY_VALUE_TYPE__Q = eINSTANCE.getDSAKeyValueType_Q();
        public static final EAttribute DSA_KEY_VALUE_TYPE__J = eINSTANCE.getDSAKeyValueType_J();
        public static final EAttribute DSA_KEY_VALUE_TYPE__G = eINSTANCE.getDSAKeyValueType_G();
        public static final EAttribute DSA_KEY_VALUE_TYPE__Y = eINSTANCE.getDSAKeyValueType_Y();
        public static final EAttribute DSA_KEY_VALUE_TYPE__SEED = eINSTANCE.getDSAKeyValueType_Seed();
        public static final EAttribute DSA_KEY_VALUE_TYPE__PGEN_COUNTER = eINSTANCE.getDSAKeyValueType_PgenCounter();
        public static final EClass KEY_INFO_TYPE = eINSTANCE.getKeyInfoType();
        public static final EAttribute KEY_INFO_TYPE__MIXED = eINSTANCE.getKeyInfoType_Mixed();
        public static final EAttribute KEY_INFO_TYPE__GROUP = eINSTANCE.getKeyInfoType_Group();
        public static final EAttribute KEY_INFO_TYPE__KEY_NAME = eINSTANCE.getKeyInfoType_KeyName();
        public static final EReference KEY_INFO_TYPE__KEY_VALUE = eINSTANCE.getKeyInfoType_KeyValue();
        public static final EReference KEY_INFO_TYPE__RETRIEVAL_METHOD = eINSTANCE.getKeyInfoType_RetrievalMethod();
        public static final EReference KEY_INFO_TYPE__X509_DATA = eINSTANCE.getKeyInfoType_X509Data();
        public static final EReference KEY_INFO_TYPE__PGP_DATA = eINSTANCE.getKeyInfoType_PGPData();
        public static final EReference KEY_INFO_TYPE__SPKI_DATA = eINSTANCE.getKeyInfoType_SPKIData();
        public static final EAttribute KEY_INFO_TYPE__MGMT_DATA = eINSTANCE.getKeyInfoType_MgmtData();
        public static final EAttribute KEY_INFO_TYPE__ANY = eINSTANCE.getKeyInfoType_Any();
        public static final EAttribute KEY_INFO_TYPE__ID = eINSTANCE.getKeyInfoType_Id();
        public static final EClass KEY_VALUE_TYPE = eINSTANCE.getKeyValueType();
        public static final EAttribute KEY_VALUE_TYPE__MIXED = eINSTANCE.getKeyValueType_Mixed();
        public static final EReference KEY_VALUE_TYPE__DSA_KEY_VALUE = eINSTANCE.getKeyValueType_DSAKeyValue();
        public static final EReference KEY_VALUE_TYPE__RSA_KEY_VALUE = eINSTANCE.getKeyValueType_RSAKeyValue();
        public static final EAttribute KEY_VALUE_TYPE__ANY = eINSTANCE.getKeyValueType_Any();
        public static final EClass MANIFEST_TYPE = eINSTANCE.getManifestType();
        public static final EReference MANIFEST_TYPE__REFERENCE = eINSTANCE.getManifestType_Reference();
        public static final EAttribute MANIFEST_TYPE__ID = eINSTANCE.getManifestType_Id();
        public static final EClass OBJECT_TYPE = eINSTANCE.getObjectType();
        public static final EAttribute OBJECT_TYPE__MIXED = eINSTANCE.getObjectType_Mixed();
        public static final EAttribute OBJECT_TYPE__GROUP = eINSTANCE.getObjectType_Group();
        public static final EAttribute OBJECT_TYPE__ANY = eINSTANCE.getObjectType_Any();
        public static final EAttribute OBJECT_TYPE__ENCODING = eINSTANCE.getObjectType_Encoding();
        public static final EAttribute OBJECT_TYPE__ID = eINSTANCE.getObjectType_Id();
        public static final EAttribute OBJECT_TYPE__MIME_TYPE = eINSTANCE.getObjectType_MimeType();
        public static final EClass PGP_DATA_TYPE = eINSTANCE.getPGPDataType();
        public static final EAttribute PGP_DATA_TYPE__PGP_KEY_ID = eINSTANCE.getPGPDataType_PGPKeyID();
        public static final EAttribute PGP_DATA_TYPE__PGP_KEY_PACKET = eINSTANCE.getPGPDataType_PGPKeyPacket();
        public static final EAttribute PGP_DATA_TYPE__ANY = eINSTANCE.getPGPDataType_Any();
        public static final EAttribute PGP_DATA_TYPE__PGP_KEY_PACKET1 = eINSTANCE.getPGPDataType_PGPKeyPacket1();
        public static final EAttribute PGP_DATA_TYPE__ANY1 = eINSTANCE.getPGPDataType_Any1();
        public static final EClass REFERENCE_TYPE = eINSTANCE.getReferenceType();
        public static final EReference REFERENCE_TYPE__TRANSFORMS = eINSTANCE.getReferenceType_Transforms();
        public static final EReference REFERENCE_TYPE__DIGEST_METHOD = eINSTANCE.getReferenceType_DigestMethod();
        public static final EAttribute REFERENCE_TYPE__DIGEST_VALUE = eINSTANCE.getReferenceType_DigestValue();
        public static final EAttribute REFERENCE_TYPE__ID = eINSTANCE.getReferenceType_Id();
        public static final EAttribute REFERENCE_TYPE__TYPE = eINSTANCE.getReferenceType_Type();
        public static final EAttribute REFERENCE_TYPE__URI = eINSTANCE.getReferenceType_URI();
        public static final EClass RETRIEVAL_METHOD_TYPE = eINSTANCE.getRetrievalMethodType();
        public static final EReference RETRIEVAL_METHOD_TYPE__TRANSFORMS = eINSTANCE.getRetrievalMethodType_Transforms();
        public static final EAttribute RETRIEVAL_METHOD_TYPE__TYPE = eINSTANCE.getRetrievalMethodType_Type();
        public static final EAttribute RETRIEVAL_METHOD_TYPE__URI = eINSTANCE.getRetrievalMethodType_URI();
        public static final EClass RSA_KEY_VALUE_TYPE = eINSTANCE.getRSAKeyValueType();
        public static final EAttribute RSA_KEY_VALUE_TYPE__MODULUS = eINSTANCE.getRSAKeyValueType_Modulus();
        public static final EAttribute RSA_KEY_VALUE_TYPE__EXPONENT = eINSTANCE.getRSAKeyValueType_Exponent();
        public static final EClass SIGNATURE_METHOD_TYPE = eINSTANCE.getSignatureMethodType();
        public static final EAttribute SIGNATURE_METHOD_TYPE__MIXED = eINSTANCE.getSignatureMethodType_Mixed();
        public static final EAttribute SIGNATURE_METHOD_TYPE__HMAC_OUTPUT_LENGTH = eINSTANCE.getSignatureMethodType_HMACOutputLength();
        public static final EAttribute SIGNATURE_METHOD_TYPE__ANY = eINSTANCE.getSignatureMethodType_Any();
        public static final EAttribute SIGNATURE_METHOD_TYPE__ALGORITHM = eINSTANCE.getSignatureMethodType_Algorithm();
        public static final EClass SIGNATURE_PROPERTIES_TYPE = eINSTANCE.getSignaturePropertiesType();
        public static final EReference SIGNATURE_PROPERTIES_TYPE__SIGNATURE_PROPERTY = eINSTANCE.getSignaturePropertiesType_SignatureProperty();
        public static final EAttribute SIGNATURE_PROPERTIES_TYPE__ID = eINSTANCE.getSignaturePropertiesType_Id();
        public static final EClass SIGNATURE_PROPERTY_TYPE = eINSTANCE.getSignaturePropertyType();
        public static final EAttribute SIGNATURE_PROPERTY_TYPE__MIXED = eINSTANCE.getSignaturePropertyType_Mixed();
        public static final EAttribute SIGNATURE_PROPERTY_TYPE__GROUP = eINSTANCE.getSignaturePropertyType_Group();
        public static final EAttribute SIGNATURE_PROPERTY_TYPE__ANY = eINSTANCE.getSignaturePropertyType_Any();
        public static final EAttribute SIGNATURE_PROPERTY_TYPE__ID = eINSTANCE.getSignaturePropertyType_Id();
        public static final EAttribute SIGNATURE_PROPERTY_TYPE__TARGET = eINSTANCE.getSignaturePropertyType_Target();
        public static final EClass SIGNATURE_TYPE = eINSTANCE.getSignatureType();
        public static final EReference SIGNATURE_TYPE__SIGNED_INFO = eINSTANCE.getSignatureType_SignedInfo();
        public static final EReference SIGNATURE_TYPE__SIGNATURE_VALUE = eINSTANCE.getSignatureType_SignatureValue();
        public static final EReference SIGNATURE_TYPE__KEY_INFO = eINSTANCE.getSignatureType_KeyInfo();
        public static final EReference SIGNATURE_TYPE__OBJECT = eINSTANCE.getSignatureType_Object();
        public static final EAttribute SIGNATURE_TYPE__ID = eINSTANCE.getSignatureType_Id();
        public static final EClass SIGNATURE_VALUE_TYPE = eINSTANCE.getSignatureValueType();
        public static final EAttribute SIGNATURE_VALUE_TYPE__VALUE = eINSTANCE.getSignatureValueType_Value();
        public static final EAttribute SIGNATURE_VALUE_TYPE__ID = eINSTANCE.getSignatureValueType_Id();
        public static final EClass SIGNED_INFO_TYPE = eINSTANCE.getSignedInfoType();
        public static final EReference SIGNED_INFO_TYPE__CANONICALIZATION_METHOD = eINSTANCE.getSignedInfoType_CanonicalizationMethod();
        public static final EReference SIGNED_INFO_TYPE__SIGNATURE_METHOD = eINSTANCE.getSignedInfoType_SignatureMethod();
        public static final EReference SIGNED_INFO_TYPE__REFERENCE = eINSTANCE.getSignedInfoType_Reference();
        public static final EAttribute SIGNED_INFO_TYPE__ID = eINSTANCE.getSignedInfoType_Id();
        public static final EClass SPKI_DATA_TYPE = eINSTANCE.getSPKIDataType();
        public static final EAttribute SPKI_DATA_TYPE__GROUP = eINSTANCE.getSPKIDataType_Group();
        public static final EAttribute SPKI_DATA_TYPE__SPKI_SEXP = eINSTANCE.getSPKIDataType_SPKISexp();
        public static final EAttribute SPKI_DATA_TYPE__ANY = eINSTANCE.getSPKIDataType_Any();
        public static final EClass TRANSFORMS_TYPE = eINSTANCE.getTransformsType();
        public static final EReference TRANSFORMS_TYPE__TRANSFORM = eINSTANCE.getTransformsType_Transform();
        public static final EClass TRANSFORM_TYPE = eINSTANCE.getTransformType();
        public static final EAttribute TRANSFORM_TYPE__MIXED = eINSTANCE.getTransformType_Mixed();
        public static final EAttribute TRANSFORM_TYPE__GROUP = eINSTANCE.getTransformType_Group();
        public static final EAttribute TRANSFORM_TYPE__ANY = eINSTANCE.getTransformType_Any();
        public static final EAttribute TRANSFORM_TYPE__XPATH = eINSTANCE.getTransformType_XPath();
        public static final EAttribute TRANSFORM_TYPE__ALGORITHM = eINSTANCE.getTransformType_Algorithm();
        public static final EClass X509_DATA_TYPE = eINSTANCE.getX509DataType();
        public static final EAttribute X509_DATA_TYPE__GROUP = eINSTANCE.getX509DataType_Group();
        public static final EReference X509_DATA_TYPE__X509_ISSUER_SERIAL = eINSTANCE.getX509DataType_X509IssuerSerial();
        public static final EAttribute X509_DATA_TYPE__X509_SKI = eINSTANCE.getX509DataType_X509SKI();
        public static final EAttribute X509_DATA_TYPE__X509_SUBJECT_NAME = eINSTANCE.getX509DataType_X509SubjectName();
        public static final EAttribute X509_DATA_TYPE__X509_CERTIFICATE = eINSTANCE.getX509DataType_X509Certificate();
        public static final EAttribute X509_DATA_TYPE__X509_CRL = eINSTANCE.getX509DataType_X509CRL();
        public static final EAttribute X509_DATA_TYPE__ANY = eINSTANCE.getX509DataType_Any();
        public static final EClass X509_ISSUER_SERIAL_TYPE = eINSTANCE.getX509IssuerSerialType();
        public static final EAttribute X509_ISSUER_SERIAL_TYPE__X509_ISSUER_NAME = eINSTANCE.getX509IssuerSerialType_X509IssuerName();
        public static final EAttribute X509_ISSUER_SERIAL_TYPE__X509_SERIAL_NUMBER = eINSTANCE.getX509IssuerSerialType_X509SerialNumber();
        public static final EDataType CRYPTO_BINARY = eINSTANCE.getCryptoBinary();
        public static final EDataType DIGEST_VALUE_TYPE = eINSTANCE.getDigestValueType();
        public static final EDataType HMAC_OUTPUT_LENGTH_TYPE = eINSTANCE.getHMACOutputLengthType();
    }
}

