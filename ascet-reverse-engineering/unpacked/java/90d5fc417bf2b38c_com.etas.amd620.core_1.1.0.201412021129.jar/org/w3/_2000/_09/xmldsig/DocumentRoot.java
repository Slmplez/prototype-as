/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.w3._2000._09.xmldsig.CanonicalizationMethodType;
import org.w3._2000._09.xmldsig.DSAKeyValueType;
import org.w3._2000._09.xmldsig.DigestMethodType;
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

public interface DocumentRoot
extends EObject {
    public FeatureMap getMixed();

    public EMap<String, String> getXMLNSPrefixMap();

    public EMap<String, String> getXSISchemaLocation();

    public CanonicalizationMethodType getCanonicalizationMethod();

    public void setCanonicalizationMethod(CanonicalizationMethodType var1);

    public DigestMethodType getDigestMethod();

    public void setDigestMethod(DigestMethodType var1);

    public byte[] getDigestValue();

    public void setDigestValue(byte[] var1);

    public DSAKeyValueType getDSAKeyValue();

    public void setDSAKeyValue(DSAKeyValueType var1);

    public KeyInfoType getKeyInfo();

    public void setKeyInfo(KeyInfoType var1);

    public String getKeyName();

    public void setKeyName(String var1);

    public KeyValueType getKeyValue();

    public void setKeyValue(KeyValueType var1);

    public ManifestType getManifest();

    public void setManifest(ManifestType var1);

    public String getMgmtData();

    public void setMgmtData(String var1);

    public ObjectType getObject();

    public void setObject(ObjectType var1);

    public PGPDataType getPGPData();

    public void setPGPData(PGPDataType var1);

    public ReferenceType getReference();

    public void setReference(ReferenceType var1);

    public RetrievalMethodType getRetrievalMethod();

    public void setRetrievalMethod(RetrievalMethodType var1);

    public RSAKeyValueType getRSAKeyValue();

    public void setRSAKeyValue(RSAKeyValueType var1);

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public SignatureMethodType getSignatureMethod();

    public void setSignatureMethod(SignatureMethodType var1);

    public SignaturePropertiesType getSignatureProperties();

    public void setSignatureProperties(SignaturePropertiesType var1);

    public SignaturePropertyType getSignatureProperty();

    public void setSignatureProperty(SignaturePropertyType var1);

    public SignatureValueType getSignatureValue();

    public void setSignatureValue(SignatureValueType var1);

    public SignedInfoType getSignedInfo();

    public void setSignedInfo(SignedInfoType var1);

    public SPKIDataType getSPKIData();

    public void setSPKIData(SPKIDataType var1);

    public TransformType getTransform();

    public void setTransform(TransformType var1);

    public TransformsType getTransforms();

    public void setTransforms(TransformsType var1);

    public X509DataType getX509Data();

    public void setX509Data(X509DataType var1);
}

