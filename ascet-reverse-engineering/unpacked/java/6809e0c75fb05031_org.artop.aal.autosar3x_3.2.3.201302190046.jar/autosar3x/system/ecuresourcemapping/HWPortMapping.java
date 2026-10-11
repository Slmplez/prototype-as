/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.ecuresourcemapping;

import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface HWPortMapping
extends ARObject {
    public ECUMapping getECUMapping();

    public void setECUMapping(ECUMapping var1);

    public CommunicationConnector getCommunicationConnector();

    public void setCommunicationConnector(CommunicationConnector var1);

    public ECUCommunicationPort getEcuCommunicationPort();

    public void setEcuCommunicationPort(ECUCommunicationPort var1);
}

