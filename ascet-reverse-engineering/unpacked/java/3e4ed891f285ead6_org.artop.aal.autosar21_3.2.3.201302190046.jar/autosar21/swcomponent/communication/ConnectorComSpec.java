/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.composition.AssemblyConnectorPrototype;

public interface ConnectorComSpec
extends ARObject {
    public AssemblyConnectorPrototype getAssemblyConnectorPrototype();

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype var1);
}

