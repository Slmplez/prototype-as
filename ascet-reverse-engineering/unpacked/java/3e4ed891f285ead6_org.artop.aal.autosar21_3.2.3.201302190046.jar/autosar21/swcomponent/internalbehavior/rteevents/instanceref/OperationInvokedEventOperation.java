/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.rteevents.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;

public interface OperationInvokedEventOperation
extends ARObject,
GPOperationInAtomicSwcIRef {
    public OperationInvokedEvent getOperationInvokedEvent();

    public void setOperationInvokedEvent(OperationInvokedEvent var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

