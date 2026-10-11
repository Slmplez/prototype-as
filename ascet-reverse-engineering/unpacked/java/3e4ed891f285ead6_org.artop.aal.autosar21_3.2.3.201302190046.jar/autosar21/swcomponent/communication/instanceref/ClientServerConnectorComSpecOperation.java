/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;

public interface ClientServerConnectorComSpecOperation
extends ARObject {
    public ClientServerConnectorComSpec getClientServerConnectorComSpec();

    public void setClientServerConnectorComSpec(ClientServerConnectorComSpec var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

