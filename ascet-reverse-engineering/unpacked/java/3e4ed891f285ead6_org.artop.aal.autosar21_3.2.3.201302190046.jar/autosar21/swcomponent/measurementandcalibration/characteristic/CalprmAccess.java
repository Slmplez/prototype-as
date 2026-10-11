/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 */
package autosar21.swcomponent.measurementandcalibration.characteristic;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;

public interface CalprmAccess
extends Identifiable,
GParameterAccess {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public CalprmAccessCalprmElementPrototype getCalprmAccess();

    public void setCalprmAccess(CalprmAccessCalprmElementPrototype var1);
}

