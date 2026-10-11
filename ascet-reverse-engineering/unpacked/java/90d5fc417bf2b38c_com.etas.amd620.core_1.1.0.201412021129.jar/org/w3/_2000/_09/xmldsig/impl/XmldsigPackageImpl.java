/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage
 */
package org.w3._2000._09.xmldsig.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.impl.ComponentDataPackageImpl;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationPackageImpl;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.impl.ComponentMainPackageImpl;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.impl.ComponentProjectPackageImpl;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.impl.ComponentSpecificationPackageImpl;
import com.etas.amd620.core.Formulas.FormulasPackage;
import com.etas.amd620.core.Formulas.impl.FormulasPackageImpl;
import com.etas.amd620.core.Implementationtypes.ImplementationtypesPackage;
import com.etas.amd620.core.Implementationtypes.impl.ImplementationtypesPackageImpl;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.impl.Amd620PackageImpl;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.impl.EPackageImpl;
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

public class XmldsigPackageImpl
extends EPackageImpl
implements XmldsigPackage {
    private EClass canonicalizationMethodTypeEClass = null;
    private EClass digestMethodTypeEClass = null;
    private EClass documentRootEClass = null;
    private EClass dsaKeyValueTypeEClass = null;
    private EClass keyInfoTypeEClass = null;
    private EClass keyValueTypeEClass = null;
    private EClass manifestTypeEClass = null;
    private EClass objectTypeEClass = null;
    private EClass pgpDataTypeEClass = null;
    private EClass referenceTypeEClass = null;
    private EClass retrievalMethodTypeEClass = null;
    private EClass rsaKeyValueTypeEClass = null;
    private EClass signatureMethodTypeEClass = null;
    private EClass signaturePropertiesTypeEClass = null;
    private EClass signaturePropertyTypeEClass = null;
    private EClass signatureTypeEClass = null;
    private EClass signatureValueTypeEClass = null;
    private EClass signedInfoTypeEClass = null;
    private EClass spkiDataTypeEClass = null;
    private EClass transformsTypeEClass = null;
    private EClass transformTypeEClass = null;
    private EClass x509DataTypeEClass = null;
    private EClass x509IssuerSerialTypeEClass = null;
    private EDataType cryptoBinaryEDataType = null;
    private EDataType digestValueTypeEDataType = null;
    private EDataType hmacOutputLengthTypeEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private XmldsigPackageImpl() {
        super("http://www.w3.org/2000/09/xmldsig#", (EFactory)XmldsigFactory.eINSTANCE);
    }

    public static XmldsigPackage init() {
        if (isInited) {
            return (XmldsigPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/2000/09/xmldsig#");
        }
        XmldsigPackageImpl theXmldsigPackage = (XmldsigPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.w3.org/2000/09/xmldsig#") instanceof XmldsigPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.w3.org/2000/09/xmldsig#") : new XmldsigPackageImpl());
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        Amd620PackageImpl theAmd620Package = (Amd620PackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") instanceof Amd620PackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/amd620") : Amd620Package.eINSTANCE);
        ComponentMainPackageImpl theComponentMainPackage = (ComponentMainPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") instanceof ComponentMainPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_main") : ComponentMainPackage.eINSTANCE);
        ComponentDataPackageImpl theComponentDataPackage = (ComponentDataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") instanceof ComponentDataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_data") : ComponentDataPackage.eINSTANCE);
        ComponentImplementationPackageImpl theComponentImplementationPackage = (ComponentImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") instanceof ComponentImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_implementation") : ComponentImplementationPackage.eINSTANCE);
        ComponentSpecificationPackageImpl theComponentSpecificationPackage = (ComponentSpecificationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") instanceof ComponentSpecificationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_specification") : ComponentSpecificationPackage.eINSTANCE);
        ComponentProjectPackageImpl theComponentProjectPackage = (ComponentProjectPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") instanceof ComponentProjectPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/component_project") : ComponentProjectPackage.eINSTANCE);
        ImplementationtypesPackageImpl theImplementationtypesPackage = (ImplementationtypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") instanceof ImplementationtypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/implementationtypes") : ImplementationtypesPackage.eINSTANCE);
        FormulasPackageImpl theFormulasPackage = (FormulasPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") instanceof FormulasPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://www.etas.com/ascet/amd/620/formulas") : FormulasPackage.eINSTANCE);
        theComponentSpecificationPackage.loadPackage();
        theXmldsigPackage.createPackageContents();
        theAmd620Package.createPackageContents();
        theComponentMainPackage.createPackageContents();
        theComponentDataPackage.createPackageContents();
        theComponentImplementationPackage.createPackageContents();
        theComponentProjectPackage.createPackageContents();
        theImplementationtypesPackage.createPackageContents();
        theFormulasPackage.createPackageContents();
        theXmldsigPackage.initializePackageContents();
        theAmd620Package.initializePackageContents();
        theComponentMainPackage.initializePackageContents();
        theComponentDataPackage.initializePackageContents();
        theComponentImplementationPackage.initializePackageContents();
        theComponentProjectPackage.initializePackageContents();
        theImplementationtypesPackage.initializePackageContents();
        theFormulasPackage.initializePackageContents();
        theComponentSpecificationPackage.fixPackageContents();
        theXmldsigPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.w3.org/2000/09/xmldsig#", (Object)theXmldsigPackage);
        return theXmldsigPackage;
    }

    @Override
    public EClass getCanonicalizationMethodType() {
        return this.canonicalizationMethodTypeEClass;
    }

    @Override
    public EAttribute getCanonicalizationMethodType_Mixed() {
        return (EAttribute)this.canonicalizationMethodTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getCanonicalizationMethodType_Any() {
        return (EAttribute)this.canonicalizationMethodTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getCanonicalizationMethodType_Algorithm() {
        return (EAttribute)this.canonicalizationMethodTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getDigestMethodType() {
        return this.digestMethodTypeEClass;
    }

    @Override
    public EAttribute getDigestMethodType_Mixed() {
        return (EAttribute)this.digestMethodTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDigestMethodType_Any() {
        return (EAttribute)this.digestMethodTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDigestMethodType_Algorithm() {
        return (EAttribute)this.digestMethodTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getDocumentRoot() {
        return this.documentRootEClass;
    }

    @Override
    public EAttribute getDocumentRoot_Mixed() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getDocumentRoot_XSISchemaLocation() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getDocumentRoot_CanonicalizationMethod() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getDocumentRoot_DigestMethod() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getDocumentRoot_DigestValue() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getDocumentRoot_DSAKeyValue() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getDocumentRoot_KeyInfo() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getDocumentRoot_KeyName() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EReference getDocumentRoot_KeyValue() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EReference getDocumentRoot_Manifest() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EAttribute getDocumentRoot_MgmtData() {
        return (EAttribute)this.documentRootEClass.getEStructuralFeatures().get(11);
    }

    @Override
    public EReference getDocumentRoot_Object() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(12);
    }

    @Override
    public EReference getDocumentRoot_PGPData() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(13);
    }

    @Override
    public EReference getDocumentRoot_Reference() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(14);
    }

    @Override
    public EReference getDocumentRoot_RetrievalMethod() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(15);
    }

    @Override
    public EReference getDocumentRoot_RSAKeyValue() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(16);
    }

    @Override
    public EReference getDocumentRoot_Signature() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(17);
    }

    @Override
    public EReference getDocumentRoot_SignatureMethod() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(18);
    }

    @Override
    public EReference getDocumentRoot_SignatureProperties() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(19);
    }

    @Override
    public EReference getDocumentRoot_SignatureProperty() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(20);
    }

    @Override
    public EReference getDocumentRoot_SignatureValue() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(21);
    }

    @Override
    public EReference getDocumentRoot_SignedInfo() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(22);
    }

    @Override
    public EReference getDocumentRoot_SPKIData() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(23);
    }

    @Override
    public EReference getDocumentRoot_Transform() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(24);
    }

    @Override
    public EReference getDocumentRoot_Transforms() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(25);
    }

    @Override
    public EReference getDocumentRoot_X509Data() {
        return (EReference)this.documentRootEClass.getEStructuralFeatures().get(26);
    }

    @Override
    public EClass getDSAKeyValueType() {
        return this.dsaKeyValueTypeEClass;
    }

    @Override
    public EAttribute getDSAKeyValueType_P() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getDSAKeyValueType_Q() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getDSAKeyValueType_J() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getDSAKeyValueType_G() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getDSAKeyValueType_Y() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getDSAKeyValueType_Seed() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getDSAKeyValueType_PgenCounter() {
        return (EAttribute)this.dsaKeyValueTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getKeyInfoType() {
        return this.keyInfoTypeEClass;
    }

    @Override
    public EAttribute getKeyInfoType_Mixed() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getKeyInfoType_Group() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getKeyInfoType_KeyName() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getKeyInfoType_KeyValue() {
        return (EReference)this.keyInfoTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EReference getKeyInfoType_RetrievalMethod() {
        return (EReference)this.keyInfoTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EReference getKeyInfoType_X509Data() {
        return (EReference)this.keyInfoTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EReference getKeyInfoType_PGPData() {
        return (EReference)this.keyInfoTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EReference getKeyInfoType_SPKIData() {
        return (EReference)this.keyInfoTypeEClass.getEStructuralFeatures().get(7);
    }

    @Override
    public EAttribute getKeyInfoType_MgmtData() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(8);
    }

    @Override
    public EAttribute getKeyInfoType_Any() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(9);
    }

    @Override
    public EAttribute getKeyInfoType_Id() {
        return (EAttribute)this.keyInfoTypeEClass.getEStructuralFeatures().get(10);
    }

    @Override
    public EClass getKeyValueType() {
        return this.keyValueTypeEClass;
    }

    @Override
    public EAttribute getKeyValueType_Mixed() {
        return (EAttribute)this.keyValueTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getKeyValueType_DSAKeyValue() {
        return (EReference)this.keyValueTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getKeyValueType_RSAKeyValue() {
        return (EReference)this.keyValueTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getKeyValueType_Any() {
        return (EAttribute)this.keyValueTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getManifestType() {
        return this.manifestTypeEClass;
    }

    @Override
    public EReference getManifestType_Reference() {
        return (EReference)this.manifestTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getManifestType_Id() {
        return (EAttribute)this.manifestTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getObjectType() {
        return this.objectTypeEClass;
    }

    @Override
    public EAttribute getObjectType_Mixed() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getObjectType_Group() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getObjectType_Any() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getObjectType_Encoding() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getObjectType_Id() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getObjectType_MimeType() {
        return (EAttribute)this.objectTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getPGPDataType() {
        return this.pgpDataTypeEClass;
    }

    @Override
    public EAttribute getPGPDataType_PGPKeyID() {
        return (EAttribute)this.pgpDataTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getPGPDataType_PGPKeyPacket() {
        return (EAttribute)this.pgpDataTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getPGPDataType_Any() {
        return (EAttribute)this.pgpDataTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getPGPDataType_PGPKeyPacket1() {
        return (EAttribute)this.pgpDataTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getPGPDataType_Any1() {
        return (EAttribute)this.pgpDataTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getReferenceType() {
        return this.referenceTypeEClass;
    }

    @Override
    public EReference getReferenceType_Transforms() {
        return (EReference)this.referenceTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getReferenceType_DigestMethod() {
        return (EReference)this.referenceTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getReferenceType_DigestValue() {
        return (EAttribute)this.referenceTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getReferenceType_Id() {
        return (EAttribute)this.referenceTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getReferenceType_Type() {
        return (EAttribute)this.referenceTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getReferenceType_URI() {
        return (EAttribute)this.referenceTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EClass getRetrievalMethodType() {
        return this.retrievalMethodTypeEClass;
    }

    @Override
    public EReference getRetrievalMethodType_Transforms() {
        return (EReference)this.retrievalMethodTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRetrievalMethodType_Type() {
        return (EAttribute)this.retrievalMethodTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getRetrievalMethodType_URI() {
        return (EAttribute)this.retrievalMethodTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getRSAKeyValueType() {
        return this.rsaKeyValueTypeEClass;
    }

    @Override
    public EAttribute getRSAKeyValueType_Modulus() {
        return (EAttribute)this.rsaKeyValueTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getRSAKeyValueType_Exponent() {
        return (EAttribute)this.rsaKeyValueTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSignatureMethodType() {
        return this.signatureMethodTypeEClass;
    }

    @Override
    public EAttribute getSignatureMethodType_Mixed() {
        return (EAttribute)this.signatureMethodTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSignatureMethodType_HMACOutputLength() {
        return (EAttribute)this.signatureMethodTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSignatureMethodType_Any() {
        return (EAttribute)this.signatureMethodTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSignatureMethodType_Algorithm() {
        return (EAttribute)this.signatureMethodTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getSignaturePropertiesType() {
        return this.signaturePropertiesTypeEClass;
    }

    @Override
    public EReference getSignaturePropertiesType_SignatureProperty() {
        return (EReference)this.signaturePropertiesTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSignaturePropertiesType_Id() {
        return (EAttribute)this.signaturePropertiesTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSignaturePropertyType() {
        return this.signaturePropertyTypeEClass;
    }

    @Override
    public EAttribute getSignaturePropertyType_Mixed() {
        return (EAttribute)this.signaturePropertyTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSignaturePropertyType_Group() {
        return (EAttribute)this.signaturePropertyTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSignaturePropertyType_Any() {
        return (EAttribute)this.signaturePropertyTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSignaturePropertyType_Id() {
        return (EAttribute)this.signaturePropertyTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getSignaturePropertyType_Target() {
        return (EAttribute)this.signaturePropertyTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getSignatureType() {
        return this.signatureTypeEClass;
    }

    @Override
    public EReference getSignatureType_SignedInfo() {
        return (EReference)this.signatureTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getSignatureType_SignatureValue() {
        return (EReference)this.signatureTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getSignatureType_KeyInfo() {
        return (EReference)this.signatureTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EReference getSignatureType_Object() {
        return (EReference)this.signatureTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getSignatureType_Id() {
        return (EAttribute)this.signatureTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getSignatureValueType() {
        return this.signatureValueTypeEClass;
    }

    @Override
    public EAttribute getSignatureValueType_Value() {
        return (EAttribute)this.signatureValueTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSignatureValueType_Id() {
        return (EAttribute)this.signatureValueTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EClass getSignedInfoType() {
        return this.signedInfoTypeEClass;
    }

    @Override
    public EReference getSignedInfoType_CanonicalizationMethod() {
        return (EReference)this.signedInfoTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getSignedInfoType_SignatureMethod() {
        return (EReference)this.signedInfoTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EReference getSignedInfoType_Reference() {
        return (EReference)this.signedInfoTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getSignedInfoType_Id() {
        return (EAttribute)this.signedInfoTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EClass getSPKIDataType() {
        return this.spkiDataTypeEClass;
    }

    @Override
    public EAttribute getSPKIDataType_Group() {
        return (EAttribute)this.spkiDataTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getSPKIDataType_SPKISexp() {
        return (EAttribute)this.spkiDataTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getSPKIDataType_Any() {
        return (EAttribute)this.spkiDataTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EClass getTransformsType() {
        return this.transformsTypeEClass;
    }

    @Override
    public EReference getTransformsType_Transform() {
        return (EReference)this.transformsTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EClass getTransformType() {
        return this.transformTypeEClass;
    }

    @Override
    public EAttribute getTransformType_Mixed() {
        return (EAttribute)this.transformTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getTransformType_Group() {
        return (EAttribute)this.transformTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getTransformType_Any() {
        return (EAttribute)this.transformTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getTransformType_XPath() {
        return (EAttribute)this.transformTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getTransformType_Algorithm() {
        return (EAttribute)this.transformTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EClass getX509DataType() {
        return this.x509DataTypeEClass;
    }

    @Override
    public EAttribute getX509DataType_Group() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EReference getX509DataType_X509IssuerSerial() {
        return (EReference)this.x509DataTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EAttribute getX509DataType_X509SKI() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(2);
    }

    @Override
    public EAttribute getX509DataType_X509SubjectName() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(3);
    }

    @Override
    public EAttribute getX509DataType_X509Certificate() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(4);
    }

    @Override
    public EAttribute getX509DataType_X509CRL() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(5);
    }

    @Override
    public EAttribute getX509DataType_Any() {
        return (EAttribute)this.x509DataTypeEClass.getEStructuralFeatures().get(6);
    }

    @Override
    public EClass getX509IssuerSerialType() {
        return this.x509IssuerSerialTypeEClass;
    }

    @Override
    public EAttribute getX509IssuerSerialType_X509IssuerName() {
        return (EAttribute)this.x509IssuerSerialTypeEClass.getEStructuralFeatures().get(0);
    }

    @Override
    public EAttribute getX509IssuerSerialType_X509SerialNumber() {
        return (EAttribute)this.x509IssuerSerialTypeEClass.getEStructuralFeatures().get(1);
    }

    @Override
    public EDataType getCryptoBinary() {
        return this.cryptoBinaryEDataType;
    }

    @Override
    public EDataType getDigestValueType() {
        return this.digestValueTypeEDataType;
    }

    @Override
    public EDataType getHMACOutputLengthType() {
        return this.hmacOutputLengthTypeEDataType;
    }

    @Override
    public XmldsigFactory getXmldsigFactory() {
        return (XmldsigFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.canonicalizationMethodTypeEClass = this.createEClass(0);
        this.createEAttribute(this.canonicalizationMethodTypeEClass, 0);
        this.createEAttribute(this.canonicalizationMethodTypeEClass, 1);
        this.createEAttribute(this.canonicalizationMethodTypeEClass, 2);
        this.digestMethodTypeEClass = this.createEClass(1);
        this.createEAttribute(this.digestMethodTypeEClass, 0);
        this.createEAttribute(this.digestMethodTypeEClass, 1);
        this.createEAttribute(this.digestMethodTypeEClass, 2);
        this.documentRootEClass = this.createEClass(2);
        this.createEAttribute(this.documentRootEClass, 0);
        this.createEReference(this.documentRootEClass, 1);
        this.createEReference(this.documentRootEClass, 2);
        this.createEReference(this.documentRootEClass, 3);
        this.createEReference(this.documentRootEClass, 4);
        this.createEAttribute(this.documentRootEClass, 5);
        this.createEReference(this.documentRootEClass, 6);
        this.createEReference(this.documentRootEClass, 7);
        this.createEAttribute(this.documentRootEClass, 8);
        this.createEReference(this.documentRootEClass, 9);
        this.createEReference(this.documentRootEClass, 10);
        this.createEAttribute(this.documentRootEClass, 11);
        this.createEReference(this.documentRootEClass, 12);
        this.createEReference(this.documentRootEClass, 13);
        this.createEReference(this.documentRootEClass, 14);
        this.createEReference(this.documentRootEClass, 15);
        this.createEReference(this.documentRootEClass, 16);
        this.createEReference(this.documentRootEClass, 17);
        this.createEReference(this.documentRootEClass, 18);
        this.createEReference(this.documentRootEClass, 19);
        this.createEReference(this.documentRootEClass, 20);
        this.createEReference(this.documentRootEClass, 21);
        this.createEReference(this.documentRootEClass, 22);
        this.createEReference(this.documentRootEClass, 23);
        this.createEReference(this.documentRootEClass, 24);
        this.createEReference(this.documentRootEClass, 25);
        this.createEReference(this.documentRootEClass, 26);
        this.dsaKeyValueTypeEClass = this.createEClass(3);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 0);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 1);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 2);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 3);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 4);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 5);
        this.createEAttribute(this.dsaKeyValueTypeEClass, 6);
        this.keyInfoTypeEClass = this.createEClass(4);
        this.createEAttribute(this.keyInfoTypeEClass, 0);
        this.createEAttribute(this.keyInfoTypeEClass, 1);
        this.createEAttribute(this.keyInfoTypeEClass, 2);
        this.createEReference(this.keyInfoTypeEClass, 3);
        this.createEReference(this.keyInfoTypeEClass, 4);
        this.createEReference(this.keyInfoTypeEClass, 5);
        this.createEReference(this.keyInfoTypeEClass, 6);
        this.createEReference(this.keyInfoTypeEClass, 7);
        this.createEAttribute(this.keyInfoTypeEClass, 8);
        this.createEAttribute(this.keyInfoTypeEClass, 9);
        this.createEAttribute(this.keyInfoTypeEClass, 10);
        this.keyValueTypeEClass = this.createEClass(5);
        this.createEAttribute(this.keyValueTypeEClass, 0);
        this.createEReference(this.keyValueTypeEClass, 1);
        this.createEReference(this.keyValueTypeEClass, 2);
        this.createEAttribute(this.keyValueTypeEClass, 3);
        this.manifestTypeEClass = this.createEClass(6);
        this.createEReference(this.manifestTypeEClass, 0);
        this.createEAttribute(this.manifestTypeEClass, 1);
        this.objectTypeEClass = this.createEClass(7);
        this.createEAttribute(this.objectTypeEClass, 0);
        this.createEAttribute(this.objectTypeEClass, 1);
        this.createEAttribute(this.objectTypeEClass, 2);
        this.createEAttribute(this.objectTypeEClass, 3);
        this.createEAttribute(this.objectTypeEClass, 4);
        this.createEAttribute(this.objectTypeEClass, 5);
        this.pgpDataTypeEClass = this.createEClass(8);
        this.createEAttribute(this.pgpDataTypeEClass, 0);
        this.createEAttribute(this.pgpDataTypeEClass, 1);
        this.createEAttribute(this.pgpDataTypeEClass, 2);
        this.createEAttribute(this.pgpDataTypeEClass, 3);
        this.createEAttribute(this.pgpDataTypeEClass, 4);
        this.referenceTypeEClass = this.createEClass(9);
        this.createEReference(this.referenceTypeEClass, 0);
        this.createEReference(this.referenceTypeEClass, 1);
        this.createEAttribute(this.referenceTypeEClass, 2);
        this.createEAttribute(this.referenceTypeEClass, 3);
        this.createEAttribute(this.referenceTypeEClass, 4);
        this.createEAttribute(this.referenceTypeEClass, 5);
        this.retrievalMethodTypeEClass = this.createEClass(10);
        this.createEReference(this.retrievalMethodTypeEClass, 0);
        this.createEAttribute(this.retrievalMethodTypeEClass, 1);
        this.createEAttribute(this.retrievalMethodTypeEClass, 2);
        this.rsaKeyValueTypeEClass = this.createEClass(11);
        this.createEAttribute(this.rsaKeyValueTypeEClass, 0);
        this.createEAttribute(this.rsaKeyValueTypeEClass, 1);
        this.signatureMethodTypeEClass = this.createEClass(12);
        this.createEAttribute(this.signatureMethodTypeEClass, 0);
        this.createEAttribute(this.signatureMethodTypeEClass, 1);
        this.createEAttribute(this.signatureMethodTypeEClass, 2);
        this.createEAttribute(this.signatureMethodTypeEClass, 3);
        this.signaturePropertiesTypeEClass = this.createEClass(13);
        this.createEReference(this.signaturePropertiesTypeEClass, 0);
        this.createEAttribute(this.signaturePropertiesTypeEClass, 1);
        this.signaturePropertyTypeEClass = this.createEClass(14);
        this.createEAttribute(this.signaturePropertyTypeEClass, 0);
        this.createEAttribute(this.signaturePropertyTypeEClass, 1);
        this.createEAttribute(this.signaturePropertyTypeEClass, 2);
        this.createEAttribute(this.signaturePropertyTypeEClass, 3);
        this.createEAttribute(this.signaturePropertyTypeEClass, 4);
        this.signatureTypeEClass = this.createEClass(15);
        this.createEReference(this.signatureTypeEClass, 0);
        this.createEReference(this.signatureTypeEClass, 1);
        this.createEReference(this.signatureTypeEClass, 2);
        this.createEReference(this.signatureTypeEClass, 3);
        this.createEAttribute(this.signatureTypeEClass, 4);
        this.signatureValueTypeEClass = this.createEClass(16);
        this.createEAttribute(this.signatureValueTypeEClass, 0);
        this.createEAttribute(this.signatureValueTypeEClass, 1);
        this.signedInfoTypeEClass = this.createEClass(17);
        this.createEReference(this.signedInfoTypeEClass, 0);
        this.createEReference(this.signedInfoTypeEClass, 1);
        this.createEReference(this.signedInfoTypeEClass, 2);
        this.createEAttribute(this.signedInfoTypeEClass, 3);
        this.spkiDataTypeEClass = this.createEClass(18);
        this.createEAttribute(this.spkiDataTypeEClass, 0);
        this.createEAttribute(this.spkiDataTypeEClass, 1);
        this.createEAttribute(this.spkiDataTypeEClass, 2);
        this.transformsTypeEClass = this.createEClass(19);
        this.createEReference(this.transformsTypeEClass, 0);
        this.transformTypeEClass = this.createEClass(20);
        this.createEAttribute(this.transformTypeEClass, 0);
        this.createEAttribute(this.transformTypeEClass, 1);
        this.createEAttribute(this.transformTypeEClass, 2);
        this.createEAttribute(this.transformTypeEClass, 3);
        this.createEAttribute(this.transformTypeEClass, 4);
        this.x509DataTypeEClass = this.createEClass(21);
        this.createEAttribute(this.x509DataTypeEClass, 0);
        this.createEReference(this.x509DataTypeEClass, 1);
        this.createEAttribute(this.x509DataTypeEClass, 2);
        this.createEAttribute(this.x509DataTypeEClass, 3);
        this.createEAttribute(this.x509DataTypeEClass, 4);
        this.createEAttribute(this.x509DataTypeEClass, 5);
        this.createEAttribute(this.x509DataTypeEClass, 6);
        this.x509IssuerSerialTypeEClass = this.createEClass(22);
        this.createEAttribute(this.x509IssuerSerialTypeEClass, 0);
        this.createEAttribute(this.x509IssuerSerialTypeEClass, 1);
        this.cryptoBinaryEDataType = this.createEDataType(23);
        this.digestValueTypeEDataType = this.createEDataType(24);
        this.hmacOutputLengthTypeEDataType = this.createEDataType(25);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("xmldsig");
        this.setNsPrefix("_xmldsig");
        this.setNsURI("http://www.w3.org/2000/09/xmldsig#");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        this.initEClass(this.canonicalizationMethodTypeEClass, CanonicalizationMethodType.class, "CanonicalizationMethodType", false, false, true);
        this.initEAttribute(this.getCanonicalizationMethodType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, CanonicalizationMethodType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getCanonicalizationMethodType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, CanonicalizationMethodType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getCanonicalizationMethodType_Algorithm(), (EClassifier)theXMLTypePackage.getAnyURI(), "algorithm", null, 1, 1, CanonicalizationMethodType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.digestMethodTypeEClass, DigestMethodType.class, "DigestMethodType", false, false, true);
        this.initEAttribute(this.getDigestMethodType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, DigestMethodType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getDigestMethodType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, DigestMethodType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getDigestMethodType_Algorithm(), (EClassifier)theXMLTypePackage.getAnyURI(), "algorithm", null, 1, 1, DigestMethodType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.documentRootEClass, DocumentRoot.class, "DocumentRoot", false, false, true);
        this.initEAttribute(this.getDocumentRoot_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getDocumentRoot_XMLNSPrefixMap(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_XSISchemaLocation(), (EClassifier)this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDocumentRoot_CanonicalizationMethod(), (EClassifier)this.getCanonicalizationMethodType(), null, "canonicalizationMethod", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_DigestMethod(), (EClassifier)this.getDigestMethodType(), null, "digestMethod", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getDocumentRoot_DigestValue(), (EClassifier)this.getDigestValueType(), "digestValue", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEReference(this.getDocumentRoot_DSAKeyValue(), (EClassifier)this.getDSAKeyValueType(), null, "dSAKeyValue", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_KeyInfo(), (EClassifier)this.getKeyInfoType(), null, "keyInfo", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getDocumentRoot_KeyName(), (EClassifier)theXMLTypePackage.getString(), "keyName", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEReference(this.getDocumentRoot_KeyValue(), (EClassifier)this.getKeyValueType(), null, "keyValue", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_Manifest(), (EClassifier)this.getManifestType(), null, "manifest", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getDocumentRoot_MgmtData(), (EClassifier)theXMLTypePackage.getString(), "mgmtData", null, 0, -2, null, true, true, true, false, false, false, true, true);
        this.initEReference(this.getDocumentRoot_Object(), (EClassifier)this.getObjectType(), null, "object", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_PGPData(), (EClassifier)this.getPGPDataType(), null, "pGPData", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_Reference(), (EClassifier)this.getReferenceType(), null, "reference", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_RetrievalMethod(), (EClassifier)this.getRetrievalMethodType(), null, "retrievalMethod", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_RSAKeyValue(), (EClassifier)this.getRSAKeyValueType(), null, "rSAKeyValue", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_Signature(), (EClassifier)this.getSignatureType(), null, "signature", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SignatureMethod(), (EClassifier)this.getSignatureMethodType(), null, "signatureMethod", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SignatureProperties(), (EClassifier)this.getSignaturePropertiesType(), null, "signatureProperties", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SignatureProperty(), (EClassifier)this.getSignaturePropertyType(), null, "signatureProperty", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SignatureValue(), (EClassifier)this.getSignatureValueType(), null, "signatureValue", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SignedInfo(), (EClassifier)this.getSignedInfoType(), null, "signedInfo", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_SPKIData(), (EClassifier)this.getSPKIDataType(), null, "sPKIData", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_Transform(), (EClassifier)this.getTransformType(), null, "transform", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_Transforms(), (EClassifier)this.getTransformsType(), null, "transforms", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getDocumentRoot_X509Data(), (EClassifier)this.getX509DataType(), null, "x509Data", null, 0, -2, null, true, true, true, true, false, false, true, true, true);
        this.initEClass(this.dsaKeyValueTypeEClass, DSAKeyValueType.class, "DSAKeyValueType", false, false, true);
        this.initEAttribute(this.getDSAKeyValueType_P(), (EClassifier)this.getCryptoBinary(), "p", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_Q(), (EClassifier)this.getCryptoBinary(), "q", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_J(), (EClassifier)this.getCryptoBinary(), "j", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_G(), (EClassifier)this.getCryptoBinary(), "g", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_Y(), (EClassifier)this.getCryptoBinary(), "y", null, 1, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_Seed(), (EClassifier)this.getCryptoBinary(), "seed", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getDSAKeyValueType_PgenCounter(), (EClassifier)this.getCryptoBinary(), "pgenCounter", null, 0, 1, DSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.keyInfoTypeEClass, KeyInfoType.class, "KeyInfoType", false, false, true);
        this.initEAttribute(this.getKeyInfoType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, KeyInfoType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getKeyInfoType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, KeyInfoType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getKeyInfoType_KeyName(), (EClassifier)theXMLTypePackage.getString(), "keyName", null, 0, -1, KeyInfoType.class, true, true, true, false, false, false, true, true);
        this.initEReference(this.getKeyInfoType_KeyValue(), (EClassifier)this.getKeyValueType(), null, "keyValue", null, 0, -1, KeyInfoType.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getKeyInfoType_RetrievalMethod(), (EClassifier)this.getRetrievalMethodType(), null, "retrievalMethod", null, 0, -1, KeyInfoType.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getKeyInfoType_X509Data(), (EClassifier)this.getX509DataType(), null, "x509Data", null, 0, -1, KeyInfoType.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getKeyInfoType_PGPData(), (EClassifier)this.getPGPDataType(), null, "pGPData", null, 0, -1, KeyInfoType.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getKeyInfoType_SPKIData(), (EClassifier)this.getSPKIDataType(), null, "sPKIData", null, 0, -1, KeyInfoType.class, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getKeyInfoType_MgmtData(), (EClassifier)theXMLTypePackage.getString(), "mgmtData", null, 0, -1, KeyInfoType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getKeyInfoType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, KeyInfoType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getKeyInfoType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, KeyInfoType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.keyValueTypeEClass, KeyValueType.class, "KeyValueType", false, false, true);
        this.initEAttribute(this.getKeyValueType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, KeyValueType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getKeyValueType_DSAKeyValue(), (EClassifier)this.getDSAKeyValueType(), null, "dSAKeyValue", null, 0, 1, KeyValueType.class, true, true, true, true, false, false, true, true, true);
        this.initEReference(this.getKeyValueType_RSAKeyValue(), (EClassifier)this.getRSAKeyValueType(), null, "rSAKeyValue", null, 0, 1, KeyValueType.class, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getKeyValueType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, 1, KeyValueType.class, true, true, true, false, false, true, true, true);
        this.initEClass(this.manifestTypeEClass, ManifestType.class, "ManifestType", false, false, true);
        this.initEReference(this.getManifestType_Reference(), (EClassifier)this.getReferenceType(), null, "reference", null, 1, -1, ManifestType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getManifestType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, ManifestType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.objectTypeEClass, ObjectType.class, "ObjectType", false, false, true);
        this.initEAttribute(this.getObjectType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, ObjectType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getObjectType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, ObjectType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getObjectType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, ObjectType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getObjectType_Encoding(), (EClassifier)theXMLTypePackage.getAnyURI(), "encoding", null, 0, 1, ObjectType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getObjectType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, ObjectType.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getObjectType_MimeType(), (EClassifier)theXMLTypePackage.getString(), "mimeType", null, 0, 1, ObjectType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.pgpDataTypeEClass, PGPDataType.class, "PGPDataType", false, false, true);
        this.initEAttribute(this.getPGPDataType_PGPKeyID(), (EClassifier)theXMLTypePackage.getBase64Binary(), "pGPKeyID", null, 0, 1, PGPDataType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPGPDataType_PGPKeyPacket(), (EClassifier)theXMLTypePackage.getBase64Binary(), "pGPKeyPacket", null, 0, 1, PGPDataType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPGPDataType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, PGPDataType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getPGPDataType_PGPKeyPacket1(), (EClassifier)theXMLTypePackage.getBase64Binary(), "pGPKeyPacket1", null, 0, 1, PGPDataType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getPGPDataType_Any1(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any1", null, 0, -1, PGPDataType.class, false, false, true, false, false, false, false, true);
        this.initEClass(this.referenceTypeEClass, ReferenceType.class, "ReferenceType", false, false, true);
        this.initEReference(this.getReferenceType_Transforms(), (EClassifier)this.getTransformsType(), null, "transforms", null, 0, 1, ReferenceType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getReferenceType_DigestMethod(), (EClassifier)this.getDigestMethodType(), null, "digestMethod", null, 1, 1, ReferenceType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getReferenceType_DigestValue(), (EClassifier)this.getDigestValueType(), "digestValue", null, 1, 1, ReferenceType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getReferenceType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, ReferenceType.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getReferenceType_Type(), (EClassifier)theXMLTypePackage.getAnyURI(), "type", null, 0, 1, ReferenceType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getReferenceType_URI(), (EClassifier)theXMLTypePackage.getAnyURI(), "uRI", null, 0, 1, ReferenceType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.retrievalMethodTypeEClass, RetrievalMethodType.class, "RetrievalMethodType", false, false, true);
        this.initEReference(this.getRetrievalMethodType_Transforms(), (EClassifier)this.getTransformsType(), null, "transforms", null, 0, 1, RetrievalMethodType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRetrievalMethodType_Type(), (EClassifier)theXMLTypePackage.getAnyURI(), "type", null, 0, 1, RetrievalMethodType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRetrievalMethodType_URI(), (EClassifier)theXMLTypePackage.getAnyURI(), "uRI", null, 0, 1, RetrievalMethodType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.rsaKeyValueTypeEClass, RSAKeyValueType.class, "RSAKeyValueType", false, false, true);
        this.initEAttribute(this.getRSAKeyValueType_Modulus(), (EClassifier)this.getCryptoBinary(), "modulus", null, 1, 1, RSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getRSAKeyValueType_Exponent(), (EClassifier)this.getCryptoBinary(), "exponent", null, 1, 1, RSAKeyValueType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.signatureMethodTypeEClass, SignatureMethodType.class, "SignatureMethodType", false, false, true);
        this.initEAttribute(this.getSignatureMethodType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, SignatureMethodType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getSignatureMethodType_HMACOutputLength(), (EClassifier)this.getHMACOutputLengthType(), "hMACOutputLength", null, 0, 1, SignatureMethodType.class, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getSignatureMethodType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, SignatureMethodType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getSignatureMethodType_Algorithm(), (EClassifier)theXMLTypePackage.getAnyURI(), "algorithm", null, 1, 1, SignatureMethodType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.signaturePropertiesTypeEClass, SignaturePropertiesType.class, "SignaturePropertiesType", false, false, true);
        this.initEReference(this.getSignaturePropertiesType_SignatureProperty(), (EClassifier)this.getSignaturePropertyType(), null, "signatureProperty", null, 1, -1, SignaturePropertiesType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSignaturePropertiesType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, SignaturePropertiesType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.signaturePropertyTypeEClass, SignaturePropertyType.class, "SignaturePropertyType", false, false, true);
        this.initEAttribute(this.getSignaturePropertyType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, SignaturePropertyType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getSignaturePropertyType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, SignaturePropertyType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getSignaturePropertyType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, SignaturePropertyType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getSignaturePropertyType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, SignaturePropertyType.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getSignaturePropertyType_Target(), (EClassifier)theXMLTypePackage.getAnyURI(), "target", null, 1, 1, SignaturePropertyType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.signatureTypeEClass, SignatureType.class, "SignatureType", false, false, true);
        this.initEReference(this.getSignatureType_SignedInfo(), (EClassifier)this.getSignedInfoType(), null, "signedInfo", null, 1, 1, SignatureType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignatureType_SignatureValue(), (EClassifier)this.getSignatureValueType(), null, "signatureValue", null, 1, 1, SignatureType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignatureType_KeyInfo(), (EClassifier)this.getKeyInfoType(), null, "keyInfo", null, 0, 1, SignatureType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignatureType_Object(), (EClassifier)this.getObjectType(), null, "object", null, 0, -1, SignatureType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSignatureType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, SignatureType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.signatureValueTypeEClass, SignatureValueType.class, "SignatureValueType", false, false, true);
        this.initEAttribute(this.getSignatureValueType_Value(), (EClassifier)theXMLTypePackage.getBase64Binary(), "value", null, 0, 1, SignatureValueType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getSignatureValueType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, SignatureValueType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.signedInfoTypeEClass, SignedInfoType.class, "SignedInfoType", false, false, true);
        this.initEReference(this.getSignedInfoType_CanonicalizationMethod(), (EClassifier)this.getCanonicalizationMethodType(), null, "canonicalizationMethod", null, 1, 1, SignedInfoType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignedInfoType_SignatureMethod(), (EClassifier)this.getSignatureMethodType(), null, "signatureMethod", null, 1, 1, SignedInfoType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignedInfoType_Reference(), (EClassifier)this.getReferenceType(), null, "reference", null, 1, -1, SignedInfoType.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSignedInfoType_Id(), (EClassifier)theXMLTypePackage.getID(), "id", null, 0, 1, SignedInfoType.class, false, false, true, false, true, true, false, true);
        this.initEClass(this.spkiDataTypeEClass, SPKIDataType.class, "SPKIDataType", false, false, true);
        this.initEAttribute(this.getSPKIDataType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, SPKIDataType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getSPKIDataType_SPKISexp(), (EClassifier)theXMLTypePackage.getBase64Binary(), "sPKISexp", null, 1, -1, SPKIDataType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getSPKIDataType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, SPKIDataType.class, true, true, true, false, false, false, true, true);
        this.initEClass(this.transformsTypeEClass, TransformsType.class, "TransformsType", false, false, true);
        this.initEReference(this.getTransformsType_Transform(), (EClassifier)this.getTransformType(), null, "transform", null, 1, -1, TransformsType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.transformTypeEClass, TransformType.class, "TransformType", false, false, true);
        this.initEAttribute(this.getTransformType_Mixed(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, TransformType.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getTransformType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, TransformType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getTransformType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, TransformType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getTransformType_XPath(), (EClassifier)theXMLTypePackage.getString(), "xPath", null, 0, -1, TransformType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getTransformType_Algorithm(), (EClassifier)theXMLTypePackage.getAnyURI(), "algorithm", null, 1, 1, TransformType.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.x509DataTypeEClass, X509DataType.class, "X509DataType", false, false, true);
        this.initEAttribute(this.getX509DataType_Group(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "group", null, 0, -1, X509DataType.class, false, false, true, false, false, false, false, true);
        this.initEReference(this.getX509DataType_X509IssuerSerial(), (EClassifier)this.getX509IssuerSerialType(), null, "x509IssuerSerial", null, 0, -1, X509DataType.class, true, true, true, true, false, false, true, true, true);
        this.initEAttribute(this.getX509DataType_X509SKI(), (EClassifier)theXMLTypePackage.getBase64Binary(), "x509SKI", null, 0, -1, X509DataType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getX509DataType_X509SubjectName(), (EClassifier)theXMLTypePackage.getString(), "x509SubjectName", null, 0, -1, X509DataType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getX509DataType_X509Certificate(), (EClassifier)theXMLTypePackage.getBase64Binary(), "x509Certificate", null, 0, -1, X509DataType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getX509DataType_X509CRL(), (EClassifier)theXMLTypePackage.getBase64Binary(), "x509CRL", null, 0, -1, X509DataType.class, true, true, true, false, false, false, true, true);
        this.initEAttribute(this.getX509DataType_Any(), (EClassifier)this.ecorePackage.getEFeatureMapEntry(), "any", null, 0, -1, X509DataType.class, true, true, true, false, false, false, true, true);
        this.initEClass(this.x509IssuerSerialTypeEClass, X509IssuerSerialType.class, "X509IssuerSerialType", false, false, true);
        this.initEAttribute(this.getX509IssuerSerialType_X509IssuerName(), (EClassifier)theXMLTypePackage.getString(), "x509IssuerName", null, 1, 1, X509IssuerSerialType.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getX509IssuerSerialType_X509SerialNumber(), (EClassifier)theXMLTypePackage.getInteger(), "x509SerialNumber", null, 1, 1, X509IssuerSerialType.class, false, false, true, false, false, true, false, true);
        this.initEDataType(this.cryptoBinaryEDataType, byte[].class, "CryptoBinary", true, false);
        this.initEDataType(this.digestValueTypeEDataType, byte[].class, "DigestValueType", true, false);
        this.initEDataType(this.hmacOutputLengthTypeEDataType, BigInteger.class, "HMACOutputLengthType", true, false);
        this.createResource("http://www.w3.org/2000/09/xmldsig#");
        this.createExtendedMetaDataAnnotations();
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this.canonicalizationMethodTypeEClass, source, new String[]{"name", "CanonicalizationMethodType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getCanonicalizationMethodType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getCanonicalizationMethodType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":1", "processing", "strict"});
        this.addAnnotation((ENamedElement)this.getCanonicalizationMethodType_Algorithm(), source, new String[]{"kind", "attribute", "name", "Algorithm"});
        this.addAnnotation((ENamedElement)this.cryptoBinaryEDataType, source, new String[]{"name", "CryptoBinary", "baseType", "http://www.eclipse.org/emf/2003/XMLType#base64Binary"});
        this.addAnnotation((ENamedElement)this.digestMethodTypeEClass, source, new String[]{"name", "DigestMethodType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDigestMethodType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDigestMethodType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":1", "processing", "lax"});
        this.addAnnotation((ENamedElement)this.getDigestMethodType_Algorithm(), source, new String[]{"kind", "attribute", "name", "Algorithm"});
        this.addAnnotation((ENamedElement)this.digestValueTypeEDataType, source, new String[]{"name", "DigestValueType", "baseType", "http://www.eclipse.org/emf/2003/XMLType#base64Binary"});
        this.addAnnotation((ENamedElement)this.documentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_CanonicalizationMethod(), source, new String[]{"kind", "element", "name", "CanonicalizationMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_DigestMethod(), source, new String[]{"kind", "element", "name", "DigestMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_DigestValue(), source, new String[]{"kind", "element", "name", "DigestValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_DSAKeyValue(), source, new String[]{"kind", "element", "name", "DSAKeyValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_KeyInfo(), source, new String[]{"kind", "element", "name", "KeyInfo", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_KeyName(), source, new String[]{"kind", "element", "name", "KeyName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_KeyValue(), source, new String[]{"kind", "element", "name", "KeyValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Manifest(), source, new String[]{"kind", "element", "name", "Manifest", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_MgmtData(), source, new String[]{"kind", "element", "name", "MgmtData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Object(), source, new String[]{"kind", "element", "name", "Object", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_PGPData(), source, new String[]{"kind", "element", "name", "PGPData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Reference(), source, new String[]{"kind", "element", "name", "Reference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_RetrievalMethod(), source, new String[]{"kind", "element", "name", "RetrievalMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_RSAKeyValue(), source, new String[]{"kind", "element", "name", "RSAKeyValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Signature(), source, new String[]{"kind", "element", "name", "Signature", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SignatureMethod(), source, new String[]{"kind", "element", "name", "SignatureMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SignatureProperties(), source, new String[]{"kind", "element", "name", "SignatureProperties", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SignatureProperty(), source, new String[]{"kind", "element", "name", "SignatureProperty", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SignatureValue(), source, new String[]{"kind", "element", "name", "SignatureValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SignedInfo(), source, new String[]{"kind", "element", "name", "SignedInfo", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_SPKIData(), source, new String[]{"kind", "element", "name", "SPKIData", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Transform(), source, new String[]{"kind", "element", "name", "Transform", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_Transforms(), source, new String[]{"kind", "element", "name", "Transforms", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDocumentRoot_X509Data(), source, new String[]{"kind", "element", "name", "X509Data", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.dsaKeyValueTypeEClass, source, new String[]{"name", "DSAKeyValueType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_P(), source, new String[]{"kind", "element", "name", "P", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_Q(), source, new String[]{"kind", "element", "name", "Q", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_J(), source, new String[]{"kind", "element", "name", "J", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_G(), source, new String[]{"kind", "element", "name", "G", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_Y(), source, new String[]{"kind", "element", "name", "Y", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_Seed(), source, new String[]{"kind", "element", "name", "Seed", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getDSAKeyValueType_PgenCounter(), source, new String[]{"kind", "element", "name", "PgenCounter", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.hmacOutputLengthTypeEDataType, source, new String[]{"name", "HMACOutputLengthType", "baseType", "http://www.eclipse.org/emf/2003/XMLType#integer"});
        this.addAnnotation((ENamedElement)this.keyInfoTypeEClass, source, new String[]{"name", "KeyInfoType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_Group(), source, new String[]{"kind", "group", "name", "group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_KeyName(), source, new String[]{"kind", "element", "name", "KeyName", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_KeyValue(), source, new String[]{"kind", "element", "name", "KeyValue", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_RetrievalMethod(), source, new String[]{"kind", "element", "name", "RetrievalMethod", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_X509Data(), source, new String[]{"kind", "element", "name", "X509Data", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_PGPData(), source, new String[]{"kind", "element", "name", "PGPData", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_SPKIData(), source, new String[]{"kind", "element", "name", "SPKIData", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_MgmtData(), source, new String[]{"kind", "element", "name", "MgmtData", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":9", "processing", "lax", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getKeyInfoType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.keyValueTypeEClass, source, new String[]{"name", "KeyValueType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getKeyValueType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getKeyValueType_DSAKeyValue(), source, new String[]{"kind", "element", "name", "DSAKeyValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getKeyValueType_RSAKeyValue(), source, new String[]{"kind", "element", "name", "RSAKeyValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getKeyValueType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":3", "processing", "lax"});
        this.addAnnotation((ENamedElement)this.manifestTypeEClass, source, new String[]{"name", "ManifestType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getManifestType_Reference(), source, new String[]{"kind", "element", "name", "Reference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getManifestType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.objectTypeEClass, source, new String[]{"name", "ObjectType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getObjectType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getObjectType_Group(), source, new String[]{"kind", "group", "name", "group:1"});
        this.addAnnotation((ENamedElement)this.getObjectType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##any", "name", ":2", "processing", "lax", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getObjectType_Encoding(), source, new String[]{"kind", "attribute", "name", "Encoding"});
        this.addAnnotation((ENamedElement)this.getObjectType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.getObjectType_MimeType(), source, new String[]{"kind", "attribute", "name", "MimeType"});
        this.addAnnotation((ENamedElement)this.pgpDataTypeEClass, source, new String[]{"name", "PGPDataType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getPGPDataType_PGPKeyID(), source, new String[]{"kind", "element", "name", "PGPKeyID", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPGPDataType_PGPKeyPacket(), source, new String[]{"kind", "element", "name", "PGPKeyPacket", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPGPDataType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":2", "processing", "lax"});
        this.addAnnotation((ENamedElement)this.getPGPDataType_PGPKeyPacket1(), source, new String[]{"kind", "element", "name", "PGPKeyPacket", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getPGPDataType_Any1(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":4", "processing", "lax"});
        this.addAnnotation((ENamedElement)this.referenceTypeEClass, source, new String[]{"name", "ReferenceType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getReferenceType_Transforms(), source, new String[]{"kind", "element", "name", "Transforms", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReferenceType_DigestMethod(), source, new String[]{"kind", "element", "name", "DigestMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReferenceType_DigestValue(), source, new String[]{"kind", "element", "name", "DigestValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getReferenceType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.getReferenceType_Type(), source, new String[]{"kind", "attribute", "name", "Type"});
        this.addAnnotation((ENamedElement)this.getReferenceType_URI(), source, new String[]{"kind", "attribute", "name", "URI"});
        this.addAnnotation((ENamedElement)this.retrievalMethodTypeEClass, source, new String[]{"name", "RetrievalMethodType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRetrievalMethodType_Transforms(), source, new String[]{"kind", "element", "name", "Transforms", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRetrievalMethodType_Type(), source, new String[]{"kind", "attribute", "name", "Type"});
        this.addAnnotation((ENamedElement)this.getRetrievalMethodType_URI(), source, new String[]{"kind", "attribute", "name", "URI"});
        this.addAnnotation((ENamedElement)this.rsaKeyValueTypeEClass, source, new String[]{"name", "RSAKeyValueType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getRSAKeyValueType_Modulus(), source, new String[]{"kind", "element", "name", "Modulus", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getRSAKeyValueType_Exponent(), source, new String[]{"kind", "element", "name", "Exponent", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.signatureMethodTypeEClass, source, new String[]{"name", "SignatureMethodType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getSignatureMethodType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getSignatureMethodType_HMACOutputLength(), source, new String[]{"kind", "element", "name", "HMACOutputLength", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignatureMethodType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":2", "processing", "strict"});
        this.addAnnotation((ENamedElement)this.getSignatureMethodType_Algorithm(), source, new String[]{"kind", "attribute", "name", "Algorithm"});
        this.addAnnotation((ENamedElement)this.signaturePropertiesTypeEClass, source, new String[]{"name", "SignaturePropertiesType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertiesType_SignatureProperty(), source, new String[]{"kind", "element", "name", "SignatureProperty", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertiesType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.signaturePropertyTypeEClass, source, new String[]{"name", "SignaturePropertyType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertyType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertyType_Group(), source, new String[]{"kind", "group", "name", "group:1"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertyType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":2", "processing", "lax", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertyType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.getSignaturePropertyType_Target(), source, new String[]{"kind", "attribute", "name", "Target"});
        this.addAnnotation((ENamedElement)this.signatureTypeEClass, source, new String[]{"name", "SignatureType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getSignatureType_SignedInfo(), source, new String[]{"kind", "element", "name", "SignedInfo", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignatureType_SignatureValue(), source, new String[]{"kind", "element", "name", "SignatureValue", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignatureType_KeyInfo(), source, new String[]{"kind", "element", "name", "KeyInfo", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignatureType_Object(), source, new String[]{"kind", "element", "name", "Object", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignatureType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.signatureValueTypeEClass, source, new String[]{"name", "SignatureValueType", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getSignatureValueType_Value(), source, new String[]{"name", ":0", "kind", "simple"});
        this.addAnnotation((ENamedElement)this.getSignatureValueType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.signedInfoTypeEClass, source, new String[]{"name", "SignedInfoType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getSignedInfoType_CanonicalizationMethod(), source, new String[]{"kind", "element", "name", "CanonicalizationMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignedInfoType_SignatureMethod(), source, new String[]{"kind", "element", "name", "SignatureMethod", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignedInfoType_Reference(), source, new String[]{"kind", "element", "name", "Reference", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getSignedInfoType_Id(), source, new String[]{"kind", "attribute", "name", "Id"});
        this.addAnnotation((ENamedElement)this.spkiDataTypeEClass, source, new String[]{"name", "SPKIDataType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getSPKIDataType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getSPKIDataType_SPKISexp(), source, new String[]{"kind", "element", "name", "SPKISexp", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getSPKIDataType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":2", "processing", "lax", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.transformsTypeEClass, source, new String[]{"name", "TransformsType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getTransformsType_Transform(), source, new String[]{"kind", "element", "name", "Transform", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.transformTypeEClass, source, new String[]{"name", "TransformType", "kind", "mixed"});
        this.addAnnotation((ENamedElement)this.getTransformType_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation((ENamedElement)this.getTransformType_Group(), source, new String[]{"kind", "group", "name", "group:1"});
        this.addAnnotation((ENamedElement)this.getTransformType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":2", "processing", "lax", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getTransformType_XPath(), source, new String[]{"kind", "element", "name", "XPath", "namespace", "##targetNamespace", "group", "#group:1"});
        this.addAnnotation((ENamedElement)this.getTransformType_Algorithm(), source, new String[]{"kind", "attribute", "name", "Algorithm"});
        this.addAnnotation((ENamedElement)this.x509DataTypeEClass, source, new String[]{"name", "X509DataType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getX509DataType_Group(), source, new String[]{"kind", "group", "name", "group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_X509IssuerSerial(), source, new String[]{"kind", "element", "name", "X509IssuerSerial", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_X509SKI(), source, new String[]{"kind", "element", "name", "X509SKI", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_X509SubjectName(), source, new String[]{"kind", "element", "name", "X509SubjectName", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_X509Certificate(), source, new String[]{"kind", "element", "name", "X509Certificate", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_X509CRL(), source, new String[]{"kind", "element", "name", "X509CRL", "namespace", "##targetNamespace", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.getX509DataType_Any(), source, new String[]{"kind", "elementWildcard", "wildcards", "##other", "name", ":6", "processing", "lax", "group", "#group:0"});
        this.addAnnotation((ENamedElement)this.x509IssuerSerialTypeEClass, source, new String[]{"name", "X509IssuerSerialType", "kind", "elementOnly"});
        this.addAnnotation((ENamedElement)this.getX509IssuerSerialType_X509IssuerName(), source, new String[]{"kind", "element", "name", "X509IssuerName", "namespace", "##targetNamespace"});
        this.addAnnotation((ENamedElement)this.getX509IssuerSerialType_X509SerialNumber(), source, new String[]{"kind", "element", "name", "X509SerialNumber", "namespace", "##targetNamespace"});
    }
}

