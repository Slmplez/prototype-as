/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedPart;

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
}

