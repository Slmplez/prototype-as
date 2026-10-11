/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GSwConnector
 */
package autosar3x.swcomponent.composition;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.composition.CompositionType;
import gautosar.gswcomponents.gcomposition.GSwConnector;

public interface ConnectorPrototype
extends Identifiable,
GSwConnector {
    public CompositionType getCompositionType();

    public void setCompositionType(CompositionType var1);
}

