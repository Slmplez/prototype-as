/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwCalibrationAccessEnum;

public interface SwCalprmAxis
extends ARObject {
    public SwCalprmAxisSet getSwCalprmAxisSet();

    public void setSwCalprmAxisSet(SwCalprmAxisSet var1);

    public String getSwAxisIndex();

    public void setSwAxisIndex(String var1);

    public void unsetSwAxisIndex();

    public boolean isSetSwAxisIndex();

    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public SwCalprmAxisAxis getSwCalprmAxisAxisType();

    public void setSwCalprmAxisAxisType(SwCalprmAxisAxis var1);

    public SwCalibrationAccessEnum getSwCalibrationAccess();

    public void setSwCalibrationAccess(SwCalibrationAccessEnum var1);

    public void unsetSwCalibrationAccess();

    public boolean isSetSwCalibrationAccess();

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);
}

