/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.filter;

import autosar3x.commonstructure.filter.DataFilter;

public interface MaskedNewDiffersMaskedOld
extends DataFilter {
    public Integer getMask();

    public void setMask(Integer var1);

    public void unsetMask();

    public boolean isSetMask();
}

