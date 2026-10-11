/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.executionorderconstraint;

import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.EOCExecutableEntityRef;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionOrderConstraint;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl.ExecutionorderconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExecutionorderconstraintFactory
extends EFactory {
    public static final ExecutionorderconstraintFactory eINSTANCE = ExecutionorderconstraintFactoryImpl.init();

    public EOCExecutableEntityRef createEOCExecutableEntityRef();

    public ExecutionOrderConstraint createExecutionOrderConstraint();

    public ExecutionorderconstraintPackage getExecutionorderconstraintPackage();
}

