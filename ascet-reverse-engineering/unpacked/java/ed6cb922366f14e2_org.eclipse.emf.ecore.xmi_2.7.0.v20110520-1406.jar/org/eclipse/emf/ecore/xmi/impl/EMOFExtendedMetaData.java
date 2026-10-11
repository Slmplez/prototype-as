/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData$EPackageExtendedMetaData
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData$EPackageExtendedMetaDataImpl
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.HashMap;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMLResource;

public class EMOFExtendedMetaData
extends BasicExtendedMetaData {
    public static final String EMOF_PACKAGE_NS_PREFIX = "emof";
    public static final String EMOF_PACKAGE_NS_URI_2_0 = "http://schema.omg.org/spec/MOF/2.0/emof.xml";
    public static final String EMOF_PACKAGE_NS_URI = "http://schema.omg.org/spec/mof/2.0/emof.xmi";
    public static final String EXTENSION = "Extension";
    public static final String XMI_EXTENSION_ELEMENT = "xmi:Extension";
    public static final String XMI_EXTENDER_ATTRIBUTE = "extender";
    public static final String EMOF_XMI_EXTENDER = "http://www.eclipse.org/emf/2002/Ecore";
    public static final String ECORE_EDATATYPE_HREF_PREFIX = "http://www.eclipse.org/emf/2002/Ecore#//";
    public static final String UNMAPPED_EMOF_EDATATYPE_HREF_PREFIX = "http://www.eclipse.org/emf/2002/Ecore.emof#ecore.";
    public static final String MAPPED_EMOF_EDATATYPE_HREF_PREFIX = "http://schema.omg.org/spec/mof/2.0/emof.xmi#";
    public static final String MAPPED_EMOF_EDATATYPE_HREF_PREFIX_2_0 = "http://schema.omg.org/spec/MOF/2.0/emof.xml#";
    public static final String[] MAPPED_ECORE_EDATATYPES = new String[]{"EString", "EBoolean", "EInt", "EBigInteger"};
    public static final String[] MAPPED_EMOF_EDATATYPES = new String[]{"String", "Boolean", "Integer", "UnlimitedNatural"};
    public static final String TAG = "Tag";
    public static final String EMOF_TAG = "emof:Tag";
    public static final String EMOF_TAG_NAME = "name";
    public static final String EMOF_TAG_VALUE = "value";
    public static final String EMOF_TAG_ELEMENT = "element";
    public static final String EMOF_OWNED_COMMENT = "ownedComment";
    public static final String EMOF_COMMENT_BODY = "body";
    public static final String EMOF_COMMENT_ANNOTATION_SOURCE = "http://schema.omg.org/spec/MOF/2.0/emof.xml#Comment";
    public static final String EMOF_PROPERTY_CLASS_NAME = "Property";
    public static final String EMOF_PROPERTY_OPPOSITE_ROLE_NAME_ANNOTATION_SOURCE = "http://schema.omg.org/spec/MOF/2.0/emof.xml#Property.oppositeRoleName";
    public static final String CONTENT_TYPE = "org.eclipse.emf.emof";
    protected XMLResource.XMLMap xmlMap;

    public EMOFExtendedMetaData(XMLResource.XMLMap xmlMap) {
        this.extendedMetaDataHolderCache = new HashMap();
        this.xmlMap = xmlMap;
    }

    public String getNamespace(EPackage ePackage) {
        return ePackage == EcorePackage.eINSTANCE ? EMOF_PACKAGE_NS_URI_2_0 : super.getNamespace(ePackage);
    }

    public EPackage getPackage(String namespace) {
        return EMOF_PACKAGE_NS_URI.equals(namespace) || EMOF_PACKAGE_NS_URI_2_0.equals(namespace) ? EcorePackage.eINSTANCE : super.getPackage(namespace);
    }

    public String getName(EClassifier eClassifier) {
        String name;
        XMLResource.XMLInfo info = this.xmlMap.getInfo((ENamedElement)eClassifier);
        if (info != null && (name = info.getName()) != null) {
            return info.getName();
        }
        return super.getName(eClassifier);
    }

    public String getName(EStructuralFeature eStructuralFeature) {
        String name;
        XMLResource.XMLInfo info = this.xmlMap.getInfo((ENamedElement)eStructuralFeature);
        if (info != null && (name = info.getName()) != null) {
            return info.getName();
        }
        return super.getName(eStructuralFeature);
    }

    public EClassifier getType(EPackage ePackage, String name) {
        EClassifier eClassifier = super.getType(ePackage, name);
        if (eClassifier == null) {
            eClassifier = this.xmlMap.getClassifier(ePackage.getNsURI(), name);
        }
        return eClassifier;
    }

    public int getFeatureKind(EStructuralFeature feature) {
        XMLResource.XMLInfo info = this.xmlMap.getInfo((ENamedElement)feature);
        if (info != null) {
            switch (info.getXMLRepresentation()) {
                case 0: {
                    return 4;
                }
                case 1: {
                    return 2;
                }
            }
        }
        return super.getFeatureKind(feature);
    }

    protected BasicExtendedMetaData.EPackageExtendedMetaData createEPackageExtendedMetaData(EPackage ePackage) {
        return new BasicExtendedMetaData.EPackageExtendedMetaDataImpl(this, ePackage){

            public EClassifier getType(String name) {
                if (this.ePackage == EcorePackage.eINSTANCE) {
                    if (this.nameToClassifierMap == null) {
                        super.getType(name);
                        this.nameToClassifierMap.put(EMOFExtendedMetaData.EMOF_PROPERTY_CLASS_NAME, EcorePackage.Literals.EREFERENCE);
                    }
                    return (EClassifier)this.nameToClassifierMap.get(name);
                }
                return super.getType(name);
            }
        };
    }
}

