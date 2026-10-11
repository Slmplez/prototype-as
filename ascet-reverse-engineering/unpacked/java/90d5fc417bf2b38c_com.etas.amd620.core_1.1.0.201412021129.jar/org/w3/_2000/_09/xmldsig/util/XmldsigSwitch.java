/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package org.w3._2000._09.xmldsig.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;
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

public class XmldsigSwitch<T>
extends Switch<T> {
    protected static XmldsigPackage modelPackage;

    public XmldsigSwitch() {
        if (modelPackage == null) {
            modelPackage = XmldsigPackage.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                CanonicalizationMethodType canonicalizationMethodType = (CanonicalizationMethodType)theEObject;
                T result = this.caseCanonicalizationMethodType(canonicalizationMethodType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DigestMethodType digestMethodType = (DigestMethodType)theEObject;
                T result = this.caseDigestMethodType(digestMethodType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DocumentRoot documentRoot = (DocumentRoot)theEObject;
                T result = this.caseDocumentRoot(documentRoot);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DSAKeyValueType dsaKeyValueType = (DSAKeyValueType)theEObject;
                T result = this.caseDSAKeyValueType(dsaKeyValueType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                KeyInfoType keyInfoType = (KeyInfoType)theEObject;
                T result = this.caseKeyInfoType(keyInfoType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                KeyValueType keyValueType = (KeyValueType)theEObject;
                T result = this.caseKeyValueType(keyValueType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ManifestType manifestType = (ManifestType)theEObject;
                T result = this.caseManifestType(manifestType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ObjectType objectType = (ObjectType)theEObject;
                T result = this.caseObjectType(objectType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                PGPDataType pgpDataType = (PGPDataType)theEObject;
                T result = this.casePGPDataType(pgpDataType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ReferenceType referenceType = (ReferenceType)theEObject;
                T result = this.caseReferenceType(referenceType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                RetrievalMethodType retrievalMethodType = (RetrievalMethodType)theEObject;
                T result = this.caseRetrievalMethodType(retrievalMethodType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                RSAKeyValueType rsaKeyValueType = (RSAKeyValueType)theEObject;
                T result = this.caseRSAKeyValueType(rsaKeyValueType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SignatureMethodType signatureMethodType = (SignatureMethodType)theEObject;
                T result = this.caseSignatureMethodType(signatureMethodType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SignaturePropertiesType signaturePropertiesType = (SignaturePropertiesType)theEObject;
                T result = this.caseSignaturePropertiesType(signaturePropertiesType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                SignaturePropertyType signaturePropertyType = (SignaturePropertyType)theEObject;
                T result = this.caseSignaturePropertyType(signaturePropertyType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                SignatureType signatureType = (SignatureType)theEObject;
                T result = this.caseSignatureType(signatureType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                SignatureValueType signatureValueType = (SignatureValueType)theEObject;
                T result = this.caseSignatureValueType(signatureValueType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                SignedInfoType signedInfoType = (SignedInfoType)theEObject;
                T result = this.caseSignedInfoType(signedInfoType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                SPKIDataType spkiDataType = (SPKIDataType)theEObject;
                T result = this.caseSPKIDataType(spkiDataType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                TransformsType transformsType = (TransformsType)theEObject;
                T result = this.caseTransformsType(transformsType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                TransformType transformType = (TransformType)theEObject;
                T result = this.caseTransformType(transformType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                X509DataType x509DataType = (X509DataType)theEObject;
                T result = this.caseX509DataType(x509DataType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                X509IssuerSerialType x509IssuerSerialType = (X509IssuerSerialType)theEObject;
                T result = this.caseX509IssuerSerialType(x509IssuerSerialType);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCanonicalizationMethodType(CanonicalizationMethodType object) {
        return null;
    }

    public T caseDigestMethodType(DigestMethodType object) {
        return null;
    }

    public T caseDocumentRoot(DocumentRoot object) {
        return null;
    }

    public T caseDSAKeyValueType(DSAKeyValueType object) {
        return null;
    }

    public T caseKeyInfoType(KeyInfoType object) {
        return null;
    }

    public T caseKeyValueType(KeyValueType object) {
        return null;
    }

    public T caseManifestType(ManifestType object) {
        return null;
    }

    public T caseObjectType(ObjectType object) {
        return null;
    }

    public T casePGPDataType(PGPDataType object) {
        return null;
    }

    public T caseReferenceType(ReferenceType object) {
        return null;
    }

    public T caseRetrievalMethodType(RetrievalMethodType object) {
        return null;
    }

    public T caseRSAKeyValueType(RSAKeyValueType object) {
        return null;
    }

    public T caseSignatureMethodType(SignatureMethodType object) {
        return null;
    }

    public T caseSignaturePropertiesType(SignaturePropertiesType object) {
        return null;
    }

    public T caseSignaturePropertyType(SignaturePropertyType object) {
        return null;
    }

    public T caseSignatureType(SignatureType object) {
        return null;
    }

    public T caseSignatureValueType(SignatureValueType object) {
        return null;
    }

    public T caseSignedInfoType(SignedInfoType object) {
        return null;
    }

    public T caseSPKIDataType(SPKIDataType object) {
        return null;
    }

    public T caseTransformsType(TransformsType object) {
        return null;
    }

    public T caseTransformType(TransformType object) {
        return null;
    }

    public T caseX509DataType(X509DataType object) {
        return null;
    }

    public T caseX509IssuerSerialType(X509IssuerSerialType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

