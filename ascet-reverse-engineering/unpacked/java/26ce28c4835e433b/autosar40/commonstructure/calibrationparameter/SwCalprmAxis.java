/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.calibrationparameter;

import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface SwCalprmAxis
extends ARObject {
    public SwCalprmAxisSet getSwCalprmAxisSet();

    public void setSwCalprmAxisSet(SwCalprmAxisSet var1);

    public String getSwAxisIndex();

    public void setSwAxisIndex(String var1);

    public void unsetSwAxisIndex();

    public boolean isSetSwAxisIndex();

    public CalprmAxisCategoryEnum getCategory();

    public void setCategory(CalprmAxisCategoryEnum var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public SwCalprmAxisTypeProps getSwCalprmAxisTypeProps();

    public void setSwCalprmAxisTypeProps(SwCalprmAxisTypeProps var1);

    public SwCalibrationAccessEnum getSwCalibrationAccess();

    public void setSwCalibrationAccess(SwCalibrationAccessEnum var1);

    public void unsetSwCalibrationAccess();

    public boolean isSetSwCalibrationAccess();

    public String getDisplayFormat();

    public void setDisplayFormat(String var1);

    public void unsetDisplayFormat();

    public boolean isSetDisplayFormat();

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);
}

