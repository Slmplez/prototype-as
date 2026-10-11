/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 */
package autosar40.swcomponent.composition.instancerefs;

import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;

public interface RPortInCompositionInstanceRef
extends PortInCompositionTypeInstanceRef,
GRPortInCompositionIRef {
    public AssemblySwConnector getAssemblySwConnector();

    public void setAssemblySwConnector(AssemblySwConnector var1);

    public SwComponentPrototype getContextComponent();

    public void setContextComponent(SwComponentPrototype var1);

    public RPortPrototype getTargetRPort();

    public void setTargetRPort(RPortPrototype var1);

    public CompositionSwComponentType getBase();
}

