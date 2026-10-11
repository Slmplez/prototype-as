/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.system.System;

public interface SoftwareComposition
extends Identifiable {
    public System getSystem();

    public void setSystem(System var1);

    public CompositionType getSoftwareComposition();

    public void setSoftwareComposition(CompositionType var1);
}

