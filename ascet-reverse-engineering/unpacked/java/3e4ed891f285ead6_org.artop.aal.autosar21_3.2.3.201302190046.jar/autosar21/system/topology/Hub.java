/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.topology;

import autosar21.system.topology.HubHubTypeEnum;
import autosar21.system.topology.TopologyElement;

public interface Hub
extends TopologyElement {
    public HubHubTypeEnum getHubType();

    public void setHubType(HubHubTypeEnum var1);

    public void unsetHubType();

    public boolean isSetHubType();
}

