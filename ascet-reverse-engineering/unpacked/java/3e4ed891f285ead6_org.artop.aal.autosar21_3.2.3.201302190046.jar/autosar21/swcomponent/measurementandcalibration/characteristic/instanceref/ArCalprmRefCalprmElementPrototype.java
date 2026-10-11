/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar21.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;

public interface ArCalprmRefCalprmElementPrototype
extends ARObject {
    public ArCalprmRef getArCalprmRef();

    public void setArCalprmRef(ArCalprmRef var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public CalprmElementPrototype getCalprmElementPrototype();

    public void setCalprmElementPrototype(CalprmElementPrototype var1);
}

