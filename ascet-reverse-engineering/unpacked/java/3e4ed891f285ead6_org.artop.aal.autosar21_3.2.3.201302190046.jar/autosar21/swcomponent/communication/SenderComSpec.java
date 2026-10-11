/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;

public interface SenderComSpec
extends PPortComSpec,
GSenderComSpec {
    public SenderComSpecDataElement getDataElement();

    public void setDataElement(SenderComSpecDataElement var1);

    public TransmissionAcknowledgementRequest getTransmissionAcknowledge();

    public void setTransmissionAcknowledge(TransmissionAcknowledgementRequest var1);
}

