/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.system.datamapping.DataMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;

public interface SenderReceiverToSignalMapping
extends DataMapping {
    public VariableDataPrototypeInSystemInstanceRef getDataElement();

    public void setDataElement(VariableDataPrototypeInSystemInstanceRef var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

