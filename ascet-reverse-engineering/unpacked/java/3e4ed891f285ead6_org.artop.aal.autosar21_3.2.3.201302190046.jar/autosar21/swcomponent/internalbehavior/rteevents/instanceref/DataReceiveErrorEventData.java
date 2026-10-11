/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.rteevents.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceiveErrorEvent;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;

public interface DataReceiveErrorEventData
extends ARObject,
GRVariableInAtomicSwcIRef {
    public DataReceiveErrorEvent getDataReceiveErrorEvent();

    public void setDataReceiveErrorEvent(DataReceiveErrorEvent var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

