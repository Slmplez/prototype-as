/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface EthernetPhysicalChannel
extends PhysicalChannel {
    public SoAdConfig getSoAdConfig();

    public void setSoAdConfig(SoAdConfig var1);
}

