/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint;

import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.impl.ExecutiontimeconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExecutiontimeconstraintFactory
extends EFactory {
    public static final ExecutiontimeconstraintFactory eINSTANCE = ExecutiontimeconstraintFactoryImpl.init();

    public ExecutionTimeConstraint createExecutionTimeConstraint();

    public ExecutiontimeconstraintPackage getExecutiontimeconstraintPackage();
}

