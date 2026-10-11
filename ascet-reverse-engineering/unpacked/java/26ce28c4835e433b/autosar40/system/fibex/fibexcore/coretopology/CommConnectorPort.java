/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface CommConnectorPort
extends Identifiable {
    public CommunicationConnector getCommunicationConnector();

    public void setCommunicationConnector(CommunicationConnector var1);

    public CommunicationDirectionType getCommunicationDirection();

    public void setCommunicationDirection(CommunicationDirectionType var1);

    public void unsetCommunicationDirection();

    public boolean isSetCommunicationDirection();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

