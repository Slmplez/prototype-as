/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.signalpaths.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.signalpaths.PermissibleSignalPath;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface PermissibleSignalPathEcuCommunicationPort
extends ARObject {
    public PermissibleSignalPath getPermissibleSignalPath();

    public void setPermissibleSignalPath(PermissibleSignalPath var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUCommunicationPortInstance getEcuCommunicationPort();

    public void setEcuCommunicationPort(ECUCommunicationPortInstance var1);
}

