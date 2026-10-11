/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.filter;

import autosar3x.commonstructure.filter.DataFilter;

public interface OneEveryN
extends DataFilter {
    public Integer getOffset();

    public void setOffset(Integer var1);

    public void unsetOffset();

    public boolean isSetOffset();

    public Integer getPeriod();

    public void setPeriod(Integer var1);

    public void unsetPeriod();

    public boolean isSetPeriod();
}

