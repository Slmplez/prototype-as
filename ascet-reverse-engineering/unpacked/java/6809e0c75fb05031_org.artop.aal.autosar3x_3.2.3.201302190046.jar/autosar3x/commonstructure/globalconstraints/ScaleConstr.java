/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.globalconstraints;

import autosar3x.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.localconstraints.Limit;

public interface ScaleConstr
extends ARObject {
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

