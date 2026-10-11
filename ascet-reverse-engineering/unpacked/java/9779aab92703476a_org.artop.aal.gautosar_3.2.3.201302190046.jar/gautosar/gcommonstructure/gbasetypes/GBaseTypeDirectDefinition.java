/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gcommonstructure.gbasetypes;

import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GByteOrderEnum;

public interface GBaseTypeDirectDefinition
extends GBaseTypeDefinition {
    public GBaseTypeSizeDefinition gGetBaseTypeSizeDefinitionType();

    public void gSetBaseTypeSizeDefinitionType(GBaseTypeSizeDefinition var1);

    public String gGetBaseTypeEncoding();

    public void gSetBaseTypeEncoding(String var1);

    public void gUnsetBaseTypeEncoding();

    public boolean gIsSetBaseTypeEncoding();

    public Integer gGetMemAlignment();

    public void gSetMemAlignment(Integer var1);

    public void gUnsetMemAlignment();

    public boolean gIsSetMemAlignment();

    public GByteOrderEnum gGetByteOrder();

    public void gSetByteOrder(GByteOrderEnum var1);

    public void gUnsetByteOrder();

    public boolean gIsSetByteOrder();
}

