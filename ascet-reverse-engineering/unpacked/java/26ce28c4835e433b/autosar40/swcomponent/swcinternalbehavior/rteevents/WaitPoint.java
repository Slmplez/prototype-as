/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;

public interface WaitPoint
extends Identifiable,
GWaitPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();

    public RTEEvent getTrigger();

    public void setTrigger(RTEEvent var1);
}

