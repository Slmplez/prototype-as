/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrValidityEnum;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.ScaleConstrs;

public interface ScaleConstr
extends ARObject {
    public ScaleConstrs getScaleConstrs();

    public void setScaleConstrs(ScaleConstrs var1);

    public ScaleConstrValidityEnum getValidity();

    public void setValidity(ScaleConstrValidityEnum var1);

    public void unsetValidity();

    public boolean isSetValidity();

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public MlData2 getDesc();

    public void setDesc(MlData2 var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);
}

