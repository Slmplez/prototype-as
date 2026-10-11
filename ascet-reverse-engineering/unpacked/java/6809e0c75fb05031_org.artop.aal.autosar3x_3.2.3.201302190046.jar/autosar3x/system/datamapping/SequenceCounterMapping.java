/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface SequenceCounterMapping
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

