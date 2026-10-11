/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.singlelanguagedata;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar3x.swcomponent.datatype.units.Unit;

public interface SlData3
extends MixedContent3 {
    public Unit getUnit();

    public void setUnit(Unit var1);
}

