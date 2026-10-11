/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.EMOFExtendedMetaData;
import org.eclipse.emf.ecore.xmi.impl.EMOFResourceImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLInfoImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLMapImpl;

public class EMOFResourceFactoryImpl
extends ResourceFactoryImpl {
    protected EMOFExtendedMetaData extendedMetaData;

    public EMOFResourceFactoryImpl() {
        XMLMapImpl xmlMap = new XMLMapImpl();
        xmlMap.add((ENamedElement)EcorePackage.Literals.EFACTORY, this.createXMLInfo("Factory"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE, this.createXMLInfo("Package"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EATTRIBUTE, this.createXMLInfo("Property"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EREFERENCE, this.createXMLInfo("Property"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPARAMETER, this.createXMLInfo("Parameter"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EOPERATION, this.createXMLInfo("Operation"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EENUM_LITERAL, this.createXMLInfo("EnumerationLiteral"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EDATA_TYPE, this.createXMLInfo("PrimitiveType"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EENUM, this.createXMLInfo("Enumeration"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS, this.createXMLInfo("Class"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EFACTORY__EPACKAGE, this.createXMLInfo("package"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE__NS_URI, this.createXMLInfo("uri"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE__ESUBPACKAGES, this.createXMLInfo("nestedPackage"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE__ESUPER_PACKAGE, this.createXMLInfo("nestingPackage"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE__ECLASSIFIERS, this.createXMLInfo("ownedType"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EPACKAGE__NS_PREFIX, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.ETYPED_ELEMENT__ETYPE, this.createXMLInfo("type"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ETYPED_ELEMENT__ORDERED, this.createXMLInfo("isOrdered"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ETYPED_ELEMENT__UNIQUE, this.createXMLInfo("isUnique"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ETYPED_ELEMENT__LOWER_BOUND, this.createXMLInfo("lower"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ETYPED_ELEMENT__UPPER_BOUND, this.createXMLInfo("upper"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__CHANGEABLE, this.createXMLInfo("isReadOnly"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__DEFAULT_VALUE_LITERAL, this.createXMLInfo("default"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__VOLATILE, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__UNSETTABLE, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__TRANSIENT, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.ESTRUCTURAL_FEATURE__DERIVED, this.createXMLInfo("isDerived"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EATTRIBUTE__ID, this.createXMLInfo("isID"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EREFERENCE__CONTAINMENT, this.createXMLInfo("isComposite"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EREFERENCE__EOPPOSITE, this.createXMLInfo("opposite"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EREFERENCE__RESOLVE_PROXIES, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.EENUM_LITERAL__VALUE, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.EOPERATION__EPARAMETERS, this.createXMLInfo("ownedParameter"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.EOPERATION__EEXCEPTIONS, this.createXMLInfo("raisedException"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASSIFIER__INSTANCE_TYPE_NAME, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.EDATA_TYPE__SERIALIZABLE, this.createXMLInfo());
        xmlMap.add((ENamedElement)EcorePackage.Literals.EENUM__ELITERALS, this.createXMLInfo("ownedLiteral"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS__ABSTRACT, this.createXMLInfo("isAbstract"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS__ESTRUCTURAL_FEATURES, this.createXMLInfo("ownedAttribute"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS__EOPERATIONS, this.createXMLInfo("ownedOperation"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS__ESUPER_TYPES, this.createXMLInfo("superClass"));
        xmlMap.add((ENamedElement)EcorePackage.Literals.ECLASS__INTERFACE, this.createXMLInfo());
        this.extendedMetaData = new EMOFExtendedMetaData(xmlMap);
    }

    public Resource createResource(URI uri) {
        EMOFResourceImpl result = new EMOFResourceImpl(uri);
        result.setEncoding("UTF-8");
        result.getDefaultLoadOptions().put("EXTENDED_META_DATA", (Object)this.extendedMetaData);
        result.getDefaultSaveOptions().put("EXTENDED_META_DATA", (Object)this.extendedMetaData);
        result.getDefaultSaveOptions().put("LINE_WIDTH", 80);
        result.getDefaultSaveOptions().put("USE_XMI_TYPE", Boolean.TRUE);
        return result;
    }

    protected XMLResource.XMLInfo createXMLInfo(String name) {
        XMLInfoImpl info = new XMLInfoImpl();
        info.setName(name);
        return info;
    }

    protected XMLResource.XMLInfo createXMLInfo() {
        XMLInfoImpl info = new XMLInfoImpl();
        info.setXMLRepresentation(0);
        return info;
    }
}

