/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.swcomponent.communication.PPortComSpec;
import autosar40.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;

public interface SenderComSpec
extends PPortComSpec,
GSenderComSpec {
    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public HandleOutOfRangeEnum getHandleOutOfRange();

    public void setHandleOutOfRange(HandleOutOfRangeEnum var1);

    public void unsetHandleOutOfRange();

    public boolean isSetHandleOutOfRange();

    public SwDataDefProps getNetworkRepresentation();

    public void setNetworkRepresentation(SwDataDefProps var1);

    public TransmissionAcknowledgementRequest getTransmissionAcknowledge();

    public void setTransmissionAcknowledge(TransmissionAcknowledgementRequest var1);

    public BooleanValueVariationPoint getUsesEndToEndProtection();

    public void setUsesEndToEndProtection(BooleanValueVariationPoint var1);
}

