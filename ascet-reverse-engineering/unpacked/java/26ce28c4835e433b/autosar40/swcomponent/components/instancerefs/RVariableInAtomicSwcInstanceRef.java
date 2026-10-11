/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;

public interface RVariableInAtomicSwcInstanceRef
extends VariableInAtomicSwcInstanceRef,
GRVariableInAtomicSwcIRef {
    public RPortPrototype getContextRPort();

    public void setContextRPort(RPortPrototype var1);

    public VariableDataPrototype getTargetDataElement();

    public void setTargetDataElement(VariableDataPrototype var1);

    public AtomicSwComponentType getBase();
}

