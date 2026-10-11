/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;

public interface CalprmAccessCalprmElementPrototype
extends ARObject,
GParameterInAtomicSwcIRef {
    public CalprmAccess getCalprmAccess();

    public void setCalprmAccess(CalprmAccess var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public CalprmElementPrototype getCalprmElementPrototype();

    public void setCalprmElementPrototype(CalprmElementPrototype var1);
}

