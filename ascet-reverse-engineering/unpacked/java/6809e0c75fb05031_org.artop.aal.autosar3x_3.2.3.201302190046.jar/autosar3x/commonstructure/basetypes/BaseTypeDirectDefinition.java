/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeSizeDefinition;
import autosar3x.commonstructure.byteorder.ByteOrder;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;

public interface BaseTypeDirectDefinition
extends BaseTypeDefinition,
GBaseTypeDirectDefinition {
    public BaseTypeSizeDefinition getBaseTypeSizeDefintionType();

    public void setBaseTypeSizeDefintionType(BaseTypeSizeDefinition var1);

    public String getBaseTypeEncoding();

    public void setBaseTypeEncoding(String var1);

    public void unsetBaseTypeEncoding();

    public boolean isSetBaseTypeEncoding();

    public Integer getMemAlignment();

    public void setMemAlignment(Integer var1);

    public void unsetMemAlignment();

    public boolean isSetMemAlignment();

    public ByteOrder getByteOrder();

    public void setByteOrder(ByteOrder var1);
}

