/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.filter;

import autosar21.swcomponent.communication.filter.DataFilter;

public interface OneEveryN
extends DataFilter {
    public Integer getOccurrence();

    public void setOccurrence(Integer var1);

    public void unsetOccurrence();

    public boolean isSetOccurrence();

    public Integer getOffset();

    public void setOffset(Integer var1);

    public void unsetOffset();

    public boolean isSetOffset();

    public Integer getPeriod();

    public void setPeriod(Integer var1);

    public void unsetPeriod();

    public boolean isSetPeriod();
}

