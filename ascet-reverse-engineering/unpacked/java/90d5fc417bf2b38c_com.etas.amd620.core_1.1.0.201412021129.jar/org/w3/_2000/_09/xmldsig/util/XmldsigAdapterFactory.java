/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package org.w3._2000._09.xmldsig.util;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;
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
import org.w3._2000._09.xmldsig.util.XmldsigSwitch;

public class XmldsigAdapterFactory
extends AdapterFactoryImpl {
    protected static XmldsigPackage modelPackage;
    protected XmldsigSwitch<Adapter> modelSwitch = new XmldsigSwitch<Adapter>(){

        @Override
        public Adapter caseCanonicalizationMethodType(CanonicalizationMethodType object) {
            return XmldsigAdapterFactory.this.createCanonicalizationMethodTypeAdapter();
        }

        @Override
        public Adapter caseDigestMethodType(DigestMethodType object) {
            return XmldsigAdapterFactory.this.createDigestMethodTypeAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return XmldsigAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseDSAKeyValueType(DSAKeyValueType object) {
            return XmldsigAdapterFactory.this.createDSAKeyValueTypeAdapter();
        }

        @Override
        public Adapter caseKeyInfoType(KeyInfoType object) {
            return XmldsigAdapterFactory.this.createKeyInfoTypeAdapter();
        }

        @Override
        public Adapter caseKeyValueType(KeyValueType object) {
            return XmldsigAdapterFactory.this.createKeyValueTypeAdapter();
        }

        @Override
        public Adapter caseManifestType(ManifestType object) {
            return XmldsigAdapterFactory.this.createManifestTypeAdapter();
        }

        @Override
        public Adapter caseObjectType(ObjectType object) {
            return XmldsigAdapterFactory.this.createObjectTypeAdapter();
        }

        @Override
        public Adapter casePGPDataType(PGPDataType object) {
            return XmldsigAdapterFactory.this.createPGPDataTypeAdapter();
        }

        @Override
        public Adapter caseReferenceType(ReferenceType object) {
            return XmldsigAdapterFactory.this.createReferenceTypeAdapter();
        }

        @Override
        public Adapter caseRetrievalMethodType(RetrievalMethodType object) {
            return XmldsigAdapterFactory.this.createRetrievalMethodTypeAdapter();
        }

        @Override
        public Adapter caseRSAKeyValueType(RSAKeyValueType object) {
            return XmldsigAdapterFactory.this.createRSAKeyValueTypeAdapter();
        }

        @Override
        public Adapter caseSignatureMethodType(SignatureMethodType object) {
            return XmldsigAdapterFactory.this.createSignatureMethodTypeAdapter();
        }

        @Override
        public Adapter caseSignaturePropertiesType(SignaturePropertiesType object) {
            return XmldsigAdapterFactory.this.createSignaturePropertiesTypeAdapter();
        }

        @Override
        public Adapter caseSignaturePropertyType(SignaturePropertyType object) {
            return XmldsigAdapterFactory.this.createSignaturePropertyTypeAdapter();
        }

        @Override
        public Adapter caseSignatureType(SignatureType object) {
            return XmldsigAdapterFactory.this.createSignatureTypeAdapter();
        }

        @Override
        public Adapter caseSignatureValueType(SignatureValueType object) {
            return XmldsigAdapterFactory.this.createSignatureValueTypeAdapter();
        }

        @Override
        public Adapter caseSignedInfoType(SignedInfoType object) {
            return XmldsigAdapterFactory.this.createSignedInfoTypeAdapter();
        }

        @Override
        public Adapter caseSPKIDataType(SPKIDataType object) {
            return XmldsigAdapterFactory.this.createSPKIDataTypeAdapter();
        }

        @Override
        public Adapter caseTransformsType(TransformsType object) {
            return XmldsigAdapterFactory.this.createTransformsTypeAdapter();
        }

        @Override
        public Adapter caseTransformType(TransformType object) {
            return XmldsigAdapterFactory.this.createTransformTypeAdapter();
        }

        @Override
        public Adapter caseX509DataType(X509DataType object) {
            return XmldsigAdapterFactory.this.createX509DataTypeAdapter();
        }

        @Override
        public Adapter caseX509IssuerSerialType(X509IssuerSerialType object) {
            return XmldsigAdapterFactory.this.createX509IssuerSerialTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return XmldsigAdapterFactory.this.createEObjectAdapter();
        }
    };

    public XmldsigAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = XmldsigPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createCanonicalizationMethodTypeAdapter() {
        return null;
    }

    public Adapter createDigestMethodTypeAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createDSAKeyValueTypeAdapter() {
        return null;
    }

    public Adapter createKeyInfoTypeAdapter() {
        return null;
    }

    public Adapter createKeyValueTypeAdapter() {
        return null;
    }

    public Adapter createManifestTypeAdapter() {
        return null;
    }

    public Adapter createObjectTypeAdapter() {
        return null;
    }

    public Adapter createPGPDataTypeAdapter() {
        return null;
    }

    public Adapter createReferenceTypeAdapter() {
        return null;
    }

    public Adapter createRetrievalMethodTypeAdapter() {
        return null;
    }

    public Adapter createRSAKeyValueTypeAdapter() {
        return null;
    }

    public Adapter createSignatureMethodTypeAdapter() {
        return null;
    }

    public Adapter createSignaturePropertiesTypeAdapter() {
        return null;
    }

    public Adapter createSignaturePropertyTypeAdapter() {
        return null;
    }

    public Adapter createSignatureTypeAdapter() {
        return null;
    }

    public Adapter createSignatureValueTypeAdapter() {
        return null;
    }

    public Adapter createSignedInfoTypeAdapter() {
        return null;
    }

    public Adapter createSPKIDataTypeAdapter() {
        return null;
    }

    public Adapter createTransformsTypeAdapter() {
        return null;
    }

    public Adapter createTransformTypeAdapter() {
        return null;
    }

    public Adapter createX509DataTypeAdapter() {
        return null;
    }

    public Adapter createX509IssuerSerialTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

