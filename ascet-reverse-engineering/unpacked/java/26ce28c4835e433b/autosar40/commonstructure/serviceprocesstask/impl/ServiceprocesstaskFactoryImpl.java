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
package autosar40.commonstructure.serviceprocesstask.impl;

import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskFactory;
import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.serviceprocesstask.SwServiceArg;
import autosar40.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar40.commonstructure.serviceprocesstask.SwServiceReentranceEnum;
import autosar40.commonstructure.serviceprocesstask.impl.SwServiceArgImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServiceprocesstaskFactoryImpl
extends EFactoryImpl
implements ServiceprocesstaskFactory {
    public static ServiceprocesstaskFactory init() {
        try {
            ServiceprocesstaskFactory theServiceprocesstaskFactory = (ServiceprocesstaskFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/spt");
            if (theServiceprocesstaskFactory != null) {
                return theServiceprocesstaskFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServiceprocesstaskFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwServiceArg();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createSwServiceReentranceEnumFromString(eDataType, initialValue);
            }
            case 2: {
                return this.createSwServiceImplPolicyEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertSwServiceReentranceEnumToString(eDataType, instanceValue);
            }
            case 2: {
                return this.convertSwServiceImplPolicyEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwServiceArg createSwServiceArg() {
        SwServiceArgImpl swServiceArg = new SwServiceArgImpl();
        return swServiceArg;
    }

    public SwServiceReentranceEnum createSwServiceReentranceEnumFromString(EDataType eDataType, String initialValue) {
        SwServiceReentranceEnum result = SwServiceReentranceEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwServiceReentranceEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SwServiceImplPolicyEnum createSwServiceImplPolicyEnumFromString(EDataType eDataType, String initialValue) {
        SwServiceImplPolicyEnum result = SwServiceImplPolicyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSwServiceImplPolicyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ServiceprocesstaskPackage getServiceprocesstaskPackage() {
        return (ServiceprocesstaskPackage)this.getEPackage();
    }

    @Deprecated
    public static ServiceprocesstaskPackage getPackage() {
        return ServiceprocesstaskPackage.eINSTANCE;
    }
}

