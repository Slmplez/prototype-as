/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.system.datamapping.DataMapping;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar21.system.systemsignal.SystemSignal;

public interface SenderReceiverToSignalMapping
extends DataMapping {
    public SenderReceiverToSignalMappingDataElement getDataElement();

    public void setDataElement(SenderReceiverToSignalMappingDataElement var1);

    public SystemSignal getSignal();

    public void setSignal(SystemSignal var1);
}

