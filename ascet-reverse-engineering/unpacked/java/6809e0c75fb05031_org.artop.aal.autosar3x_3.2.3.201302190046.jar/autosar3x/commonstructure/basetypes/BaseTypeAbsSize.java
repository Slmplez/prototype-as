/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;

public interface BaseTypeAbsSize
extends BaseTypeSizeDefinition,
GBaseTypeAbsSize {
    public Integer getBaseTypeSize();

    public void setBaseTypeSize(Integer var1);

    public void unsetBaseTypeSize();

    public boolean isSetBaseTypeSize();
}

