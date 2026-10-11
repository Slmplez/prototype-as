/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface BaseTypeMaxSize
extends BaseTypeSizeDefinition,
GBaseTypeMaxSize {
    public Integer getMaxBaseTypeSize();

    public void setMaxBaseTypeSize(Integer var1);

    public void unsetMaxBaseTypeSize();

    public boolean isSetMaxBaseTypeSize();

    public IntegerDatatype getMaxBaseTypeSizeData();

    public void setMaxBaseTypeSizeData(IntegerDatatype var1);
}

