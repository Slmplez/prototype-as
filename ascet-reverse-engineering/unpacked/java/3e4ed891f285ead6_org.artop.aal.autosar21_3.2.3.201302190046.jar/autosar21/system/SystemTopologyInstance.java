/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.System;
import autosar21.system.topology.SystemTopologyType;

public interface SystemTopologyInstance
extends Identifiable {
    public System getSystem();

    public void setSystem(System var1);

    public SystemTopologyType getTopology();

    public void setTopology(SystemTopologyType var1);
}

