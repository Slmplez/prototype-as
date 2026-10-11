/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;

public interface PduToFrameMapping
extends Identifiable {
    public Frame getFrame();

    public void setFrame(Frame var1);

    public ByteOrderEnum getPackingByteOrder();

    public void setPackingByteOrder(ByteOrderEnum var1);

    public void unsetPackingByteOrder();

    public boolean isSetPackingByteOrder();

    public Pdu getPdu();

    public void setPdu(Pdu var1);

    public Integer getStartPosition();

    public void setStartPosition(Integer var1);

    public void unsetStartPosition();

    public boolean isSetStartPosition();

    public Integer getUpdateIndicationBitPosition();

    public void setUpdateIndicationBitPosition(Integer var1);

    public void unsetUpdateIndicationBitPosition();

    public boolean isSetUpdateIndicationBitPosition();
}

