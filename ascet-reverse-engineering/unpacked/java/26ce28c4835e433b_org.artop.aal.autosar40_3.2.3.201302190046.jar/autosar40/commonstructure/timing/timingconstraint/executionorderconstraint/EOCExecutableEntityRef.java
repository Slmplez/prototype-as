/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingconstraint.executionorderconstraint;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionOrderConstraint;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EOCExecutableEntityRef
extends Identifiable {
    public ExecutionOrderConstraint getExecutionOrderConstraint();

    public void setExecutionOrderConstraint(ExecutionOrderConstraint var1);

    public ComponentInCompositionInstanceRef getComponent();

    public void setComponent(ComponentInCompositionInstanceRef var1);

    public ExecutableEntity getExecutable();

    public void setExecutable(ExecutableEntity var1);

    public EList<EOCExecutableEntityRef> getSuccessors();
}

