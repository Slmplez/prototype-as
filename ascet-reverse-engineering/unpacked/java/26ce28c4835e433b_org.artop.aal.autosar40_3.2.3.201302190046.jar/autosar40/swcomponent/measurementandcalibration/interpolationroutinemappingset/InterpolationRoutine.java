/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;

public interface InterpolationRoutine
extends ARObject {
    public InterpolationRoutineMapping getInterpolationRoutineMapping();

    public void setInterpolationRoutineMapping(InterpolationRoutineMapping var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public Boolean getIsDefault();

    public void setIsDefault(Boolean var1);

    public void unsetIsDefault();

    public boolean isSetIsDefault();

    public BswModuleEntry getInterpolationRoutine();

    public void setInterpolationRoutine(BswModuleEntry var1);
}

