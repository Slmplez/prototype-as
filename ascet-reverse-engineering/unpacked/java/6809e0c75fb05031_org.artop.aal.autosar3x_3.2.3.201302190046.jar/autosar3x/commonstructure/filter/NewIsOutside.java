/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.filter;

import autosar3x.commonstructure.filter.DataFilter;

public interface NewIsOutside
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

