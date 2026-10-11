/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.datamapping;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.portinterface.ArgumentPrototype;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerPrimitiveTypeMapping
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public ArgumentPrototype getArgument();

    public void setArgument(ArgumentPrototype var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

