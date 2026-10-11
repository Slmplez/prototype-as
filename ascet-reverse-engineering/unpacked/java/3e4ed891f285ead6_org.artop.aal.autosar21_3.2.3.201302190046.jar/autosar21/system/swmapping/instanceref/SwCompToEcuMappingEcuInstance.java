/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.topology.ECUInstance;

public interface SwCompToEcuMappingEcuInstance
extends ARObject {
    public SwCompToEcuMapping getSwCompToEcuMapping();

    public void setSwCompToEcuMapping(SwCompToEcuMapping var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUInstance getEcuInstance();

    public void setEcuInstance(ECUInstance var1);
}

