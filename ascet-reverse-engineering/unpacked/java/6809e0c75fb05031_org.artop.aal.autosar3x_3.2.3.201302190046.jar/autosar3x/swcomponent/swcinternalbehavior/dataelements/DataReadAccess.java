/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;

public interface DataReadAccess
extends Identifiable,
GVariableAccess {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public DataReadAccessDataElement getDataElement();

    public void setDataElement(DataReadAccessDataElement var1);
}

