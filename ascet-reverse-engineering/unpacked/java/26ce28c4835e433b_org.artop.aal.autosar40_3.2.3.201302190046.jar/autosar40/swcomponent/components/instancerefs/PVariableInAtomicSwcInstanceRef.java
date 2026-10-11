/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;

public interface PVariableInAtomicSwcInstanceRef
extends VariableInAtomicSwcInstanceRef,
GPVariableInAtomicSwcIRef {
    public PPortPrototype getContextPPort();

    public void setContextPPort(PPortPrototype var1);

    public VariableDataPrototype getTargetDataElement();

    public void setTargetDataElement(VariableDataPrototype var1);

    public AtomicSwComponentType getBase();
}

