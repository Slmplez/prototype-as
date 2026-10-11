/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;

public interface DataReceivePointDataElement
extends ARObject,
GRVariableInAtomicSwcIRef {
    public DataReceivePoint getDataReceivePoint();

    public void setDataReceivePoint(DataReceivePoint var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

