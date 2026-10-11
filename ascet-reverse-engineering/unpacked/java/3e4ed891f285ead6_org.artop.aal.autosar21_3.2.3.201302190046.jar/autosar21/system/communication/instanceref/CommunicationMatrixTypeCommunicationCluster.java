/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.topology.CommunicationCluster;

public interface CommunicationMatrixTypeCommunicationCluster
extends ARObject {
    public CommunicationMatrixType getCommunicationMatrixType();

    public void setCommunicationMatrixType(CommunicationMatrixType var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public CommunicationCluster getCommunicationCluster();

    public void setCommunicationCluster(CommunicationCluster var1);
}

