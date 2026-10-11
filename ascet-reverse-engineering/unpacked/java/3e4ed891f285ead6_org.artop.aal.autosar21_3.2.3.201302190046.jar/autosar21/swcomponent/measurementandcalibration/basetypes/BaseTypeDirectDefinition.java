/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition
 */
package autosar21.swcomponent.measurementandcalibration.basetypes;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeSizeDefintion;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteOrder;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;

public interface BaseTypeDirectDefinition
extends BaseTypeDefinition,
GBaseTypeDirectDefinition {
    public BaseTypeSizeDefintion getBaseTypeSizeDefintionType();

    public void setBaseTypeSizeDefintionType(BaseTypeSizeDefintion var1);

    public String getBaseTypeEncoding();

    public void setBaseTypeEncoding(String var1);

    public void unsetBaseTypeEncoding();

    public boolean isSetBaseTypeEncoding();

    public String getMemAlignment();

    public void setMemAlignment(String var1);

    public void unsetMemAlignment();

    public boolean isSetMemAlignment();

    public ByteOrder getByteOrder();

    public void setByteOrder(ByteOrder var1);
}

