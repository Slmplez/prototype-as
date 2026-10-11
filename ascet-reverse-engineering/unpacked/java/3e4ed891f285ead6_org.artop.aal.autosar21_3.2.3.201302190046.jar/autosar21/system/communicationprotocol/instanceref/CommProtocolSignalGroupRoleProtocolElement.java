/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;

public interface CommProtocolSignalGroupRoleProtocolElement
extends ARObject {
    public CommProtocolSignalGroupRole getCommProtocolSignalGroupRole();

    public void setCommProtocolSignalGroupRole(CommProtocolSignalGroupRole var1);

    public CommProtocolInstance getCommProtocolInstance();

    public void setCommProtocolInstance(CommProtocolInstance var1);

    public CommProtocolElement getCommProtocolElement();

    public void setCommProtocolElement(CommProtocolElement var1);
}

