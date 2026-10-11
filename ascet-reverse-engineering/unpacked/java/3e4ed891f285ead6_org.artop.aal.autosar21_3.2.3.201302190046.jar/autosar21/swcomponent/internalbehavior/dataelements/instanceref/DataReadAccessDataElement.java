/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.dataelements.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;

public interface DataReadAccessDataElement
extends ARObject,
GRVariableInAtomicSwcIRef {
    public DataReadAccess getDataReadAccess();

    public void setDataReadAccess(DataReadAccess var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

