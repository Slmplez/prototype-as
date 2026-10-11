/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeDefinition;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import gautosar.gcommonstructure.gbasetypes.GBaseType;

public interface BaseType
extends ARElement,
GBaseType {
    public BaseTypeDefinition getBaseTypeDefinition();

    public void setBaseTypeDefinition(BaseTypeDefinition var1);
}

