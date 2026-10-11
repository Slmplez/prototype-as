/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwVariableImpl
extends ARObject {
    public SwVariablePrototype getSwVariablePrototype();

    public void setSwVariablePrototype(SwVariablePrototype var1);

    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);
}

