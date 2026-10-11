/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.namespace;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceFactory;
import org.eclipse.emf.ecore.xml.namespace.impl.XMLNamespacePackageImpl;

public interface XMLNamespacePackage
extends EPackage {
    public static final String eNAME = "namespace";
    public static final String eNS_URI = "http://www.w3.org/XML/1998/namespace";
    public static final String eNS_PREFIX = "xml";
    public static final XMLNamespacePackage eINSTANCE = XMLNamespacePackageImpl.init();
    public static final int XML_NAMESPACE_DOCUMENT_ROOT = 0;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__MIXED = 0;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__XMLNS_PREFIX_MAP = 1;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = 2;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__BASE = 3;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__ID = 4;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__LANG = 5;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT__SPACE = 6;
    public static final int XML_NAMESPACE_DOCUMENT_ROOT_FEATURE_COUNT = 7;
    public static final int SPACE_TYPE = 1;
    public static final int LANG_TYPE = 2;
    public static final int LANG_TYPE_NULL = 3;
    public static final int SPACE_TYPE_OBJECT = 4;

    public EClass getXMLNamespaceDocumentRoot();

    public EAttribute getXMLNamespaceDocumentRoot_Mixed();

    public EReference getXMLNamespaceDocumentRoot_XMLNSPrefixMap();

    public EReference getXMLNamespaceDocumentRoot_XSISchemaLocation();

    public EAttribute getXMLNamespaceDocumentRoot_Base();

    public EAttribute getXMLNamespaceDocumentRoot_Id();

    public EAttribute getXMLNamespaceDocumentRoot_Lang();

    public EAttribute getXMLNamespaceDocumentRoot_Space();

    public EEnum getSpaceType();

    public EDataType getLangType();

    public EDataType getLangTypeNull();

    public EDataType getSpaceTypeObject();

    public XMLNamespaceFactory getXMLNamespaceFactory();

    public static interface Literals {
        public static final EClass XML_NAMESPACE_DOCUMENT_ROOT = eINSTANCE.getXMLNamespaceDocumentRoot();
        public static final EAttribute XML_NAMESPACE_DOCUMENT_ROOT__MIXED = eINSTANCE.getXMLNamespaceDocumentRoot_Mixed();
        public static final EReference XML_NAMESPACE_DOCUMENT_ROOT__XMLNS_PREFIX_MAP = eINSTANCE.getXMLNamespaceDocumentRoot_XMLNSPrefixMap();
        public static final EReference XML_NAMESPACE_DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = eINSTANCE.getXMLNamespaceDocumentRoot_XSISchemaLocation();
        public static final EAttribute XML_NAMESPACE_DOCUMENT_ROOT__BASE = eINSTANCE.getXMLNamespaceDocumentRoot_Base();
        public static final EAttribute XML_NAMESPACE_DOCUMENT_ROOT__ID = eINSTANCE.getXMLNamespaceDocumentRoot_Id();
        public static final EAttribute XML_NAMESPACE_DOCUMENT_ROOT__LANG = eINSTANCE.getXMLNamespaceDocumentRoot_Lang();
        public static final EAttribute XML_NAMESPACE_DOCUMENT_ROOT__SPACE = eINSTANCE.getXMLNamespaceDocumentRoot_Space();
        public static final EEnum SPACE_TYPE = eINSTANCE.getSpaceType();
        public static final EDataType LANG_TYPE = eINSTANCE.getLangType();
        public static final EDataType LANG_TYPE_NULL = eINSTANCE.getLangTypeNull();
        public static final EDataType SPACE_TYPE_OBJECT = eINSTANCE.getSpaceTypeObject();
    }
}

