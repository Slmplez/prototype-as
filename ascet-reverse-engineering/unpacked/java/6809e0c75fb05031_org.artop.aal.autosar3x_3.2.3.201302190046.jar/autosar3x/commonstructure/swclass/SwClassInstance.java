/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;

public interface SwClassInstance
extends ARElement {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public SwClassAttrInstanceImpl getSwClassAttrInstanceImpl();

    public void setSwClassAttrInstanceImpl(SwClassAttrInstanceImpl var1);
}

