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
package autosar40.swcomponent.swcinternalbehavior.impl;

import autosar40.swcomponent.swcinternalbehavior.HandleTerminationAndRestartEnum;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorFactory;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.impl.RunnableEntityImpl;
import autosar40.swcomponent.swcinternalbehavior.impl.SwcInternalBehaviorImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwcinternalbehaviorFactoryImpl
extends EFactoryImpl
implements SwcinternalbehaviorFactory {
    public static SwcinternalbehaviorFactory init() {
        try {
            SwcinternalbehaviorFactory theSwcinternalbehaviorFactory = (SwcinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib");
            if (theSwcinternalbehaviorFactory != null) {
                return theSwcinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwcinternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwcInternalBehavior();
            }
            case 1: {
                return this.createRunnableEntity();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createHandleTerminationAndRestartEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertHandleTerminationAndRestartEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwcInternalBehavior createSwcInternalBehavior() {
        SwcInternalBehaviorImpl swcInternalBehavior = new SwcInternalBehaviorImpl();
        return swcInternalBehavior;
    }

    public RunnableEntity createRunnableEntity() {
        RunnableEntityImpl runnableEntity = new RunnableEntityImpl();
        return runnableEntity;
    }

    public HandleTerminationAndRestartEnum createHandleTerminationAndRestartEnumFromString(EDataType eDataType, String initialValue) {
        HandleTerminationAndRestartEnum result = HandleTerminationAndRestartEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertHandleTerminationAndRestartEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SwcinternalbehaviorPackage getSwcinternalbehaviorPackage() {
        return (SwcinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static SwcinternalbehaviorPackage getPackage() {
        return SwcinternalbehaviorPackage.eINSTANCE;
    }
}

