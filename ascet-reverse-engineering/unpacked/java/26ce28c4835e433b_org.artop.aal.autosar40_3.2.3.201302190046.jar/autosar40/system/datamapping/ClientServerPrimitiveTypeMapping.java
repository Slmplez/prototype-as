/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.datamapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.system.datamapping.ClientServerToSignalGroupMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;

public interface ClientServerPrimitiveTypeMapping
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public ArgumentDataPrototype getArgument();

    public void setArgument(ArgumentDataPrototype var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

