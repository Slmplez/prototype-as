/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef
 */
package autosar21.swcomponent.composition.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;

public interface AssemblyConnectorPrototypeRequester
extends ARObject,
GAssemblyConnectorPrototypeRequesterIRef {
    public AssemblyConnectorPrototype getAssemblyConnectorPrototype();

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);
}

