/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface SwCalprmPrototype
extends Identifiable {
    public SwClassAttr getSwClassAttr();

    public void setSwClassAttr(SwClassAttr var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

