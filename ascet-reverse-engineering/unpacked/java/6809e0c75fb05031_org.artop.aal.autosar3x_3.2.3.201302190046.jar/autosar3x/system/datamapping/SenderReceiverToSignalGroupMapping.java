/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.system.datamapping.DataMapping;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignalGroup;

public interface SenderReceiverToSignalGroupMapping
extends DataMapping {
    public SenderReceiverToSignalGroupMappingDataElement getDataElement();

    public void setDataElement(SenderReceiverToSignalGroupMappingDataElement var1);

    public SystemSignalGroup getSignalGroup();

    public void setSignalGroup(SystemSignalGroup var1);

    public SenderRecCompositeTypeMapping getTypeMapping();

    public void setTypeMapping(SenderRecCompositeTypeMapping var1);
}

