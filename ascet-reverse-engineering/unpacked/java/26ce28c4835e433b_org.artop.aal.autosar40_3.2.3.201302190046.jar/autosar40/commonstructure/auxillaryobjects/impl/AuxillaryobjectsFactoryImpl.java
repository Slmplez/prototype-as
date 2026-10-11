/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.auxillaryobjects.impl;

import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsFactory;
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.auxillaryobjects.MemoryAllocationKeywordPolicyType;
import autosar40.commonstructure.auxillaryobjects.MemorySectionType;
import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.auxillaryobjects.impl.SwAddrMethodImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AuxillaryobjectsFactoryImpl
extends EFactoryImpl
implements AuxillaryobjectsFactory {
    public static AuxillaryobjectsFactory init() {
        try {
            AuxillaryobjectsFactory theAuxillaryobjectsFactory = (AuxillaryobjectsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/ao");
            if (theAuxillaryobjectsFactory != null) {
                return theAuxillaryobjectsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AuxillaryobjectsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwAddrMethod();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createMemoryAllocationKeywordPolicyTypeFromString(eDataType, initialValue);
            }
            case 2: {
                return this.createMemorySectionTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertMemoryAllocationKeywordPolicyTypeToString(eDataType, instanceValue);
            }
            case 2: {
                return this.convertMemorySectionTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwAddrMethod createSwAddrMethod() {
        SwAddrMethodImpl swAddrMethod = new SwAddrMethodImpl();
        return swAddrMethod;
    }

    public MemoryAllocationKeywordPolicyType createMemoryAllocationKeywordPolicyTypeFromString(EDataType eDataType, String initialValue) {
        MemoryAllocationKeywordPolicyType result = MemoryAllocationKeywordPolicyType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryAllocationKeywordPolicyTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MemorySectionType createMemorySectionTypeFromString(EDataType eDataType, String initialValue) {
        MemorySectionType result = MemorySectionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemorySectionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public AuxillaryobjectsPackage getAuxillaryobjectsPackage() {
        return (AuxillaryobjectsPackage)this.getEPackage();
    }

    @Deprecated
    public static AuxillaryobjectsPackage getPackage() {
        return AuxillaryobjectsPackage.eINSTANCE;
    }
}

