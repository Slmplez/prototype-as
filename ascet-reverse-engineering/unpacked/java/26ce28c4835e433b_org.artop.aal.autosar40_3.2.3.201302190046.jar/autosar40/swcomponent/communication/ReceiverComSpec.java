/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.swcomponent.communication.HandleOutOfRangeStatusEnum;
import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;

public interface ReceiverComSpec
extends RPortComSpec,
GReceiverComSpec {
    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public AutosarDataPrototype getExternalReplacement();

    public void setExternalReplacement(AutosarDataPrototype var1);

    public HandleOutOfRangeEnum getHandleOutOfRange();

    public void setHandleOutOfRange(HandleOutOfRangeEnum var1);

    public void unsetHandleOutOfRange();

    public boolean isSetHandleOutOfRange();

    public HandleOutOfRangeStatusEnum getHandleOutOfRangeStatus();

    public void setHandleOutOfRangeStatus(HandleOutOfRangeStatusEnum var1);

    public void unsetHandleOutOfRangeStatus();

    public boolean isSetHandleOutOfRangeStatus();

    public PositiveIntegerValueVariationPoint getMaxDeltaCounterInit();

    public void setMaxDeltaCounterInit(PositiveIntegerValueVariationPoint var1);

    public SwDataDefProps getNetworkRepresentation();

    public void setNetworkRepresentation(SwDataDefProps var1);

    public BooleanValueVariationPoint getUsesEndToEndProtection();

    public void setUsesEndToEndProtection(BooleanValueVariationPoint var1);
}

