/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;

public interface POperationInAtomicSwcInstanceRef
extends OperationInAtomicSwcInstanceRef,
GPOperationInAtomicSwcIRef {
    public OperationInvokedEvent getOperationInvokedEvent();

    public void setOperationInvokedEvent(OperationInvokedEvent var1);

    public PPortPrototype getContextPPort();

    public void setContextPPort(PPortPrototype var1);

    public ClientServerOperation getTargetProvidedOperation();

    public void setTargetProvidedOperation(ClientServerOperation var1);

    public AtomicSwComponentType getBase();
}

