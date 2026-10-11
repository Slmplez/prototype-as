/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.composition.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.composition.DelegationConnectorPrototype;

public interface DelegationConnectorPrototypeInnerPort
extends ARObject {
    public DelegationConnectorPrototype getDelegationConnectorPrototype();

    public void setDelegationConnectorPrototype(DelegationConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);
}

