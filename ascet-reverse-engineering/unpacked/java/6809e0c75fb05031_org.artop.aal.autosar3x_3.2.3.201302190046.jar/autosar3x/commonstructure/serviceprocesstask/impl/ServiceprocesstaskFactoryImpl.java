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
package autosar3x.commonstructure.serviceprocesstask.impl;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskFactory;
import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImpl;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.commonstructure.serviceprocesstask.SwServiceReentranceEnum;
import autosar3x.commonstructure.serviceprocesstask.impl.SwServiceAccessedElementSetImpl;
import autosar3x.commonstructure.serviceprocesstask.impl.SwServiceArgImpl;
import autosar3x.commonstructure.serviceprocesstask.impl.SwServiceImplImpl;
import autosar3x.commonstructure.serviceprocesstask.impl.SwServicePropsImpl;
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
            ServiceprocesstaskFactory theServiceprocesstaskFactory = (ServiceprocesstaskFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/spt");
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
                return this.createSwService();
            }
            case 1: {
                return this.createSwServiceArg();
            }
            case 2: {
                return this.createSwServiceProps();
            }
            case 3: {
                return this.createSwServiceAccessedElementSet();
            }
            case 4: {
                return this.createSwServiceImpl();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createSwServiceImplPolicyEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createSwServiceReentranceEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertSwServiceImplPolicyEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertSwServiceReentranceEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwService createSwService() {
        autosar3x.commonstructure.serviceprocesstask.impl.SwServiceImpl swService = new autosar3x.commonstructure.serviceprocesstask.impl.SwServiceImpl();
        return swService;
    }

    public SwServiceArg createSwServiceArg() {
        SwServiceArgImpl swServiceArg = new SwServiceArgImpl();
        return swServiceArg;
    }

    public SwServiceProps createSwServiceProps() {
        SwServicePropsImpl swServiceProps = new SwServicePropsImpl();
        return swServiceProps;
    }

    public SwServiceAccessedElementSet createSwServiceAccessedElementSet() {
        SwServiceAccessedElementSetImpl swServiceAccessedElementSet = new SwServiceAccessedElementSetImpl();
        return swServiceAccessedElementSet;
    }

    public SwServiceImpl createSwServiceImpl() {
        SwServiceImplImpl swServiceImpl = new SwServiceImplImpl();
        return swServiceImpl;
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

    public ServiceprocesstaskPackage getServiceprocesstaskPackage() {
        return (ServiceprocesstaskPackage)this.getEPackage();
    }

    @Deprecated
    public static ServiceprocesstaskPackage getPackage() {
        return ServiceprocesstaskPackage.eINSTANCE;
    }
}

