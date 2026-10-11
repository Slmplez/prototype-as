/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalGroupRoleProtocolElement;
import autosar21.system.systemsignal.SystemSignalGroup;

public interface CommProtocolSignalGroupRole
extends Identifiable {
    public CommProtocolInstance getCommProtocolInstance();

    public void setCommProtocolInstance(CommProtocolInstance var1);

    public CommProtocolSignalGroupRoleProtocolElement getProtocolElement();

    public void setProtocolElement(CommProtocolSignalGroupRoleProtocolElement var1);

    public SystemSignalGroup getSignalGroupInstance();

    public void setSignalGroupInstance(SystemSignalGroup var1);
}

