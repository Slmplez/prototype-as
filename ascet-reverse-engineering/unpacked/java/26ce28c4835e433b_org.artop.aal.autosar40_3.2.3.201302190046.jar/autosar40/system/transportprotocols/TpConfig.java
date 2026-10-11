/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.transportprotocols;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;

public interface TpConfig
extends FibexElement {
    public CommunicationCluster getCommunicationCluster();

    public void setCommunicationCluster(CommunicationCluster var1);
}

