/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.TriggerInAtomicSwcInstanceRef;

public interface PTriggerInAtomicSwcTypeInstanceRef
extends TriggerInAtomicSwcInstanceRef {
    public PPortPrototype getContextPPort();

    public void setContextPPort(PPortPrototype var1);

    public Trigger getTargetTrigger();

    public void setTargetTrigger(Trigger var1);

    public AtomicSwComponentType getBase();
}

