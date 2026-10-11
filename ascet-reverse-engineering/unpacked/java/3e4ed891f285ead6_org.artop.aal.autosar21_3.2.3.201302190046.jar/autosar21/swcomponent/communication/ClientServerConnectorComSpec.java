/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;

public interface ClientServerConnectorComSpec
extends ConnectorComSpec {
    public ClientServerConnectorComSpecOperation getOperation();

    public void setOperation(ClientServerConnectorComSpecOperation var1);
}

