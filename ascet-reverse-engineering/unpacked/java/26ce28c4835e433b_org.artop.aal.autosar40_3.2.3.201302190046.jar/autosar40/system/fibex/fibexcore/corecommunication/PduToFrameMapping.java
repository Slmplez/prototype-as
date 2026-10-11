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
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import org.artop.aal.common.datatypes.IntegerDatatype;

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

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getStartPositionData();

    public void setStartPositionData(IntegerDatatype var1);

    public IntegerDatatype getUpdateIndicationBitPositionData();

    public void setUpdateIndicationBitPositionData(IntegerDatatype var1);
}

