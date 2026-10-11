/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.SystemCommunication;
import autosar21.system.communication.GatewayType;

public interface GatewayInstance
extends Identifiable {
    public SystemCommunication getSystemCommunication();

    public void setSystemCommunication(SystemCommunication var1);

    public GatewayType getGateway();

    public void setGateway(GatewayType var1);
}

