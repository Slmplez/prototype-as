/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;

public interface ROperationInAtomicSwcInstanceRef
extends OperationInAtomicSwcInstanceRef,
GROperationInAtomicSwcIRef {
    public ServerCallPoint getServerCallPoint();

    public void setServerCallPoint(ServerCallPoint var1);

    public RPortPrototype getContextRPort();

    public void setContextRPort(RPortPrototype var1);

    public ClientServerOperation getTargetRequiredOperation();

    public void setTargetRequiredOperation(ClientServerOperation var1);

    public AtomicSwComponentType getBase();
}

