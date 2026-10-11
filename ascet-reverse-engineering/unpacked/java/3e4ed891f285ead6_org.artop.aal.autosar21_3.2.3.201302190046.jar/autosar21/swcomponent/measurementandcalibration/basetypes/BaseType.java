/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseType;

public interface BaseType
extends ARElement,
GBaseType {
    public BaseTypeDefinition getBaseTypeDefinitionType();

    public void setBaseTypeDefinitionType(BaseTypeDefinition var1);
}

