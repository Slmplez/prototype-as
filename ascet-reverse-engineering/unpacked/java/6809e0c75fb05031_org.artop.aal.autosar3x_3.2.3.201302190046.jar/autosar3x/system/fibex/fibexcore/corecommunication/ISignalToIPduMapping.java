/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;

public interface ISignalToIPduMapping
extends Identifiable {
    public ByteOrderEnum getPackingByteOrder();

    public void setPackingByteOrder(ByteOrderEnum var1);

    public void unsetPackingByteOrder();

    public boolean isSetPackingByteOrder();

    public ISignal getSignal();

    public void setSignal(ISignal var1);

    public Integer getStartPosition();

    public void setStartPosition(Integer var1);

    public void unsetStartPosition();

    public boolean isSetStartPosition();

    public TransferPropertyEnum getTransferProperty();

    public void setTransferProperty(TransferPropertyEnum var1);

    public void unsetTransferProperty();

    public boolean isSetTransferProperty();

    public Integer getUpdateIndicationBitPosition();

    public void setUpdateIndicationBitPosition(Integer var1);

    public void unsetUpdateIndicationBitPosition();

    public boolean isSetUpdateIndicationBitPosition();
}

