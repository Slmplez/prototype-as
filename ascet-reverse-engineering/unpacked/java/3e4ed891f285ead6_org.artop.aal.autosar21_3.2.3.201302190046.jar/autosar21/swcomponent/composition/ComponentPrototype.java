/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 */
package autosar21.swcomponent.composition;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.components.ComponentType;
import autosar21.swcomponent.composition.CompositionType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;

public interface ComponentPrototype
extends Identifiable,
GSwComponentPrototype {
    public CompositionType getCompositionType();

    public void setCompositionType(CompositionType var1);

    public ComponentType getType();

    public void setType(ComponentType var1);
}

