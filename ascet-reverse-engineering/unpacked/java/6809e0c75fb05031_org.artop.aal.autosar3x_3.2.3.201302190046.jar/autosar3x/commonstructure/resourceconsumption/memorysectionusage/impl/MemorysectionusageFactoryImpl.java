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
package autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl;

import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySectionType;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusageFactory;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl.MemorySectionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MemorysectionusageFactoryImpl
extends EFactoryImpl
implements MemorysectionusageFactory {
    public static MemorysectionusageFactory init() {
        try {
            MemorysectionusageFactory theMemorysectionusageFactory = (MemorysectionusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/rc/msu");
            if (theMemorysectionusageFactory != null) {
                return theMemorysectionusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MemorysectionusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMemorySection();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createMemorySectionTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertMemorySectionTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public MemorySection createMemorySection() {
        MemorySectionImpl memorySection = new MemorySectionImpl();
        return memorySection;
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

    public MemorysectionusagePackage getMemorysectionusagePackage() {
        return (MemorysectionusagePackage)this.getEPackage();
    }

    @Deprecated
    public static MemorysectionusagePackage getPackage() {
        return MemorysectionusagePackage.eINSTANCE;
    }
}

