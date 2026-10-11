/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.localconstraints.IntervalTypeEnum;
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

