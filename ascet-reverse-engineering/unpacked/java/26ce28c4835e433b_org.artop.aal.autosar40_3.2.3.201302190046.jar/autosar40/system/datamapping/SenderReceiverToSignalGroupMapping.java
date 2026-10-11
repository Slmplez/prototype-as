/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.system.datamapping.DataMapping;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;

public interface SenderReceiverToSignalGroupMapping
extends DataMapping {
    public VariableDataPrototypeInSystemInstanceRef getDataElement();

    public void setDataElement(VariableDataPrototypeInSystemInstanceRef var1);

    public SystemSignalGroup getSignalGroup();

    public void setSignalGroup(SystemSignalGroup var1);

    public SenderRecCompositeTypeMapping getTypeMapping();

    public void setTypeMapping(SenderRecCompositeTypeMapping var1);
}

