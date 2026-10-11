/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communicationprotocol.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.Frame;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;

public interface CommProtocolFrameRoleFrameInstance
extends ARObject {
    public CommProtocolFrameRole getCommProtocolFrameRole();

    public void setCommProtocolFrameRole(CommProtocolFrameRole var1);

    public CommunicationMatrixInstance getCommunicationMatrix();

    public void setCommunicationMatrix(CommunicationMatrixInstance var1);

    public Frame getFrameInstance();

    public void setFrameInstance(Frame var1);
}

