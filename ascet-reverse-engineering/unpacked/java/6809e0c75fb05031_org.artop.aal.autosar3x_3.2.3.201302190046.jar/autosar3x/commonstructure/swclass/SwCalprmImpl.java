/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwCalprmImpl
extends ARObject {
    public SwCalprmPrototype getSwCalprmPrototype();

    public void setSwCalprmPrototype(SwCalprmPrototype var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

