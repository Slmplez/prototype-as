/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.ecore.EFactory;
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
import org.w3._2000._09.xmldsig.XmldsigPackage;
import org.w3._2000._09.xmldsig.impl.XmldsigFactoryImpl;

public interface XmldsigFactory
extends EFactory {
    public static final XmldsigFactory eINSTANCE = XmldsigFactoryImpl.init();

    public CanonicalizationMethodType createCanonicalizationMethodType();

    public DigestMethodType createDigestMethodType();

    public DocumentRoot createDocumentRoot();

    public DSAKeyValueType createDSAKeyValueType();

    public KeyInfoType createKeyInfoType();

    public KeyValueType createKeyValueType();

    public ManifestType createManifestType();

    public ObjectType createObjectType();

    public PGPDataType createPGPDataType();

    public ReferenceType createReferenceType();

    public RetrievalMethodType createRetrievalMethodType();

    public RSAKeyValueType createRSAKeyValueType();

    public SignatureMethodType createSignatureMethodType();

    public SignaturePropertiesType createSignaturePropertiesType();

    public SignaturePropertyType createSignaturePropertyType();

    public SignatureType createSignatureType();

    public SignatureValueType createSignatureValueType();

    public SignedInfoType createSignedInfoType();

    public SPKIDataType createSPKIDataType();

    public TransformsType createTransformsType();

    public TransformType createTransformType();

    public X509DataType createX509DataType();

    public X509IssuerSerialType createX509IssuerSerialType();

    public XmldsigPackage getXmldsigPackage();
}

