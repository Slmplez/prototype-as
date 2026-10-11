/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface SwServiceArg
extends Identifiable {
    public SwArraysize getSwArraysize();

    public void setSwArraysize(SwArraysize var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

