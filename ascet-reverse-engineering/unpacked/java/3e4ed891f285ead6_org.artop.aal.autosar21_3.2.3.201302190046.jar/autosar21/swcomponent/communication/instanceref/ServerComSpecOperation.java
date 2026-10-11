/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.portinterface.OperationPrototype;

public interface ServerComSpecOperation
extends ARObject {
    public ServerComSpec getServerComSpec();

    public void setServerComSpec(ServerComSpec var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

