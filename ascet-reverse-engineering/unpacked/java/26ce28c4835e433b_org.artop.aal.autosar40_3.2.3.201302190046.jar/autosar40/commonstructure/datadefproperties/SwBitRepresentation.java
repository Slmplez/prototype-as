/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SwBitRepresentation
extends ARObject {
    public SwDataDefPropsContent getSwDataDefPropsContent();

    public void setSwDataDefPropsContent(SwDataDefPropsContent var1);

    public Integer getBitPosition();

    public void setBitPosition(Integer var1);

    public void unsetBitPosition();

    public boolean isSetBitPosition();

    public Integer getNumberOfBits();

    public void setNumberOfBits(Integer var1);

    public void unsetNumberOfBits();

    public boolean isSetNumberOfBits();

    public IntegerDatatype getBitPositionData();

    public void setBitPositionData(IntegerDatatype var1);

    public IntegerDatatype getNumberOfBitsData();

    public void setNumberOfBitsData(IntegerDatatype var1);
}

