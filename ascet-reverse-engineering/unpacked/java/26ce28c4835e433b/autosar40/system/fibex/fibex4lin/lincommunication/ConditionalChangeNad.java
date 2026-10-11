/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ConditionalChangeNad
extends LinConfigurationEntry {
    public Integer getByte();

    public void setByte(Integer var1);

    public void unsetByte();

    public boolean isSetByte();

    public Long getId();

    public void setId(Long var1);

    public void unsetId();

    public boolean isSetId();

    public Integer getInvert();

    public void setInvert(Integer var1);

    public void unsetInvert();

    public boolean isSetInvert();

    public Integer getMask();

    public void setMask(Integer var1);

    public void unsetMask();

    public boolean isSetMask();

    public Integer getNewNad();

    public void setNewNad(Integer var1);

    public void unsetNewNad();

    public boolean isSetNewNad();

    public IntegerDatatype getByteData();

    public void setByteData(IntegerDatatype var1);

    public PositiveIntegerDatatype getIdData();

    public void setIdData(PositiveIntegerDatatype var1);

    public IntegerDatatype getInvertData();

    public void setInvertData(IntegerDatatype var1);

    public IntegerDatatype getMaskData();

    public void setMaskData(IntegerDatatype var1);

    public IntegerDatatype getNewNadData();

    public void setNewNadData(IntegerDatatype var1);
}

