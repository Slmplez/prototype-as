/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.datatype.computationmethod;

import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.swcomponent.datatype.valuemodel.ValueByFormula;

public interface CompuGenericMath
extends ValueByFormula {
    public SwDataDependency getSwDataDependency();

    public void setSwDataDependency(SwDataDependency var1);

    public String getLevel();

    public void setLevel(String var1);

    public void unsetLevel();

    public boolean isSetLevel();
}

