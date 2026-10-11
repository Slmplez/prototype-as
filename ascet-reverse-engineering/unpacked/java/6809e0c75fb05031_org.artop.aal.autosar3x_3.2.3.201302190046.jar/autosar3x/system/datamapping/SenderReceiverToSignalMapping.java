/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.system.datamapping.DataMapping;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SenderReceiverToSignalMapping
extends DataMapping {
    public SenderReceiverToSignalMappingDataElement getDataElement();

    public void setDataElement(SenderReceiverToSignalMappingDataElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

