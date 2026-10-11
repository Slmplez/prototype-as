/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.genericstructure.commonpatterns.annotation.Annotation;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.units.Unit;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwDataDefProps
extends ARObject,
GSwDataDefPropsConditional {
    public EList<Annotation> getAnnotations();

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

    public String getDisplayFormat();

    public void setDisplayFormat(String var1);

    public void unsetDisplayFormat();

    public boolean isSetDisplayFormat();

    public PrimitiveSpecification getInvalidValue();

    public void setInvalidValue(PrimitiveSpecification var1);

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

