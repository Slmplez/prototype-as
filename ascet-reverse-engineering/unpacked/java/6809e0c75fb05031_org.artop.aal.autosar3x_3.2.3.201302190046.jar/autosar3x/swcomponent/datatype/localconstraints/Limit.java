/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 */
package autosar3x.swcomponent.datatype.localconstraints;

import autosar3x.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar3x.swcomponent.datatype.valuemodel.ValueByFormula;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;

public interface Limit
extends ValueByFormula,
GLimit {
    public IntervalTypeEnum getIntervalType();

    public void setIntervalType(IntervalTypeEnum var1);

    public void unsetIntervalType();

    public boolean isSetIntervalType();
}

