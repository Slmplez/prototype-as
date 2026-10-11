/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface SignalIPduCounter
extends ARObject {
    public ISignalIPdu getISignalIPdu();

    public void setISignalIPdu(ISignalIPdu var1);

    public Integer getPduCounterSize();

    public void setPduCounterSize(Integer var1);

    public void unsetPduCounterSize();

    public boolean isSetPduCounterSize();

    public Integer getPduCounterStartPosition();

    public void setPduCounterStartPosition(Integer var1);

    public void unsetPduCounterStartPosition();

    public boolean isSetPduCounterStartPosition();

    public Integer getPduCounterThreshold();

    public void setPduCounterThreshold(Integer var1);

    public void unsetPduCounterThreshold();

    public boolean isSetPduCounterThreshold();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getPduCounterSizeData();

    public void setPduCounterSizeData(IntegerDatatype var1);

    public IntegerDatatype getPduCounterStartPositionData();

    public void setPduCounterStartPositionData(IntegerDatatype var1);

    public IntegerDatatype getPduCounterThresholdData();

    public void setPduCounterThresholdData(IntegerDatatype var1);
}

