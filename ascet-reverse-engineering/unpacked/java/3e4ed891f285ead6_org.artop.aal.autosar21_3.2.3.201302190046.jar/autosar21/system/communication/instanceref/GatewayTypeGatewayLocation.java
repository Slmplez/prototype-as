/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.communication.GatewayType;
import autosar21.system.topology.ECUInstance;

public interface GatewayTypeGatewayLocation
extends ARObject {
    public GatewayType getGatewayType();

    public void setGatewayType(GatewayType var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUInstance getGatewayLocation();

    public void setGatewayLocation(ECUInstance var1);
}

