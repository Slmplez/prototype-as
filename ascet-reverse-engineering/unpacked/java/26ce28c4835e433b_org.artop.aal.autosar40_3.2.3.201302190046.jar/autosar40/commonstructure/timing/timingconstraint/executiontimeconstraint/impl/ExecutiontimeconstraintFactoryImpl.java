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
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeTypeEnum;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl.ExecutionTimeConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ExecutiontimeconstraintFactoryImpl
extends EFactoryImpl
implements ExecutiontimeconstraintFactory {
    public static ExecutiontimeconstraintFactory init() {
        try {
            ExecutiontimeconstraintFactory theExecutiontimeconstraintFactory = (ExecutiontimeconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etimeconstraint");
            if (theExecutiontimeconstraintFactory != null) {
                return theExecutiontimeconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ExecutiontimeconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createExecutionTimeConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createExecutionTimeTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertExecutionTimeTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ExecutionTimeConstraint createExecutionTimeConstraint() {
        ExecutionTimeConstraintImpl executionTimeConstraint = new ExecutionTimeConstraintImpl();
        return executionTimeConstraint;
    }

    public ExecutionTimeTypeEnum createExecutionTimeTypeEnumFromString(EDataType eDataType, String initialValue) {
        ExecutionTimeTypeEnum result = ExecutionTimeTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertExecutionTimeTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ExecutiontimeconstraintPackage getExecutiontimeconstraintPackage() {
        return (ExecutiontimeconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static ExecutiontimeconstraintPackage getPackage() {
        return ExecutiontimeconstraintPackage.eINSTANCE;
    }
}

