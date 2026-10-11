/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gcommonstructure.gbasetypes.GBaseType;

public interface BaseType
extends ARElement,
GBaseType {
    public BaseTypeDefinition getBaseTypeDefinitionType();

    public void setBaseTypeDefinitionType(BaseTypeDefinition var1);
}

