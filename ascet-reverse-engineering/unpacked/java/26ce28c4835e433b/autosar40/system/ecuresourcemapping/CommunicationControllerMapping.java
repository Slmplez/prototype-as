/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.ecuresourcemapping;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;

public interface CommunicationControllerMapping
extends ARObject {
    public ECUMapping getECUMapping();

    public void setECUMapping(ECUMapping var1);

    public CommunicationController getCommunicationController();

    public void setCommunicationController(CommunicationController var1);

    public HwElement getHwCommunicationController();

    public void setHwCommunicationController(HwElement var1);
}

