/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.communication.Frame;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface FrameTransmitter
extends ARObject {
    public Frame getFrame();

    public void setFrame(Frame var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUCommunicationPortInstance getEcuCommunicationPortInstance();

    public void setEcuCommunicationPortInstance(ECUCommunicationPortInstance var1);
}

