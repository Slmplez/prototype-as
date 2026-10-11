/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.rteevents.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceivedEvent;
import autosar21.swcomponent.portinterface.DataElementPrototype;
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

