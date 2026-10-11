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
package autosar40.bswmodule.bswinterfaces.impl;

import autosar40.bswmodule.bswinterfaces.BswCallType;
import autosar40.bswmodule.bswinterfaces.BswExecutionContext;
import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswinterfaces.BswinterfacesFactory;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswinterfaces.impl.BswModuleDependencyImpl;
import autosar40.bswmodule.bswinterfaces.impl.BswModuleEntryImpl;
import autosar40.bswmodule.bswinterfaces.impl.BswModuleEntryRefConditionalImpl;
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
            BswinterfacesFactory theBswinterfacesFactory = (BswinterfacesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/bm/binterfaces");
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
                return this.createBswModuleEntryRefConditional();
            }
            case 1: {
                return this.createBswModuleDependency();
            }
            case 2: {
                return this.createBswModuleEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createBswCallTypeFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createBswExecutionContextFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertBswCallTypeToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertBswExecutionContextToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BswModuleEntryRefConditional createBswModuleEntryRefConditional() {
        BswModuleEntryRefConditionalImpl bswModuleEntryRefConditional = new BswModuleEntryRefConditionalImpl();
        return bswModuleEntryRefConditional;
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

