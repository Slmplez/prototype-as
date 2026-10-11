/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.namespace.impl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.xml.namespace.SpaceType;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceDocumentRoot;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceFactory;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.namespace.util.XMLNamespaceValidator;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class XMLNamespacePackageImpl
extends EPackageImpl
implements XMLNamespacePackage {
    private EClass xmlNamespaceDocumentRootEClass = null;
    private EEnum spaceTypeEEnum = null;
    private EDataType langTypeEDataType = null;
    private EDataType langTypeNullEDataType = null;
    private EDataType spaceTypeObjectEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private XMLNamespacePackageImpl() {
        super("http://www.w3.org/XML/1998/namespace", XMLNamespaceFactory.eINSTANCE);
    }

    public static XMLNamespacePackage init() {
        if (isInited) {
            return (XMLNamespacePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.w3.org/XML/1998/namespace");
        }
        XMLNamespacePackageImpl theXMLNamespacePackage = EPackage.Registry.INSTANCE.get("http://www.w3.org/XML/1998/namespace") instanceof XMLNamespacePackageImpl ? EPackage.Registry.INSTANCE.get("http://www.w3.org/XML/1998/namespace") : new XMLNamespacePackageImpl();
        isInited = true;
        XMLTypePackage.eINSTANCE.eClass();
        theXMLNamespacePackage.createPackageContents();
        theXMLNamespacePackage.initializePackageContents();
        EValidator.Registry.INSTANCE.put(theXMLNamespacePackage, new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return XMLNamespaceValidator.INSTANCE;
            }
        });
        theXMLNamespacePackage.freeze();
        EPackage.Registry.INSTANCE.put("http://www.w3.org/XML/1998/namespace", theXMLNamespacePackage);
        return theXMLNamespacePackage;
    }

    public EClass getXMLNamespaceDocumentRoot() {
        return this.xmlNamespaceDocumentRootEClass;
    }

    public EAttribute getXMLNamespaceDocumentRoot_Mixed() {
        return (EAttribute)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(0);
    }

    public EReference getXMLNamespaceDocumentRoot_XMLNSPrefixMap() {
        return (EReference)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(1);
    }

    public EReference getXMLNamespaceDocumentRoot_XSISchemaLocation() {
        return (EReference)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getXMLNamespaceDocumentRoot_Base() {
        return (EAttribute)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getXMLNamespaceDocumentRoot_Id() {
        return (EAttribute)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getXMLNamespaceDocumentRoot_Lang() {
        return (EAttribute)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getXMLNamespaceDocumentRoot_Space() {
        return (EAttribute)this.xmlNamespaceDocumentRootEClass.getEStructuralFeatures().get(6);
    }

    public EEnum getSpaceType() {
        return this.spaceTypeEEnum;
    }

    public EDataType getLangType() {
        return this.langTypeEDataType;
    }

    public EDataType getLangTypeNull() {
        return this.langTypeNullEDataType;
    }

    public EDataType getSpaceTypeObject() {
        return this.spaceTypeObjectEDataType;
    }

    public XMLNamespaceFactory getXMLNamespaceFactory() {
        return (XMLNamespaceFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.xmlNamespaceDocumentRootEClass = this.createEClass(0);
        this.createEAttribute(this.xmlNamespaceDocumentRootEClass, 0);
        this.createEReference(this.xmlNamespaceDocumentRootEClass, 1);
        this.createEReference(this.xmlNamespaceDocumentRootEClass, 2);
        this.createEAttribute(this.xmlNamespaceDocumentRootEClass, 3);
        this.createEAttribute(this.xmlNamespaceDocumentRootEClass, 4);
        this.createEAttribute(this.xmlNamespaceDocumentRootEClass, 5);
        this.createEAttribute(this.xmlNamespaceDocumentRootEClass, 6);
        this.spaceTypeEEnum = this.createEEnum(1);
        this.langTypeEDataType = this.createEDataType(2);
        this.langTypeNullEDataType = this.createEDataType(3);
        this.spaceTypeObjectEDataType = this.createEDataType(4);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("namespace");
        this.setNsPrefix("xml");
        this.setNsURI("http://www.w3.org/XML/1998/namespace");
        XMLTypePackage theXMLTypePackage = (XMLTypePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/XMLType");
        this.initEClass(this.xmlNamespaceDocumentRootEClass, XMLNamespaceDocumentRoot.class, "XMLNamespaceDocumentRoot", false, false, true);
        this.initEAttribute(this.getXMLNamespaceDocumentRoot_Mixed(), this.ecorePackage.getEFeatureMapEntry(), "mixed", null, 0, -1, null, false, false, true, false, false, false, false, true);
        this.initEReference(this.getXMLNamespaceDocumentRoot_XMLNSPrefixMap(), this.ecorePackage.getEStringToStringMapEntry(), null, "xMLNSPrefixMap", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEReference(this.getXMLNamespaceDocumentRoot_XSISchemaLocation(), this.ecorePackage.getEStringToStringMapEntry(), null, "xSISchemaLocation", null, 0, -1, null, true, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getXMLNamespaceDocumentRoot_Base(), theXMLTypePackage.getAnyURI(), "base", null, 0, 1, null, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getXMLNamespaceDocumentRoot_Id(), theXMLTypePackage.getID(), "id", null, 0, 1, null, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getXMLNamespaceDocumentRoot_Lang(), this.getLangType(), "lang", null, 0, 1, null, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getXMLNamespaceDocumentRoot_Space(), this.getSpaceType(), "space", null, 0, 1, null, false, false, true, true, false, true, false, true);
        this.initEEnum(this.spaceTypeEEnum, SpaceType.class, "SpaceType");
        this.addEEnumLiteral(this.spaceTypeEEnum, SpaceType.DEFAULT_LITERAL);
        this.addEEnumLiteral(this.spaceTypeEEnum, SpaceType.PRESERVE_LITERAL);
        this.initEDataType(this.langTypeEDataType, String.class, "LangType", true, false);
        this.initEDataType(this.langTypeNullEDataType, String.class, "LangTypeNull", true, false);
        this.initEDataType(this.spaceTypeObjectEDataType, SpaceType.class, "SpaceTypeObject", true, true);
        this.createResource("http://www.w3.org/XML/1998/namespace");
        this.createNamespaceAnnotations();
        this.createExtendedMetaDataAnnotations();
    }

    protected void createNamespaceAnnotations() {
        String source = "http://www.w3.org/XML/1998/namespace";
        this.addAnnotation(this, source, new String[]{"lang", "en"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation(this.langTypeEDataType, source, new String[]{"name", "lang_._type", "memberTypes", "http://www.eclipse.org/emf/2003/XMLType#language lang_._type_._member_._1"});
        this.addAnnotation(this.langTypeNullEDataType, source, new String[]{"name", "lang_._type_._member_._1", "baseType", "http://www.eclipse.org/emf/2003/XMLType#string", "enumeration", ""});
        this.addAnnotation(this.spaceTypeEEnum, source, new String[]{"name", "space_._type"});
        this.addAnnotation(this.spaceTypeObjectEDataType, source, new String[]{"name", "space_._type:Object", "baseType", "space_._type"});
        this.addAnnotation(this.xmlNamespaceDocumentRootEClass, source, new String[]{"name", "", "kind", "mixed"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_Mixed(), source, new String[]{"kind", "elementWildcard", "name", ":mixed"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_XMLNSPrefixMap(), source, new String[]{"kind", "attribute", "name", "xmlns:prefix"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_XSISchemaLocation(), source, new String[]{"kind", "attribute", "name", "xsi:schemaLocation"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_Base(), source, new String[]{"kind", "attribute", "name", "base", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_Id(), source, new String[]{"kind", "attribute", "name", "id", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_Lang(), source, new String[]{"kind", "attribute", "name", "lang", "namespace", "##targetNamespace"});
        this.addAnnotation(this.getXMLNamespaceDocumentRoot_Space(), source, new String[]{"kind", "attribute", "name", "space", "namespace", "##targetNamespace"});
    }
}

