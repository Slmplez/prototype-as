/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.filter;

import autosar21.swcomponent.communication.filter.DataFilter;

public interface MaskedNewDiffersX
extends DataFilter {
    public Integer getMask();

    public void setMask(Integer var1);

    public void unsetMask();

    public boolean isSetMask();

    public Integer getX();

    public void setX(Integer var1);

    public void unsetX();

    public boolean isSetX();
}

