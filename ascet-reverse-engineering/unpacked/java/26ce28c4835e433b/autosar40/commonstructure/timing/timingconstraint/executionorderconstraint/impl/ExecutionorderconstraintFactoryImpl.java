/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.EOCExecutableEntityRef;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionOrderConstraint;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.EOCExecutableEntityRefImpl;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.ExecutionOrderConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ExecutionorderconstraintFactoryImpl
extends EFactoryImpl
implements ExecutionorderconstraintFactory {
    public static ExecutionorderconstraintFactory init() {
        try {
            ExecutionorderconstraintFactory theExecutionorderconstraintFactory = (ExecutionorderconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/eoc");
            if (theExecutionorderconstraintFactory != null) {
                return theExecutionorderconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ExecutionorderconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createEOCExecutableEntityRef();
            }
            case 1: {
                return this.createExecutionOrderConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public EOCExecutableEntityRef createEOCExecutableEntityRef() {
        EOCExecutableEntityRefImpl eocExecutableEntityRef = new EOCExecutableEntityRefImpl();
        return eocExecutableEntityRef;
    }

    public ExecutionOrderConstraint createExecutionOrderConstraint() {
        ExecutionOrderConstraintImpl executionOrderConstraint = new ExecutionOrderConstraintImpl();
        return executionOrderConstraint;
    }

    public ExecutionorderconstraintPackage getExecutionorderconstraintPackage() {
        return (ExecutionorderconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static ExecutionorderconstraintPackage getPackage() {
        return ExecutionorderconstraintPackage.eINSTANCE;
    }
}

