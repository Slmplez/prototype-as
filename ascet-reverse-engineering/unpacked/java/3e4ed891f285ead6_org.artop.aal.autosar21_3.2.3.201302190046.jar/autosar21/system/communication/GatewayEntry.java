/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.GatewayType;

public interface GatewayEntry
extends ARObject {
    public GatewayType getGatewayType();

    public void setGatewayType(GatewayType var1);

    public Integer getGatewayEntryId();

    public void setGatewayEntryId(Integer var1);

    public void unsetGatewayEntryId();

    public boolean isSetGatewayEntryId();
}

