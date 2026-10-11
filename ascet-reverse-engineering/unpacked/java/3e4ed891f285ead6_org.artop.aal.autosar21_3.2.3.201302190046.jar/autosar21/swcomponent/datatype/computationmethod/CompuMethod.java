/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.swcomponent.datatype.computationmethod.Compu;
import autosar21.swcomponent.datatype.units.Unit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;

public interface CompuMethod
extends ARElement,
GCompuMethod {
    public Unit getUnit();

    public void setUnit(Unit var1);

    public Compu getCompuInternalToPhys();

    public void setCompuInternalToPhys(Compu var1);

    public Compu getCompuPhysToInternal();

    public void setCompuPhysToInternal(Compu var1);
}

