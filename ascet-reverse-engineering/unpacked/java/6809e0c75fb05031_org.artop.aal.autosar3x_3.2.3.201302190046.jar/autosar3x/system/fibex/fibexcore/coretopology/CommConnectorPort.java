/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface CommConnectorPort
extends Identifiable {
    public CommunicationConnector getCommunicationConnector();

    public void setCommunicationConnector(CommunicationConnector var1);

    public CommunicationDirectionType getCommunicationDirection();

    public void setCommunicationDirection(CommunicationDirectionType var1);

    public void unsetCommunicationDirection();

    public boolean isSetCommunicationDirection();
}

