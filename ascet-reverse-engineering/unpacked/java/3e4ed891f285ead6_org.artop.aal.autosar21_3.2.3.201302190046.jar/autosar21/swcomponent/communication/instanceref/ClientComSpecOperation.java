/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;

public interface ClientComSpecOperation
extends ARObject {
    public ClientComSpec getClientComSpec();

    public void setClientComSpec(ClientComSpec var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

