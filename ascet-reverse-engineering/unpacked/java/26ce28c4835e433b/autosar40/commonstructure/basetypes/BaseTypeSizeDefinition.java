/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;

public interface BaseTypeSizeDefinition
extends ARObject,
GBaseTypeSizeDefinition {
    public BaseTypeDirectDefinition getBaseTypeDirectDefinition();

    public void setBaseTypeDirectDefinition(BaseTypeDirectDefinition var1);
}

