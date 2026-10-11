/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;

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

