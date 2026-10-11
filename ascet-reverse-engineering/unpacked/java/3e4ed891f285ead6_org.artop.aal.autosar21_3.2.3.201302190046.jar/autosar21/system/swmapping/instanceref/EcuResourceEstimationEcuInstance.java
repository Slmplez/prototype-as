/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.swmapping.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.topology.ECUInstance;

public interface EcuResourceEstimationEcuInstance
extends ARObject {
    public EcuResourceEstimation getEcuResourceEstimation();

    public void setEcuResourceEstimation(EcuResourceEstimation var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUInstance getEcuInstance();

    public void setEcuInstance(ECUInstance var1);
}

