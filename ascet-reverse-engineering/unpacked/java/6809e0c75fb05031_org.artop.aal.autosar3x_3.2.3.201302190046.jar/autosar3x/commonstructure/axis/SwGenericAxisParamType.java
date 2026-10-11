/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.axis;

import autosar3x.commonstructure.axis.SwAxisType;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface SwGenericAxisParamType
extends Identifiable {
    public SwAxisType getSwAxisType();

    public void setSwAxisType(SwAxisType var1);
}

