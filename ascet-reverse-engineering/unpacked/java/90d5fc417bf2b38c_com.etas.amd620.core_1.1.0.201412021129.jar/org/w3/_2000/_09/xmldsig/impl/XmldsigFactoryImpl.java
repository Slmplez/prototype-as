/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.xml.type.XMLTypeFactory
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package org.w3._2000._09.xmldsig.impl;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.w3._2000._09.xmldsig.CanonicalizationMethodType;
import org.w3._2000._09.xmldsig.DSAKeyValueType;
import org.w3._2000._09.xmldsig.DigestMethodType;
import org.w3._2000._09.xmldsig.DocumentRoot;
import org.w3._2000._09.xmldsig.KeyInfoType;
import org.w3._2000._09.xmldsig.KeyValueType;
import org.w3._2000._09.xmldsig.ManifestType;
import org.w3._2000._09.xmldsig.ObjectType;
import org.w3._2000._09.xmldsig.PGPDataType;
import org.w3._2000._09.xmldsig.RSAKeyValueType;
import org.w3._2000._09.xmldsig.ReferenceType;
import org.w3._2000._09.xmldsig.RetrievalMethodType;
import org.w3._2000._09.xmldsig.SPKIDataType;
import org.w3._2000._09.xmldsig.SignatureMethodType;
import org.w3._2000._09.xmldsig.SignaturePropertiesType;
import org.w3._2000._09.xmldsig.SignaturePropertyType;
import org.w3._2000._09.xmldsig.SignatureType;
import org.w3._2000._09.xmldsig.SignatureValueType;
import org.w3._2000._09.xmldsig.SignedInfoType;
import org.w3._2000._09.xmldsig.TransformType;
import org.w3._2000._09.xmldsig.TransformsType;
import org.w3._2000._09.xmldsig.X509DataType;
import org.w3._2000._09.xmldsig.X509IssuerSerialType;
import org.w3._2000._09.xmldsig.XmldsigFactory;
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.CanonicalizationMethodTypeImpl;
import org.w3._2000._09.xmldsig.impl.DSAKeyValueTypeImpl;
import org.w3._2000._09.xmldsig.impl.DigestMethodTypeImpl;
import org.w3._2000._09.xmldsig.impl.DocumentRootImpl;
import org.w3._2000._09.xmldsig.impl.KeyInfoTypeImpl;
import org.w3._2000._09.xmldsig.impl.KeyValueTypeImpl;
import org.w3._2000._09.xmldsig.impl.ManifestTypeImpl;
import org.w3._2000._09.xmldsig.impl.ObjectTypeImpl;
import org.w3._2000._09.xmldsig.impl.PGPDataTypeImpl;
import org.w3._2000._09.xmldsig.impl.RSAKeyValueTypeImpl;
import org.w3._2000._09.xmldsig.impl.ReferenceTypeImpl;
import org.w3._2000._09.xmldsig.impl.RetrievalMethodTypeImpl;
import org.w3._2000._09.xmldsig.impl.SPKIDataTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignatureMethodTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignaturePropertiesTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignaturePropertyTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignatureTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignatureValueTypeImpl;
import org.w3._2000._09.xmldsig.impl.SignedInfoTypeImpl;
import org.w3._2000._09.xmldsig.impl.TransformTypeImpl;
import org.w3._2000._09.xmldsig.impl.TransformsTypeImpl;
import org.w3._2000._09.xmldsig.impl.X509DataTypeImpl;
import org.w3._2000._09.xmldsig.impl.X509IssuerSerialTypeImpl;

public class XmldsigFactoryImpl
extends EFactoryImpl
implements XmldsigFactory {
    public static XmldsigFactory init() {
        try {
            XmldsigFactory theXmldsigFactory = (XmldsigFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.w3.org/2000/09/xmldsig#");
            if (theXmldsigFactory != null) {
                return theXmldsigFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new XmldsigFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCanonicalizationMethodType();
            }
            case 1: {
                return this.createDigestMethodType();
            }
            case 2: {
                return this.createDocumentRoot();
            }
            case 3: {
                return this.createDSAKeyValueType();
            }
            case 4: {
                return this.createKeyInfoType();
            }
            case 5: {
                return this.createKeyValueType();
            }
            case 6: {
                return this.createManifestType();
            }
            case 7: {
                return this.createObjectType();
            }
            case 8: {
                return this.createPGPDataType();
            }
            case 9: {
                return this.createReferenceType();
            }
            case 10: {
                return this.createRetrievalMethodType();
            }
            case 11: {
                return this.createRSAKeyValueType();
            }
            case 12: {
                return this.createSignatureMethodType();
            }
            case 13: {
                return this.createSignaturePropertiesType();
            }
            case 14: {
                return this.createSignaturePropertyType();
            }
            case 15: {
                return this.createSignatureType();
            }
            case 16: {
                return this.createSignatureValueType();
            }
            case 17: {
                return this.createSignedInfoType();
            }
            case 18: {
                return this.createSPKIDataType();
            }
            case 19: {
                return this.createTransformsType();
            }
            case 20: {
                return this.createTransformType();
            }
            case 21: {
                return this.createX509DataType();
            }
            case 22: {
                return this.createX509IssuerSerialType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 23: {
                return this.createCryptoBinaryFromString(eDataType, initialValue);
            }
            case 24: {
                return this.createDigestValueTypeFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createHMACOutputLengthTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 23: {
                return this.convertCryptoBinaryToString(eDataType, instanceValue);
            }
            case 24: {
                return this.convertDigestValueTypeToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertHMACOutputLengthTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public CanonicalizationMethodType createCanonicalizationMethodType() {
        CanonicalizationMethodTypeImpl canonicalizationMethodType = new CanonicalizationMethodTypeImpl();
        return canonicalizationMethodType;
    }

    @Override
    public DigestMethodType createDigestMethodType() {
        DigestMethodTypeImpl digestMethodType = new DigestMethodTypeImpl();
        return digestMethodType;
    }

    @Override
    public DocumentRoot createDocumentRoot() {
        DocumentRootImpl documentRoot = new DocumentRootImpl();
        return documentRoot;
    }

    @Override
    public DSAKeyValueType createDSAKeyValueType() {
        DSAKeyValueTypeImpl dsaKeyValueType = new DSAKeyValueTypeImpl();
        return dsaKeyValueType;
    }

    @Override
    public KeyInfoType createKeyInfoType() {
        KeyInfoTypeImpl keyInfoType = new KeyInfoTypeImpl();
        return keyInfoType;
    }

    @Override
    public KeyValueType createKeyValueType() {
        KeyValueTypeImpl keyValueType = new KeyValueTypeImpl();
        return keyValueType;
    }

    @Override
    public ManifestType createManifestType() {
        ManifestTypeImpl manifestType = new ManifestTypeImpl();
        return manifestType;
    }

    @Override
    public ObjectType createObjectType() {
        ObjectTypeImpl objectType = new ObjectTypeImpl();
        return objectType;
    }

    @Override
    public PGPDataType createPGPDataType() {
        PGPDataTypeImpl pgpDataType = new PGPDataTypeImpl();
        return pgpDataType;
    }

    @Override
    public ReferenceType createReferenceType() {
        ReferenceTypeImpl referenceType = new ReferenceTypeImpl();
        return referenceType;
    }

    @Override
    public RetrievalMethodType createRetrievalMethodType() {
        RetrievalMethodTypeImpl retrievalMethodType = new RetrievalMethodTypeImpl();
        return retrievalMethodType;
    }

    @Override
    public RSAKeyValueType createRSAKeyValueType() {
        RSAKeyValueTypeImpl rsaKeyValueType = new RSAKeyValueTypeImpl();
        return rsaKeyValueType;
    }

    @Override
    public SignatureMethodType createSignatureMethodType() {
        SignatureMethodTypeImpl signatureMethodType = new SignatureMethodTypeImpl();
        return signatureMethodType;
    }

    @Override
    public SignaturePropertiesType createSignaturePropertiesType() {
        SignaturePropertiesTypeImpl signaturePropertiesType = new SignaturePropertiesTypeImpl();
        return signaturePropertiesType;
    }

    @Override
    public SignaturePropertyType createSignaturePropertyType() {
        SignaturePropertyTypeImpl signaturePropertyType = new SignaturePropertyTypeImpl();
        return signaturePropertyType;
    }

    @Override
    public SignatureType createSignatureType() {
        SignatureTypeImpl signatureType = new SignatureTypeImpl();
        return signatureType;
    }

    @Override
    public SignatureValueType createSignatureValueType() {
        SignatureValueTypeImpl signatureValueType = new SignatureValueTypeImpl();
        return signatureValueType;
    }

    @Override
    public SignedInfoType createSignedInfoType() {
        SignedInfoTypeImpl signedInfoType = new SignedInfoTypeImpl();
        return signedInfoType;
    }

    @Override
    public SPKIDataType createSPKIDataType() {
        SPKIDataTypeImpl spkiDataType = new SPKIDataTypeImpl();
        return spkiDataType;
    }

    @Override
    public TransformsType createTransformsType() {
        TransformsTypeImpl transformsType = new TransformsTypeImpl();
        return transformsType;
    }

    @Override
    public TransformType createTransformType() {
        TransformTypeImpl transformType = new TransformTypeImpl();
        return transformType;
    }

    @Override
    public X509DataType createX509DataType() {
        X509DataTypeImpl x509DataType = new X509DataTypeImpl();
        return x509DataType;
    }

    @Override
    public X509IssuerSerialType createX509IssuerSerialType() {
        X509IssuerSerialTypeImpl x509IssuerSerialType = new X509IssuerSerialTypeImpl();
        return x509IssuerSerialType;
    }

    public byte[] createCryptoBinaryFromString(EDataType eDataType, String initialValue) {
        return (byte[])XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.BASE64_BINARY, initialValue);
    }

    public String convertCryptoBinaryToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.BASE64_BINARY, instanceValue);
    }

    public byte[] createDigestValueTypeFromString(EDataType eDataType, String initialValue) {
        return (byte[])XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.BASE64_BINARY, initialValue);
    }

    public String convertDigestValueTypeToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.BASE64_BINARY, instanceValue);
    }

    public BigInteger createHMACOutputLengthTypeFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.INTEGER, initialValue);
    }

    public String convertHMACOutputLengthTypeToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.INTEGER, instanceValue);
    }

    @Override
    public XmldsigPackage getXmldsigPackage() {
        return (XmldsigPackage)this.getEPackage();
    }

    @Deprecated
    public static XmldsigPackage getPackage() {
        return XmldsigPackage.eINSTANCE;
    }
}

