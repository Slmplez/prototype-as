/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;

public interface ARLimit
extends ARObject,
GARLimit {
    public IntervalTypeEnum getIntervalType();

    public void setIntervalType(IntervalTypeEnum var1);

    public void unsetIntervalType();

    public boolean isSetIntervalType();

    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

