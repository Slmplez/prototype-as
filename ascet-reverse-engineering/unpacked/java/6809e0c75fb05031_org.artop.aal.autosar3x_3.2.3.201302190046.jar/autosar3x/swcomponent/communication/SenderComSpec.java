/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;

public interface SenderComSpec
extends PPortComSpec,
GSenderComSpec {
    public DataElementPrototype getDataElement();

    public void setDataElement(DataElementPrototype var1);

    public TransmissionAcknowledgementRequest getTransmissionAcknowledge();

    public void setTransmissionAcknowledge(TransmissionAcknowledgementRequest var1);

    public Boolean getUsesEndToEndProtection();

    public void setUsesEndToEndProtection(Boolean var1);

    public void unsetUsesEndToEndProtection();

    public boolean isSetUsesEndToEndProtection();
}

