/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.system.datamapping.DataMapping;
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar21.system.systemsignal.SystemSignalGroup;

public interface SenderReceiverToSignalGroupMapping
extends DataMapping {
    public SenderReceiverToSignalGroupMappingDataElement getDataElement();

    public void setDataElement(SenderReceiverToSignalGroupMappingDataElement var1);

    public SystemSignalGroup getSignalGroup();

    public void setSignalGroup(SystemSignalGroup var1);

    public SenderRecCompositeTypeMapping getTypeMapping();

    public void setTypeMapping(SenderRecCompositeTypeMapping var1);
}

