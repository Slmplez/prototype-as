/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 */
package autosar40.swcomponent.composition.instancerefs;

import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;

public interface PPortInCompositionInstanceRef
extends PortInCompositionTypeInstanceRef,
GPPortInCompositionIRef {
    public AssemblySwConnector getAssemblySwConnector();

    public void setAssemblySwConnector(AssemblySwConnector var1);

    public SwComponentPrototype getContextComponent();

    public void setContextComponent(SwComponentPrototype var1);

    public PPortPrototype getTargetPPort();

    public void setTargetPPort(PPortPrototype var1);

    public CompositionSwComponentType getBase();
}

