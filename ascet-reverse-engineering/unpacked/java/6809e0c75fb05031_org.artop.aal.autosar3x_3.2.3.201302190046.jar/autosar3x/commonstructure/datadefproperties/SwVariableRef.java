/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwVariableRef
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public SwVariableRefProxy getSwVariableRef();

    public void setSwVariableRef(SwVariableRefProxy var1);
}

