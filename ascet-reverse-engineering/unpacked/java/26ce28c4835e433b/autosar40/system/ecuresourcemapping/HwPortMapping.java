/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.ecuresourcemapping;

import autosar40.ecuresource.HwPinGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface HwPortMapping
extends ARObject {
    public ECUMapping getECUMapping();

    public void setECUMapping(ECUMapping var1);

    public CommunicationConnector getCommunicationConnector();

    public void setCommunicationConnector(CommunicationConnector var1);

    public HwPinGroup getHwCommunicationPort();

    public void setHwCommunicationPort(HwPinGroup var1);
}

