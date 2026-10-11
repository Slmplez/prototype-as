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
import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;

public interface DataReceivedEventData
extends ARObject,
GRVariableInAtomicSwcIRef {
    public DataReceivedEvent getDataReceivedEvent();

    public void setDataReceivedEvent(DataReceivedEvent var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

