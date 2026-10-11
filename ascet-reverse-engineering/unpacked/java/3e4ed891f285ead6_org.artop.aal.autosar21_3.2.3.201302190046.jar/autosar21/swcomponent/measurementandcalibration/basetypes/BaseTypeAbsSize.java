/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeSizeDefintion;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;

public interface BaseTypeAbsSize
extends BaseTypeSizeDefintion,
GBaseTypeAbsSize {
    public String getBaseTypeSize();

    public void setBaseTypeSize(String var1);

    public void unsetBaseTypeSize();

    public boolean isSetBaseTypeSize();
}

