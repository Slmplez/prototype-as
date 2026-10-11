/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;

public interface BaseTypeMaxSize
extends BaseTypeSizeDefinition,
GBaseTypeMaxSize {
    public Integer getMaxBaseTypeSize();

    public void setMaxBaseTypeSize(Integer var1);

    public void unsetMaxBaseTypeSize();

    public boolean isSetMaxBaseTypeSize();
}

