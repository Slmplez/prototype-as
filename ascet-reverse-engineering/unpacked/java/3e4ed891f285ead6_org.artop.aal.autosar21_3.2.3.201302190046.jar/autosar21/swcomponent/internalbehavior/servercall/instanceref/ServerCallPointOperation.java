/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.servercall.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.servercall.ServerCallPoint;
import autosar21.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;

public interface ServerCallPointOperation
extends ARObject,
GROperationInAtomicSwcIRef {
    public ServerCallPoint getServerCallPoint();

    public void setServerCallPoint(ServerCallPoint var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

