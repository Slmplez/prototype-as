/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;

public interface BaseTypeSizeDefintion
extends ARObject,
GBaseTypeSizeDefinition {
    public BaseTypeDirectDefinition getBaseTypeDirectDefinition();

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition var1);
}

