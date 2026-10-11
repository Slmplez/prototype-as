/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
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

