/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.basetypes;

import autosar40.commonstructure.basetypes.BaseTypeDefinition;
import autosar40.commonstructure.basetypes.BaseTypeSizeDefinition;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import org.artop.aal.common.datatypes.IntegerDatatype;

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

    public ByteOrderEnum getByteOrder();

    public void setByteOrder(ByteOrderEnum var1);

    public void unsetByteOrder();

    public boolean isSetByteOrder();

    public String getNativeDeclaration();

    public void setNativeDeclaration(String var1);

    public void unsetNativeDeclaration();

    public boolean isSetNativeDeclaration();

    public IntegerDatatype getMemAlignmentData();

    public void setMemAlignmentData(IntegerDatatype var1);
}

