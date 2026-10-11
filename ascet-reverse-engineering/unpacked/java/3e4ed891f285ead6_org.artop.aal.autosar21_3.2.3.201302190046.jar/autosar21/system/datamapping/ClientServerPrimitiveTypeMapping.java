/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.datamapping;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.instanceref.ClientServerPrimitiveTypeMappingArgument;
import autosar21.system.systemsignal.SystemSignal;

public interface ClientServerPrimitiveTypeMapping
extends ARObject {
    public ClientServerToSignalGroupMapping getClientServerToSignalGroupMapping();

    public void setClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping var1);

    public ClientServerPrimitiveTypeMappingArgument getArgument();

    public void setArgument(ClientServerPrimitiveTypeMappingArgument var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);
}

