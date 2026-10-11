/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;

public interface CommProtocolFrameRoleProtocolElement
extends ARObject {
    public CommProtocolFrameRole getCommProtocolFrameRole();

    public void setCommProtocolFrameRole(CommProtocolFrameRole var1);

    public CommProtocolInstance getCommProtocolInstance();

    public void setCommProtocolInstance(CommProtocolInstance var1);

    public CommProtocolElement getProtocolElement();

    public void setProtocolElement(CommProtocolElement var1);
}

