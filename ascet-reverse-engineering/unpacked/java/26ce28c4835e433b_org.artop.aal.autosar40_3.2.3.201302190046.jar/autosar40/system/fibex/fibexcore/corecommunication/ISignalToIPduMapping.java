/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface ISignalToIPduMapping
extends Identifiable {
    public ISignalGroup getISignalGroup();

    public void setISignalGroup(ISignalGroup var1);

    public ISignal getISignal();

    public void setISignal(ISignal var1);

    public ByteOrderEnum getPackingByteOrder();

    public void setPackingByteOrder(ByteOrderEnum var1);

    public void unsetPackingByteOrder();

    public boolean isSetPackingByteOrder();

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

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getStartPositionData();

    public void setStartPositionData(IntegerDatatype var1);

    public IntegerDatatype getUpdateIndicationBitPositionData();

    public void setUpdateIndicationBitPositionData(IntegerDatatype var1);
}

