/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventTriggeringConstraint;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface BurstPatternEventTriggering
extends EventTriggeringConstraint {
    public Long getMaxNumberOfOccurrences();

    public void setMaxNumberOfOccurrences(Long var1);

    public void unsetMaxNumberOfOccurrences();

    public boolean isSetMaxNumberOfOccurrences();

    public MultidimensionalTime getMinimumInterArrivalTime();

    public void setMinimumInterArrivalTime(MultidimensionalTime var1);

    public MultidimensionalTime getPatternJitter();

    public void setPatternJitter(MultidimensionalTime var1);

    public MultidimensionalTime getPatternLength();

    public void setPatternLength(MultidimensionalTime var1);

    public MultidimensionalTime getPatternPeriod();

    public void setPatternPeriod(MultidimensionalTime var1);

    public Long getMinNumberOfOccurrences();

    public void setMinNumberOfOccurrences(Long var1);

    public void unsetMinNumberOfOccurrences();

    public boolean isSetMinNumberOfOccurrences();

    public PositiveIntegerDatatype getMinNumberOfOccurrencesData();

    public void setMinNumberOfOccurrencesData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getMaxNumberOfOccurrencesData();

    public void setMaxNumberOfOccurrencesData(PositiveIntegerDatatype var1);
}

