/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;

public interface FlexrayCommunicationConnector
extends CommunicationConnector {
    public Boolean getWakeUpChannel();

    public void setWakeUpChannel(Boolean var1);

    public void unsetWakeUpChannel();

    public boolean isSetWakeUpChannel();
}

