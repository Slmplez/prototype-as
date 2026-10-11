/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuGenericMath;

public interface SwDataDependency
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public CompuGenericMath getSwDataDependencyFormula();

    public void setSwDataDependencyFormula(CompuGenericMath var1);

    public SwDataDependencyArgs getSwDataDependencyArgs();

    public void setSwDataDependencyArgs(SwDataDependencyArgs var1);
}

