/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface FlexRayCommunicationConnector
extends CommunicationConnector {
    public Boolean getWakeUpChannel();

    public void setWakeUpChannel(Boolean var1);

    public void unsetWakeUpChannel();

    public boolean isSetWakeUpChannel();
}

