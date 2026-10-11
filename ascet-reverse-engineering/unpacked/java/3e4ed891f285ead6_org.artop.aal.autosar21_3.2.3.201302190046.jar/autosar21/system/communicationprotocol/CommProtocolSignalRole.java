/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalRoleProtocolElement;
import autosar21.system.systemsignal.SystemSignal;

public interface CommProtocolSignalRole
extends Identifiable {
    public CommProtocolInstance getCommProtocolInstance();

    public void setCommProtocolInstance(CommProtocolInstance var1);

    public CommProtocolSignalRoleProtocolElement getProtocolElement();

    public void setProtocolElement(CommProtocolSignalRoleProtocolElement var1);

    public SystemSignal getSignalInstance();

    public void setSignalInstance(SystemSignal var1);
}

