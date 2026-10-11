/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface BaseTypeAbsSize
extends BaseTypeSizeDefinition,
GBaseTypeAbsSize {
    public Integer getBaseTypeSize();

    public void setBaseTypeSize(Integer var1);

    public void unsetBaseTypeSize();

    public boolean isSetBaseTypeSize();

    public IntegerDatatype getBaseTypeSizeData();

    public void setBaseTypeSizeData(IntegerDatatype var1);
}

