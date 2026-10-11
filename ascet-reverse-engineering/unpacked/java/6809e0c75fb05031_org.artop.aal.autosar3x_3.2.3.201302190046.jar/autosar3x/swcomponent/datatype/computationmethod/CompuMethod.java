/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.swcomponent.datatype.computationmethod.Compu;
import autosar3x.swcomponent.datatype.units.Unit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;

public interface CompuMethod
extends ARElement,
GCompuMethod {
    public String getDisplayFormat();

    public void setDisplayFormat(String var1);

    public void unsetDisplayFormat();

    public boolean isSetDisplayFormat();

    public Unit getUnit();

    public void setUnit(Unit var1);

    public Compu getCompuInternalToPhys();

    public void setCompuInternalToPhys(Compu var1);

    public Compu getCompuPhysToInternal();

    public void setCompuPhysToInternal(Compu var1);
}

