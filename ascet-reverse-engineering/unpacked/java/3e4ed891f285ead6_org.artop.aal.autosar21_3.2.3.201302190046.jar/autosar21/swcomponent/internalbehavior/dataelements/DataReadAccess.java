/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 */
package autosar21.swcomponent.internalbehavior.dataelements;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;

public interface DataReadAccess
extends Identifiable,
GVariableAccess {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public DataReadAccessDataElement getDataElement();

    public void setDataElement(DataReadAccessDataElement var1);
}

