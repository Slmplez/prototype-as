/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.multilanguagedata;

import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;

public interface MlData4
extends MlDataModel4 {
    public Identifiable getIdentifiable();

    public void setIdentifiable(Identifiable var1);
}

