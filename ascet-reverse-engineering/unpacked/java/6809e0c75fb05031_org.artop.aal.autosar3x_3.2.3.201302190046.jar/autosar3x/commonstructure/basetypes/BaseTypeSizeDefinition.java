/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;

public interface BaseTypeSizeDefinition
extends ARObject,
GBaseTypeSizeDefinition {
    public BaseTypeDirectDefinition getBaseTypeDirectDefinition();

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition var1);
}

