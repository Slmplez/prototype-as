/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.systemsignal.SystemSignal;

public interface EmptySignalMapping
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

