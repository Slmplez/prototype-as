/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventTriggeringConstraint;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConcretePatternEventTriggering
extends EventTriggeringConstraint {
    public EList<MultidimensionalTime> getOffsets();

    public MultidimensionalTime getPatternLength();

    public void setPatternLength(MultidimensionalTime var1);
}

