/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface SdgCaption
extends Identifiable {
    public Sdg getSdg();

    public void setSdg(Sdg var1);
}

