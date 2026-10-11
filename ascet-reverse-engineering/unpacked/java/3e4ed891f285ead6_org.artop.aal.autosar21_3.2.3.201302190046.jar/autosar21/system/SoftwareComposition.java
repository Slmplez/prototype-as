/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.system.System;

public interface SoftwareComposition
extends Identifiable {
    public System getSystem();

    public void setSystem(System var1);

    public CompositionType getSoftwareComposition();

    public void setSoftwareComposition(CompositionType var1);
}

