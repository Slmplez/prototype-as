/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SynchronizationTimingConstraint
extends TimingConstraint {
    public EList<TimingDescriptionEventChain> getScopes();

    public SynchronizationTypeEnum getSynchronizationConstraintType();

    public void setSynchronizationConstraintType(SynchronizationTypeEnum var1);

    public void unsetSynchronizationConstraintType();

    public boolean isSetSynchronizationConstraintType();

    public MultidimensionalTime getTolerance();

    public void setTolerance(MultidimensionalTime var1);
}

