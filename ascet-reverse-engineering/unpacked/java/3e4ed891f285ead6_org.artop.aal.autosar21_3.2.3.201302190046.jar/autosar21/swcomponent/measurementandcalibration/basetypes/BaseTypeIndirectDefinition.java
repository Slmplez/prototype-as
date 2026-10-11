/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;

public interface BaseTypeIndirectDefinition
extends BaseTypeDefinition {
    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);
}

