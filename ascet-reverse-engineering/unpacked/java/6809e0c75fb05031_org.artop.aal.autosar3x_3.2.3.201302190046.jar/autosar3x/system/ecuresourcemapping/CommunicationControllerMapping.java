/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.ecuresourcemapping;

import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.ecuresourcemapping.ECUMapping;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;

public interface CommunicationControllerMapping
extends ARObject {
    public ECUMapping getECUMapping();

    public void setECUMapping(ECUMapping var1);

    public CommunicationController getCommunicationController();

    public void setCommunicationController(CommunicationController var1);

    public CommunicationPeripheral getCommunicationPeripheral();

    public void setCommunicationPeripheral(CommunicationPeripheral var1);
}

