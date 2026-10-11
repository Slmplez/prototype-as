/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface CommunicationConnectorRefConditional
extends ARObject {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public CommunicationConnector getCommunicationConnector();

    public void setCommunicationConnector(CommunicationConnector var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

