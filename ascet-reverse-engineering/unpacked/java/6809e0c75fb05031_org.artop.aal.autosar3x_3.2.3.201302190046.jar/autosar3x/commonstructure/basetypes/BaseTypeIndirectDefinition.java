/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.SwBaseType;

public interface BaseTypeIndirectDefinition
extends BaseTypeDefinition {
    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);
}

