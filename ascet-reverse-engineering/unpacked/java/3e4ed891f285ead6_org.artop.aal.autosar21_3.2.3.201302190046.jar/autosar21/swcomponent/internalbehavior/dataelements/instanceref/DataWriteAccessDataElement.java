/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 */
package autosar21.swcomponent.internalbehavior.dataelements.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;

public interface DataWriteAccessDataElement
extends ARObject,
GPVariableInAtomicSwcIRef {
    public DataWriteAccess getDataWriteAccess();

    public void setDataWriteAccess(DataWriteAccess var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

