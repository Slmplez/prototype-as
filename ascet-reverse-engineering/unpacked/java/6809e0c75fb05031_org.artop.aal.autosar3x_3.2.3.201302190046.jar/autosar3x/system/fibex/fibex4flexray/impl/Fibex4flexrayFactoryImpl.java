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
package autosar3x.system.fibex.fibex4flexray.impl;

import autosar3x.system.fibex.fibex4flexray.CycleCounter;
import autosar3x.system.fibex.fibex4flexray.CycleRepetition;
import autosar3x.system.fibex.fibex4flexray.CycleRepetitionType;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayFactory;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.impl.CycleCounterImpl;
import autosar3x.system.fibex.fibex4flexray.impl.CycleRepetitionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class Fibex4flexrayFactoryImpl
extends EFactoryImpl
implements Fibex4flexrayFactory {
    public static Fibex4flexrayFactory init() {
        try {
            Fibex4flexrayFactory theFibex4flexrayFactory = (Fibex4flexrayFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/ff");
            if (theFibex4flexrayFactory != null) {
                return theFibex4flexrayFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new Fibex4flexrayFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createCycleCounter();
            }
            case 2: {
                return this.createCycleRepetition();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.createCycleRepetitionTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 3: {
                return this.convertCycleRepetitionTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public CycleCounter createCycleCounter() {
        CycleCounterImpl cycleCounter = new CycleCounterImpl();
        return cycleCounter;
    }

    public CycleRepetition createCycleRepetition() {
        CycleRepetitionImpl cycleRepetition = new CycleRepetitionImpl();
        return cycleRepetition;
    }

    public CycleRepetitionType createCycleRepetitionTypeFromString(EDataType eDataType, String initialValue) {
        CycleRepetitionType result = CycleRepetitionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCycleRepetitionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Fibex4flexrayPackage getFibex4flexrayPackage() {
        return (Fibex4flexrayPackage)this.getEPackage();
    }

    @Deprecated
    public static Fibex4flexrayPackage getPackage() {
        return Fibex4flexrayPackage.eINSTANCE;
    }
}

