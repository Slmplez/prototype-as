/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.calibrationparameter;

import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.genericstructure.infrastructure.ARObject;

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

