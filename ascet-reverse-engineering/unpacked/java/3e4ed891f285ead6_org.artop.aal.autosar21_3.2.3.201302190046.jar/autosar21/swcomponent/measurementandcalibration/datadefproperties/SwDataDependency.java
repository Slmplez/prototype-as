/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;

public interface SwDataDependency
extends ARObject {
    public SwDataDefProps getSwDataDefProps();

    public void setSwDataDefProps(SwDataDefProps var1);

    public String getSwDataDependencyFormula();

    public void setSwDataDependencyFormula(String var1);

    public void unsetSwDataDependencyFormula();

    public boolean isSetSwDataDependencyFormula();

    public SwDataDependencyArgs getSwDataDependencyArgs();

    public void setSwDataDependencyArgs(SwDataDependencyArgs var1);
}

