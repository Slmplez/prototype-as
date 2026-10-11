/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;

public interface CalibrationParameterValue
extends ARObject {
    public CalibrationParameterValueSet getCalibrationParameterValueSet();

    public void setCalibrationParameterValueSet(CalibrationParameterValueSet var1);

    public ValueSpecification getApplInitValue();

    public void setApplInitValue(ValueSpecification var1);

    public ValueSpecification getImplInitValue();

    public void setImplInitValue(ValueSpecification var1);

    public FlatInstanceDescriptor getInitializedParameter();

    public void setInitializedParameter(FlatInstanceDescriptor var1);
}

