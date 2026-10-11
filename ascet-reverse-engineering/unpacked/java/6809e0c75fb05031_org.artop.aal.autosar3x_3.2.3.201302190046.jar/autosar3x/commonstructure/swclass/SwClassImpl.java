/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwClassImpl
extends ARObject {
    public SwClassAttrInstanceImpl getSwClassAttrInstanceImpl();

    public void setSwClassAttrInstanceImpl(SwClassAttrInstanceImpl var1);

    public SwClassPrototype getSwClassPrototype();

    public void setSwClassPrototype(SwClassPrototype var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

