/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef
 */
package autosar3x.swcomponent.composition.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;

public interface AssemblyConnectorPrototypeProvider
extends ARObject,
GAssemblyConnectorPrototypeProviderIRef {
    public AssemblyConnectorPrototype getAssemblyConnectorPrototype();

    public void setAssemblyConnectorPrototype(AssemblyConnectorPrototype var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);
}

