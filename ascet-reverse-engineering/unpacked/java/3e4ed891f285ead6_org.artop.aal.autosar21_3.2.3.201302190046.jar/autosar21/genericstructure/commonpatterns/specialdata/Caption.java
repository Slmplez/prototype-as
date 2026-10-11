/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.specialdata;

import autosar21.genericstructure.commonpatterns.specialdata.Sdg;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;

public interface Caption
extends Identifiable {
    public Sdg getSdg();

    public void setSdg(Sdg var1);
}

