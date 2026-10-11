/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.calibrationvalue;

import autosar40.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.swcomponent.datatype.units.Unit;

public interface SwAxisCont
extends ARObject {
    public ApplicationValueSpecification getApplicationValueSpecification();

    public void setApplicationValueSpecification(ApplicationValueSpecification var1);

    public CalprmAxisCategoryEnum getCategory();

    public void setCategory(CalprmAxisCategoryEnum var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public Unit getUnit();

    public void setUnit(Unit var1);

    public SingleLanguageUnitNames getUnitDisplayName();

    public void setUnitDisplayName(SingleLanguageUnitNames var1);

    public String getSwAxisIndex();

    public void setSwAxisIndex(String var1);

    public void unsetSwAxisIndex();

    public boolean isSetSwAxisIndex();

    public ValueList getSwArraysize();

    public void setSwArraysize(ValueList var1);

    public SwValues getSwValuesPhys();

    public void setSwValuesPhys(SwValues var1);
}

