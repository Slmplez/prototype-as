/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwPointer
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

