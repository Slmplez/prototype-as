/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.globalconstraints;

import autosar40.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.swcomponent.datatype.localconstraints.Limit;

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

    public MultiLanguageOverviewParagraph getDesc();

    public void setDesc(MultiLanguageOverviewParagraph var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);
}

