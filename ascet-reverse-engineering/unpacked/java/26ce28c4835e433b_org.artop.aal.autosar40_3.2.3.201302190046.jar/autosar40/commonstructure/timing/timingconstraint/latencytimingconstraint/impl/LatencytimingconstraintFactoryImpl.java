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
package autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyConstraintTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl.LatencyTimingConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class LatencytimingconstraintFactoryImpl
extends EFactoryImpl
implements LatencytimingconstraintFactory {
    public static LatencytimingconstraintFactory init() {
        try {
            LatencytimingconstraintFactory theLatencytimingconstraintFactory = (LatencytimingconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ltc");
            if (theLatencytimingconstraintFactory != null) {
                return theLatencytimingconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new LatencytimingconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createLatencyTimingConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createLatencyConstraintTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertLatencyConstraintTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public LatencyTimingConstraint createLatencyTimingConstraint() {
        LatencyTimingConstraintImpl latencyTimingConstraint = new LatencyTimingConstraintImpl();
        return latencyTimingConstraint;
    }

    public LatencyConstraintTypeEnum createLatencyConstraintTypeEnumFromString(EDataType eDataType, String initialValue) {
        LatencyConstraintTypeEnum result = LatencyConstraintTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertLatencyConstraintTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public LatencytimingconstraintPackage getLatencytimingconstraintPackage() {
        return (LatencytimingconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static LatencytimingconstraintPackage getPackage() {
        return LatencytimingconstraintPackage.eINSTANCE;
    }
}

