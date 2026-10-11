/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.composition.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.DelegationConnectorPrototype;

public interface DelegationConnectorPrototypeInnerPort
extends ARObject {
    public DelegationConnectorPrototype getDelegationConnectorPrototype();

    public void setDelegationConnectorPrototype(DelegationConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);
}

