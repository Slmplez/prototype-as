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
package autosar3x.bswmodule.bswinterfaces.impl;

import autosar3x.bswmodule.bswinterfaces.BswCallType;
import autosar3x.bswmodule.bswinterfaces.BswExecutionContext;
import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesFactory;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.impl.BswModuleDependencyImpl;
import autosar3x.bswmodule.bswinterfaces.impl.BswModuleEntryImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswinterfacesFactoryImpl
extends EFactoryImpl
implements BswinterfacesFactory {
    public static BswinterfacesFactory init() {
        try {
            BswinterfacesFactory theBswinterfacesFactory = (BswinterfacesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/bm/binterfaces");
            if (theBswinterfacesFactory != null) {
                return theBswinterfacesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswinterfacesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswModuleDependency();
            }
            case 1: {
                return this.createBswModuleEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createBswCallTypeFromString(eDataType, initialValue);
            }
            case 3: {
                return this.createBswExecutionContextFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertBswCallTypeToString(eDataType, instanceValue);
            }
            case 3: {
                return this.convertBswExecutionContextToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BswModuleDependency createBswModuleDependency() {
        BswModuleDependencyImpl bswModuleDependency = new BswModuleDependencyImpl();
        return bswModuleDependency;
    }

    public BswModuleEntry createBswModuleEntry() {
        BswModuleEntryImpl bswModuleEntry = new BswModuleEntryImpl();
        return bswModuleEntry;
    }

    public BswCallType createBswCallTypeFromString(EDataType eDataType, String initialValue) {
        BswCallType result = BswCallType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBswCallTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BswExecutionContext createBswExecutionContextFromString(EDataType eDataType, String initialValue) {
        BswExecutionContext result = BswExecutionContext.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBswExecutionContextToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BswinterfacesPackage getBswinterfacesPackage() {
        return (BswinterfacesPackage)this.getEPackage();
    }

    @Deprecated
    public static BswinterfacesPackage getPackage() {
        return BswinterfacesPackage.eINSTANCE;
    }
}

