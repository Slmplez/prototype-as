/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface WaitPoint
extends Identifiable,
GWaitPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();

    public EList<RTEEvent> getTriggers();
}

