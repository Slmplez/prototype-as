/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 */
package autosar21.swcomponent.internalbehavior.exclusivearea;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;

public interface ExclusiveArea
extends Identifiable,
GExclusiveArea {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);
}

