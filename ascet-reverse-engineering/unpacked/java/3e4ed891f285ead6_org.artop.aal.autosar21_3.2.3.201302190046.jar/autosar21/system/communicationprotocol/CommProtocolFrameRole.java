/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;

public interface CommProtocolFrameRole
extends Identifiable {
    public CommProtocolInstance getCommProtocolInstance();

    public void setCommProtocolInstance(CommProtocolInstance var1);

    public CommProtocolFrameRoleFrameInstance getFrameInstance();

    public void setFrameInstance(CommProtocolFrameRoleFrameInstance var1);

    public CommProtocolFrameRoleProtocolElement getProtocolElement();

    public void setProtocolElement(CommProtocolFrameRoleProtocolElement var1);
}

