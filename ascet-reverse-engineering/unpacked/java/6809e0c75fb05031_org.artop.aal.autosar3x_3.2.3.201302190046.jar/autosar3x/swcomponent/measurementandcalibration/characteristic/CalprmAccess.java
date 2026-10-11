/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;

public interface CalprmAccess
extends Identifiable,
GParameterAccess {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public CalprmAccessCalprmElementPrototype getCalprmAccess();

    public void setCalprmAccess(CalprmAccessCalprmElementPrototype var1);
}

