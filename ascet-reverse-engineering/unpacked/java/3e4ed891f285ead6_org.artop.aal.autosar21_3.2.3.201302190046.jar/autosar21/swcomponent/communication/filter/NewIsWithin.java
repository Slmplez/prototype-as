/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.filter;

import autosar21.swcomponent.communication.filter.DataFilter;

public interface NewIsWithin
extends DataFilter {
    public Integer getMax();

    public void setMax(Integer var1);

    public void unsetMax();

    public boolean isSetMax();

    public Integer getMin();

    public void setMin(Integer var1);

    public void unsetMin();

    public boolean isSetMin();
}

