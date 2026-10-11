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
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl.SynchronizationTimingConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SynchronizationtimingconstraintFactoryImpl
extends EFactoryImpl
implements SynchronizationtimingconstraintFactory {
    public static SynchronizationtimingconstraintFactory init() {
        try {
            SynchronizationtimingconstraintFactory theSynchronizationtimingconstraintFactory = (SynchronizationtimingconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/stc");
            if (theSynchronizationtimingconstraintFactory != null) {
                return theSynchronizationtimingconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SynchronizationtimingconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSynchronizationTimingConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createSynchronizationTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertSynchronizationTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SynchronizationTimingConstraint createSynchronizationTimingConstraint() {
        SynchronizationTimingConstraintImpl synchronizationTimingConstraint = new SynchronizationTimingConstraintImpl();
        return synchronizationTimingConstraint;
    }

    public SynchronizationTypeEnum createSynchronizationTypeEnumFromString(EDataType eDataType, String initialValue) {
        SynchronizationTypeEnum result = SynchronizationTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSynchronizationTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SynchronizationtimingconstraintPackage getSynchronizationtimingconstraintPackage() {
        return (SynchronizationtimingconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static SynchronizationtimingconstraintPackage getPackage() {
        return SynchronizationtimingconstraintPackage.eINSTANCE;
    }
}

