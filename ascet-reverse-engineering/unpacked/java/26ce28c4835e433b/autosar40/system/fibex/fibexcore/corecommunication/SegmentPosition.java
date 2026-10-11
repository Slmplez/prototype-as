/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SegmentPosition
extends ARObject {
    public MultiplexedPart getMultiplexedPart();

    public void setMultiplexedPart(MultiplexedPart var1);

    public ByteOrderEnum getSegmentByteOrder();

    public void setSegmentByteOrder(ByteOrderEnum var1);

    public void unsetSegmentByteOrder();

    public boolean isSetSegmentByteOrder();

    public Integer getSegmentLength();

    public void setSegmentLength(Integer var1);

    public void unsetSegmentLength();

    public boolean isSetSegmentLength();

    public Integer getSegmentPosition();

    public void setSegmentPosition(Integer var1);

    public void unsetSegmentPosition();

    public boolean isSetSegmentPosition();

    public IntegerDatatype getSegmentLengthData();

    public void setSegmentLengthData(IntegerDatatype var1);

    public IntegerDatatype getSegmentPositionData();

    public void setSegmentPositionData(IntegerDatatype var1);
}

