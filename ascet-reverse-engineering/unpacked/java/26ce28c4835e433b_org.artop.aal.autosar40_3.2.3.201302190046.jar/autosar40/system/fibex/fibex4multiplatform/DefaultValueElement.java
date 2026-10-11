/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface DefaultValueElement
extends ARObject {
    public PduMappingDefaultValue getPduMappingDefaultValue();

    public void setPduMappingDefaultValue(PduMappingDefaultValue var1);

    public Integer getElementByteValue();

    public void setElementByteValue(Integer var1);

    public void unsetElementByteValue();

    public boolean isSetElementByteValue();

    public Integer getElementPosition();

    public void setElementPosition(Integer var1);

    public void unsetElementPosition();

    public boolean isSetElementPosition();

    public IntegerDatatype getElementByteValueData();

    public void setElementByteValueData(IntegerDatatype var1);

    public IntegerDatatype getElementPositionData();

    public void setElementPositionData(IntegerDatatype var1);
}

