/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.CompuMethod;
import autosar21.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwAddrMethod;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwCodeSyntax;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwCalibrationAccessEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;

public interface SwDataDefProps
extends ARObject,
GSwDataDefPropsConditional {
    public PrimitiveSpecification getInvalidValue();

    public void setInvalidValue(PrimitiveSpecification var1);

    public SwAddrMethod getSwAddrMethod();

    public void setSwAddrMethod(SwAddrMethod var1);

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);

    public SwBitRepresentation getSwBitRepresentation();

    public void setSwBitRepresentation(SwBitRepresentation var1);

    public SwCalibrationAccessEnum getSwCalibrationAccess();

    public void setSwCalibrationAccess(SwCalibrationAccessEnum var1);

    public void unsetSwCalibrationAccess();

    public boolean isSetSwCalibrationAccess();

    public SwArraysize getSwValueBlockSize();

    public void setSwValueBlockSize(SwArraysize var1);

    public SwCalprmAxisSet getSwCalprmAxisSet();

    public void setSwCalprmAxisSet(SwCalprmAxisSet var1);

    public SwTextProps getSwTextProps();

    public void setSwTextProps(SwTextProps var1);

    public SwCodeSyntax getSwCodeSyntax();

    public void setSwCodeSyntax(SwCodeSyntax var1);

    public CompuMethod getCompuMethod();

    public void setCompuMethod(CompuMethod var1);

    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public SwDataDependency getSwDataDependency();

    public void setSwDataDependency(SwDataDependency var1);

    public SwVariableRef getSwHostVariable();

    public void setSwHostVariable(SwVariableRef var1);

    public SwImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();

    public SwPointer getSwPointer();

    public void setSwPointer(SwPointer var1);

    public SwRecordLayout getSwRecordLayout();

    public void setSwRecordLayout(SwRecordLayout var1);

    public Unit getUnit();

    public void setUnit(Unit var1);

    public SwVariableAccessImplPolicyEnum getSwVariableAccessImplPolicy();

    public void setSwVariableAccessImplPolicy(SwVariableAccessImplPolicyEnum var1);

    public void unsetSwVariableAccessImplPolicy();

    public boolean isSetSwVariableAccessImplPolicy();
}

