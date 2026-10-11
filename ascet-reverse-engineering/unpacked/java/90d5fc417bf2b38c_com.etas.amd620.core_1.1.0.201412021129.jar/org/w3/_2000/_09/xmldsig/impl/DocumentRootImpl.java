/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
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
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class DocumentRootImpl
extends MinimalEObjectImpl.Container
implements DocumentRoot {
    protected FeatureMap mixed;
    protected EMap<String, String> xMLNSPrefixMap;
    protected EMap<String, String> xSISchemaLocation;
    protected static final byte[] DIGEST_VALUE_EDEFAULT = null;
    protected static final String KEY_NAME_EDEFAULT = null;
    protected static final String MGMT_DATA_EDEFAULT = null;

    protected DocumentRootImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.DOCUMENT_ROOT;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 0);
        }
        return this.mixed;
    }

    @Override
    public EMap<String, String> getXMLNSPrefixMap() {
        if (this.xMLNSPrefixMap == null) {
            this.xMLNSPrefixMap = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 1);
        }
        return this.xMLNSPrefixMap;
    }

    @Override
    public EMap<String, String> getXSISchemaLocation() {
        if (this.xSISchemaLocation == null) {
            this.xSISchemaLocation = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 2);
        }
        return this.xSISchemaLocation;
    }

    @Override
    public CanonicalizationMethodType getCanonicalizationMethod() {
        return (CanonicalizationMethodType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__CANONICALIZATION_METHOD, true);
    }

    public NotificationChain basicSetCanonicalizationMethod(CanonicalizationMethodType newCanonicalizationMethod, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__CANONICALIZATION_METHOD, (Object)newCanonicalizationMethod, msgs);
    }

    @Override
    public void setCanonicalizationMethod(CanonicalizationMethodType newCanonicalizationMethod) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__CANONICALIZATION_METHOD, (Object)newCanonicalizationMethod);
    }

    @Override
    public DigestMethodType getDigestMethod() {
        return (DigestMethodType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DIGEST_METHOD, true);
    }

    public NotificationChain basicSetDigestMethod(DigestMethodType newDigestMethod, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DIGEST_METHOD, (Object)newDigestMethod, msgs);
    }

    @Override
    public void setDigestMethod(DigestMethodType newDigestMethod) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DIGEST_METHOD, (Object)newDigestMethod);
    }

    @Override
    public byte[] getDigestValue() {
        return (byte[])this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DIGEST_VALUE, true);
    }

    @Override
    public void setDigestValue(byte[] newDigestValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DIGEST_VALUE, (Object)newDigestValue);
    }

    @Override
    public DSAKeyValueType getDSAKeyValue() {
        return (DSAKeyValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DSA_KEY_VALUE, true);
    }

    public NotificationChain basicSetDSAKeyValue(DSAKeyValueType newDSAKeyValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DSA_KEY_VALUE, (Object)newDSAKeyValue, msgs);
    }

    @Override
    public void setDSAKeyValue(DSAKeyValueType newDSAKeyValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__DSA_KEY_VALUE, (Object)newDSAKeyValue);
    }

    @Override
    public KeyInfoType getKeyInfo() {
        return (KeyInfoType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_INFO, true);
    }

    public NotificationChain basicSetKeyInfo(KeyInfoType newKeyInfo, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_INFO, (Object)newKeyInfo, msgs);
    }

    @Override
    public void setKeyInfo(KeyInfoType newKeyInfo) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_INFO, (Object)newKeyInfo);
    }

    @Override
    public String getKeyName() {
        return (String)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_NAME, true);
    }

    @Override
    public void setKeyName(String newKeyName) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_NAME, (Object)newKeyName);
    }

    @Override
    public KeyValueType getKeyValue() {
        return (KeyValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_VALUE, true);
    }

    public NotificationChain basicSetKeyValue(KeyValueType newKeyValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_VALUE, (Object)newKeyValue, msgs);
    }

    @Override
    public void setKeyValue(KeyValueType newKeyValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__KEY_VALUE, (Object)newKeyValue);
    }

    @Override
    public ManifestType getManifest() {
        return (ManifestType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__MANIFEST, true);
    }

    public NotificationChain basicSetManifest(ManifestType newManifest, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__MANIFEST, (Object)newManifest, msgs);
    }

    @Override
    public void setManifest(ManifestType newManifest) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__MANIFEST, (Object)newManifest);
    }

    @Override
    public String getMgmtData() {
        return (String)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__MGMT_DATA, true);
    }

    @Override
    public void setMgmtData(String newMgmtData) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__MGMT_DATA, (Object)newMgmtData);
    }

    @Override
    public ObjectType getObject() {
        return (ObjectType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__OBJECT, true);
    }

    public NotificationChain basicSetObject(ObjectType newObject, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__OBJECT, (Object)newObject, msgs);
    }

    @Override
    public void setObject(ObjectType newObject) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__OBJECT, (Object)newObject);
    }

    @Override
    public PGPDataType getPGPData() {
        return (PGPDataType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__PGP_DATA, true);
    }

    public NotificationChain basicSetPGPData(PGPDataType newPGPData, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__PGP_DATA, (Object)newPGPData, msgs);
    }

    @Override
    public void setPGPData(PGPDataType newPGPData) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__PGP_DATA, (Object)newPGPData);
    }

    @Override
    public ReferenceType getReference() {
        return (ReferenceType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__REFERENCE, true);
    }

    public NotificationChain basicSetReference(ReferenceType newReference, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__REFERENCE, (Object)newReference, msgs);
    }

    @Override
    public void setReference(ReferenceType newReference) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__REFERENCE, (Object)newReference);
    }

    @Override
    public RetrievalMethodType getRetrievalMethod() {
        return (RetrievalMethodType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RETRIEVAL_METHOD, true);
    }

    public NotificationChain basicSetRetrievalMethod(RetrievalMethodType newRetrievalMethod, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RETRIEVAL_METHOD, (Object)newRetrievalMethod, msgs);
    }

    @Override
    public void setRetrievalMethod(RetrievalMethodType newRetrievalMethod) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RETRIEVAL_METHOD, (Object)newRetrievalMethod);
    }

    @Override
    public RSAKeyValueType getRSAKeyValue() {
        return (RSAKeyValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RSA_KEY_VALUE, true);
    }

    public NotificationChain basicSetRSAKeyValue(RSAKeyValueType newRSAKeyValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RSA_KEY_VALUE, (Object)newRSAKeyValue, msgs);
    }

    @Override
    public void setRSAKeyValue(RSAKeyValueType newRSAKeyValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__RSA_KEY_VALUE, (Object)newRSAKeyValue);
    }

    @Override
    public SignatureType getSignature() {
        return (SignatureType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE, true);
    }

    public NotificationChain basicSetSignature(SignatureType newSignature, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE, (Object)newSignature, msgs);
    }

    @Override
    public void setSignature(SignatureType newSignature) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE, (Object)newSignature);
    }

    @Override
    public SignatureMethodType getSignatureMethod() {
        return (SignatureMethodType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_METHOD, true);
    }

    public NotificationChain basicSetSignatureMethod(SignatureMethodType newSignatureMethod, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_METHOD, (Object)newSignatureMethod, msgs);
    }

    @Override
    public void setSignatureMethod(SignatureMethodType newSignatureMethod) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_METHOD, (Object)newSignatureMethod);
    }

    @Override
    public SignaturePropertiesType getSignatureProperties() {
        return (SignaturePropertiesType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTIES, true);
    }

    public NotificationChain basicSetSignatureProperties(SignaturePropertiesType newSignatureProperties, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTIES, (Object)newSignatureProperties, msgs);
    }

    @Override
    public void setSignatureProperties(SignaturePropertiesType newSignatureProperties) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTIES, (Object)newSignatureProperties);
    }

    @Override
    public SignaturePropertyType getSignatureProperty() {
        return (SignaturePropertyType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTY, true);
    }

    public NotificationChain basicSetSignatureProperty(SignaturePropertyType newSignatureProperty, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTY, (Object)newSignatureProperty, msgs);
    }

    @Override
    public void setSignatureProperty(SignaturePropertyType newSignatureProperty) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_PROPERTY, (Object)newSignatureProperty);
    }

    @Override
    public SignatureValueType getSignatureValue() {
        return (SignatureValueType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_VALUE, true);
    }

    public NotificationChain basicSetSignatureValue(SignatureValueType newSignatureValue, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_VALUE, (Object)newSignatureValue, msgs);
    }

    @Override
    public void setSignatureValue(SignatureValueType newSignatureValue) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNATURE_VALUE, (Object)newSignatureValue);
    }

    @Override
    public SignedInfoType getSignedInfo() {
        return (SignedInfoType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNED_INFO, true);
    }

    public NotificationChain basicSetSignedInfo(SignedInfoType newSignedInfo, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNED_INFO, (Object)newSignedInfo, msgs);
    }

    @Override
    public void setSignedInfo(SignedInfoType newSignedInfo) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SIGNED_INFO, (Object)newSignedInfo);
    }

    @Override
    public SPKIDataType getSPKIData() {
        return (SPKIDataType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SPKI_DATA, true);
    }

    public NotificationChain basicSetSPKIData(SPKIDataType newSPKIData, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SPKI_DATA, (Object)newSPKIData, msgs);
    }

    @Override
    public void setSPKIData(SPKIDataType newSPKIData) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__SPKI_DATA, (Object)newSPKIData);
    }

    @Override
    public TransformType getTransform() {
        return (TransformType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORM, true);
    }

    public NotificationChain basicSetTransform(TransformType newTransform, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORM, (Object)newTransform, msgs);
    }

    @Override
    public void setTransform(TransformType newTransform) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORM, (Object)newTransform);
    }

    @Override
    public TransformsType getTransforms() {
        return (TransformsType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORMS, true);
    }

    public NotificationChain basicSetTransforms(TransformsType newTransforms, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORMS, (Object)newTransforms, msgs);
    }

    @Override
    public void setTransforms(TransformsType newTransforms) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__TRANSFORMS, (Object)newTransforms);
    }

    @Override
    public X509DataType getX509Data() {
        return (X509DataType)this.getMixed().get((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__X509_DATA, true);
    }

    public NotificationChain basicSetX509Data(X509DataType newX509Data, NotificationChain msgs) {
        return ((FeatureMap.Internal)this.getMixed()).basicAdd((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__X509_DATA, (Object)newX509Data, msgs);
    }

    @Override
    public void setX509Data(X509DataType newX509Data) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)XmldsigPackage.Literals.DOCUMENT_ROOT__X509_DATA, (Object)newX509Data);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getXMLNSPrefixMap()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getXSISchemaLocation()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return this.basicSetCanonicalizationMethod(null, msgs);
            }
            case 4: {
                return this.basicSetDigestMethod(null, msgs);
            }
            case 6: {
                return this.basicSetDSAKeyValue(null, msgs);
            }
            case 7: {
                return this.basicSetKeyInfo(null, msgs);
            }
            case 9: {
                return this.basicSetKeyValue(null, msgs);
            }
            case 10: {
                return this.basicSetManifest(null, msgs);
            }
            case 12: {
                return this.basicSetObject(null, msgs);
            }
            case 13: {
                return this.basicSetPGPData(null, msgs);
            }
            case 14: {
                return this.basicSetReference(null, msgs);
            }
            case 15: {
                return this.basicSetRetrievalMethod(null, msgs);
            }
            case 16: {
                return this.basicSetRSAKeyValue(null, msgs);
            }
            case 17: {
                return this.basicSetSignature(null, msgs);
            }
            case 18: {
                return this.basicSetSignatureMethod(null, msgs);
            }
            case 19: {
                return this.basicSetSignatureProperties(null, msgs);
            }
            case 20: {
                return this.basicSetSignatureProperty(null, msgs);
            }
            case 21: {
                return this.basicSetSignatureValue(null, msgs);
            }
            case 22: {
                return this.basicSetSignedInfo(null, msgs);
            }
            case 23: {
                return this.basicSetSPKIData(null, msgs);
            }
            case 24: {
                return this.basicSetTransform(null, msgs);
            }
            case 25: {
                return this.basicSetTransforms(null, msgs);
            }
            case 26: {
                return this.basicSetX509Data(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 1: {
                if (coreType) {
                    return this.getXMLNSPrefixMap();
                }
                return this.getXMLNSPrefixMap().map();
            }
            case 2: {
                if (coreType) {
                    return this.getXSISchemaLocation();
                }
                return this.getXSISchemaLocation().map();
            }
            case 3: {
                return this.getCanonicalizationMethod();
            }
            case 4: {
                return this.getDigestMethod();
            }
            case 5: {
                return this.getDigestValue();
            }
            case 6: {
                return this.getDSAKeyValue();
            }
            case 7: {
                return this.getKeyInfo();
            }
            case 8: {
                return this.getKeyName();
            }
            case 9: {
                return this.getKeyValue();
            }
            case 10: {
                return this.getManifest();
            }
            case 11: {
                return this.getMgmtData();
            }
            case 12: {
                return this.getObject();
            }
            case 13: {
                return this.getPGPData();
            }
            case 14: {
                return this.getReference();
            }
            case 15: {
                return this.getRetrievalMethod();
            }
            case 16: {
                return this.getRSAKeyValue();
            }
            case 17: {
                return this.getSignature();
            }
            case 18: {
                return this.getSignatureMethod();
            }
            case 19: {
                return this.getSignatureProperties();
            }
            case 20: {
                return this.getSignatureProperty();
            }
            case 21: {
                return this.getSignatureValue();
            }
            case 22: {
                return this.getSignedInfo();
            }
            case 23: {
                return this.getSPKIData();
            }
            case 24: {
                return this.getTransform();
            }
            case 25: {
                return this.getTransforms();
            }
            case 26: {
                return this.getX509Data();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 1: {
                ((EStructuralFeature.Setting)this.getXMLNSPrefixMap()).set(newValue);
                return;
            }
            case 2: {
                ((EStructuralFeature.Setting)this.getXSISchemaLocation()).set(newValue);
                return;
            }
            case 3: {
                this.setCanonicalizationMethod((CanonicalizationMethodType)newValue);
                return;
            }
            case 4: {
                this.setDigestMethod((DigestMethodType)newValue);
                return;
            }
            case 5: {
                this.setDigestValue((byte[])newValue);
                return;
            }
            case 6: {
                this.setDSAKeyValue((DSAKeyValueType)newValue);
                return;
            }
            case 7: {
                this.setKeyInfo((KeyInfoType)newValue);
                return;
            }
            case 8: {
                this.setKeyName((String)newValue);
                return;
            }
            case 9: {
                this.setKeyValue((KeyValueType)newValue);
                return;
            }
            case 10: {
                this.setManifest((ManifestType)newValue);
                return;
            }
            case 11: {
                this.setMgmtData((String)newValue);
                return;
            }
            case 12: {
                this.setObject((ObjectType)newValue);
                return;
            }
            case 13: {
                this.setPGPData((PGPDataType)newValue);
                return;
            }
            case 14: {
                this.setReference((ReferenceType)newValue);
                return;
            }
            case 15: {
                this.setRetrievalMethod((RetrievalMethodType)newValue);
                return;
            }
            case 16: {
                this.setRSAKeyValue((RSAKeyValueType)newValue);
                return;
            }
            case 17: {
                this.setSignature((SignatureType)newValue);
                return;
            }
            case 18: {
                this.setSignatureMethod((SignatureMethodType)newValue);
                return;
            }
            case 19: {
                this.setSignatureProperties((SignaturePropertiesType)newValue);
                return;
            }
            case 20: {
                this.setSignatureProperty((SignaturePropertyType)newValue);
                return;
            }
            case 21: {
                this.setSignatureValue((SignatureValueType)newValue);
                return;
            }
            case 22: {
                this.setSignedInfo((SignedInfoType)newValue);
                return;
            }
            case 23: {
                this.setSPKIData((SPKIDataType)newValue);
                return;
            }
            case 24: {
                this.setTransform((TransformType)newValue);
                return;
            }
            case 25: {
                this.setTransforms((TransformsType)newValue);
                return;
            }
            case 26: {
                this.setX509Data((X509DataType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getMixed().clear();
                return;
            }
            case 1: {
                this.getXMLNSPrefixMap().clear();
                return;
            }
            case 2: {
                this.getXSISchemaLocation().clear();
                return;
            }
            case 3: {
                this.setCanonicalizationMethod(null);
                return;
            }
            case 4: {
                this.setDigestMethod(null);
                return;
            }
            case 5: {
                this.setDigestValue(DIGEST_VALUE_EDEFAULT);
                return;
            }
            case 6: {
                this.setDSAKeyValue(null);
                return;
            }
            case 7: {
                this.setKeyInfo(null);
                return;
            }
            case 8: {
                this.setKeyName(KEY_NAME_EDEFAULT);
                return;
            }
            case 9: {
                this.setKeyValue(null);
                return;
            }
            case 10: {
                this.setManifest(null);
                return;
            }
            case 11: {
                this.setMgmtData(MGMT_DATA_EDEFAULT);
                return;
            }
            case 12: {
                this.setObject(null);
                return;
            }
            case 13: {
                this.setPGPData(null);
                return;
            }
            case 14: {
                this.setReference(null);
                return;
            }
            case 15: {
                this.setRetrievalMethod(null);
                return;
            }
            case 16: {
                this.setRSAKeyValue(null);
                return;
            }
            case 17: {
                this.setSignature(null);
                return;
            }
            case 18: {
                this.setSignatureMethod(null);
                return;
            }
            case 19: {
                this.setSignatureProperties(null);
                return;
            }
            case 20: {
                this.setSignatureProperty(null);
                return;
            }
            case 21: {
                this.setSignatureValue(null);
                return;
            }
            case 22: {
                this.setSignedInfo(null);
                return;
            }
            case 23: {
                this.setSPKIData(null);
                return;
            }
            case 24: {
                this.setTransform(null);
                return;
            }
            case 25: {
                this.setTransforms(null);
                return;
            }
            case 26: {
                this.setX509Data(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.mixed != null && !this.mixed.isEmpty();
            }
            case 1: {
                return this.xMLNSPrefixMap != null && !this.xMLNSPrefixMap.isEmpty();
            }
            case 2: {
                return this.xSISchemaLocation != null && !this.xSISchemaLocation.isEmpty();
            }
            case 3: {
                return this.getCanonicalizationMethod() != null;
            }
            case 4: {
                return this.getDigestMethod() != null;
            }
            case 5: {
                return DIGEST_VALUE_EDEFAULT == null ? this.getDigestValue() != null : !DIGEST_VALUE_EDEFAULT.equals(this.getDigestValue());
            }
            case 6: {
                return this.getDSAKeyValue() != null;
            }
            case 7: {
                return this.getKeyInfo() != null;
            }
            case 8: {
                return KEY_NAME_EDEFAULT == null ? this.getKeyName() != null : !KEY_NAME_EDEFAULT.equals(this.getKeyName());
            }
            case 9: {
                return this.getKeyValue() != null;
            }
            case 10: {
                return this.getManifest() != null;
            }
            case 11: {
                return MGMT_DATA_EDEFAULT == null ? this.getMgmtData() != null : !MGMT_DATA_EDEFAULT.equals(this.getMgmtData());
            }
            case 12: {
                return this.getObject() != null;
            }
            case 13: {
                return this.getPGPData() != null;
            }
            case 14: {
                return this.getReference() != null;
            }
            case 15: {
                return this.getRetrievalMethod() != null;
            }
            case 16: {
                return this.getRSAKeyValue() != null;
            }
            case 17: {
                return this.getSignature() != null;
            }
            case 18: {
                return this.getSignatureMethod() != null;
            }
            case 19: {
                return this.getSignatureProperties() != null;
            }
            case 20: {
                return this.getSignatureProperty() != null;
            }
            case 21: {
                return this.getSignatureValue() != null;
            }
            case 22: {
                return this.getSignedInfo() != null;
            }
            case 23: {
                return this.getSPKIData() != null;
            }
            case 24: {
                return this.getTransform() != null;
            }
            case 25: {
                return this.getTransforms() != null;
            }
            case 26: {
                return this.getX509Data() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }
}

