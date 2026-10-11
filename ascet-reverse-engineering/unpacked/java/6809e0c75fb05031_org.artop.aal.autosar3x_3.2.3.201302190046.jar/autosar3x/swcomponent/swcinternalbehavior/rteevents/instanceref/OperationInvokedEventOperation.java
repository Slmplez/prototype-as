/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
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

