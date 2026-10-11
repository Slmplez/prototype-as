/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.namespace.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.Diagnostician;
import org.eclipse.emf.ecore.xml.namespace.SpaceType;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceDocumentRoot;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespaceFactory;
import org.eclipse.emf.ecore.xml.namespace.XMLNamespacePackage;
import org.eclipse.emf.ecore.xml.namespace.impl.XMLNamespaceDocumentRootImpl;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class XMLNamespaceFactoryImpl
extends EFactoryImpl
implements XMLNamespaceFactory {
    public static XMLNamespaceFactory init() {
        try {
            XMLNamespaceFactory theXMLNamespaceFactory = (XMLNamespaceFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.w3.org/XML/1998/namespace");
            if (theXMLNamespaceFactory != null) {
                return theXMLNamespaceFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log(exception);
        }
        return new XMLNamespaceFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createXMLNamespaceDocumentRoot();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createSpaceTypeFromString(eDataType, initialValue);
            }
            case 2: {
                return this.createLangTypeFromString(eDataType, initialValue);
            }
            case 3: {
                return this.createLangTypeNullFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createSpaceTypeObjectFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertSpaceTypeToString(eDataType, instanceValue);
            }
            case 2: {
                return this.convertLangTypeToString(eDataType, instanceValue);
            }
            case 3: {
                return this.convertLangTypeNullToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertSpaceTypeObjectToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public XMLNamespaceDocumentRoot createXMLNamespaceDocumentRoot() {
        XMLNamespaceDocumentRootImpl xmlNamespaceDocumentRoot = new XMLNamespaceDocumentRootImpl();
        return xmlNamespaceDocumentRoot;
    }

    public SpaceType createSpaceTypeFromString(EDataType eDataType, String initialValue) {
        SpaceType result = SpaceType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSpaceTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createLangTypeFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        String result = null;
        RuntimeException exception = null;
        try {
            result = (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.LANGUAGE, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        try {
            result = this.createLangTypeNullFromString(XMLNamespacePackage.Literals.LANG_TYPE_NULL, initialValue);
            if (result != null && Diagnostician.INSTANCE.validate(eDataType, result, null, null)) {
                return result;
            }
        }
        catch (RuntimeException e) {
            exception = e;
        }
        if (result != null || exception == null) {
            return result;
        }
        throw exception;
    }

    public String convertLangTypeToString(EDataType eDataType, Object instanceValue) {
        String value2;
        if (instanceValue == null) {
            return null;
        }
        if (XMLTypePackage.Literals.LANGUAGE.isInstance(instanceValue)) {
            try {
                value2 = XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.LANGUAGE, instanceValue);
                if (value2 != null) {
                    return value2;
                }
            }
            catch (Exception value2) {
                // empty catch block
            }
        }
        if (XMLNamespacePackage.Literals.LANG_TYPE_NULL.isInstance(instanceValue)) {
            try {
                value2 = this.convertLangTypeNullToString(XMLNamespacePackage.Literals.LANG_TYPE_NULL, instanceValue);
                if (value2 != null) {
                    return value2;
                }
            }
            catch (Exception exception) {
                // empty catch block
            }
        }
        throw new IllegalArgumentException("Invalid value: '" + instanceValue + "' for datatype :" + eDataType.getName());
    }

    public String createLangTypeNullFromString(EDataType eDataType, String initialValue) {
        return (String)XMLTypeFactory.eINSTANCE.createFromString(XMLTypePackage.Literals.STRING, initialValue);
    }

    public String convertLangTypeNullToString(EDataType eDataType, Object instanceValue) {
        return XMLTypeFactory.eINSTANCE.convertToString(XMLTypePackage.Literals.STRING, instanceValue);
    }

    public SpaceType createSpaceTypeObjectFromString(EDataType eDataType, String initialValue) {
        return this.createSpaceTypeFromString(XMLNamespacePackage.Literals.SPACE_TYPE, initialValue);
    }

    public String convertSpaceTypeObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertSpaceTypeToString(XMLNamespacePackage.Literals.SPACE_TYPE, instanceValue);
    }

    public XMLNamespacePackage getXMLNamespacePackage() {
        return (XMLNamespacePackage)this.getEPackage();
    }

    @Deprecated
    public static XMLNamespacePackage getPackage() {
        return XMLNamespacePackage.eINSTANCE;
    }
}

