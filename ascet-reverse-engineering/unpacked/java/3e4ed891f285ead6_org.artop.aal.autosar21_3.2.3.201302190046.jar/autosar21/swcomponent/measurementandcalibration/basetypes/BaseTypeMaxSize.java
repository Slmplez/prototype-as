/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeSizeDefintion;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;

public interface BaseTypeMaxSize
extends BaseTypeSizeDefintion,
GBaseTypeMaxSize {
    public String getMaxBaseTypeSize();

    public void setMaxBaseTypeSize(String var1);

    public void unsetMaxBaseTypeSize();

    public boolean isSetMaxBaseTypeSize();
}

