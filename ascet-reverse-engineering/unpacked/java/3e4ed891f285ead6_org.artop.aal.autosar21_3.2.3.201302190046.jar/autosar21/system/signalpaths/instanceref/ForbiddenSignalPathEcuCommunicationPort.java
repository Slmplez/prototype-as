/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.signalpaths.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.signalpaths.ForbiddenSignalPath;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface ForbiddenSignalPathEcuCommunicationPort
extends ARObject {
    public ForbiddenSignalPath getForbiddenSignalPath();

    public void setForbiddenSignalPath(ForbiddenSignalPath var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUCommunicationPortInstance getEcuCommunicationPort();

    public void setEcuCommunicationPort(ECUCommunicationPortInstance var1);
}

