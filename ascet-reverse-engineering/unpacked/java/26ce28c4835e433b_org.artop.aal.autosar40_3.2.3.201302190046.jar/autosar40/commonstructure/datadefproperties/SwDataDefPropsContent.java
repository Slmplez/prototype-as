/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.units.Unit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwDataDefPropsContent
extends ARObject {
    public EList<Annotation> getAnnotations();

    public SwAddrMethod getSwAddrMethod();

    public void setSwAddrMethod(SwAddrMethod var1);

    public String getSwAlignment();

    public void setSwAlignment(String var1);

    public void unsetSwAlignment();

    public boolean isSetSwAlignment();

    public SwBaseType getBaseType();

    public void setBaseType(SwBaseType var1);

    public SwBitRepresentation getSwBitRepresentation();

    public void setSwBitRepresentation(SwBitRepresentation var1);

    public SwCalibrationAccessEnum getSwCalibrationAccess();

    public void setSwCalibrationAccess(SwCalibrationAccessEnum var1);

    public void unsetSwCalibrationAccess();

    public boolean isSetSwCalibrationAccess();

    public NumericalValueVariationPoint getSwValueBlockSize();

    public void setSwValueBlockSize(NumericalValueVariationPoint var1);

    public SwCalprmAxisSet getSwCalprmAxisSet();

    public void setSwCalprmAxisSet(SwCalprmAxisSet var1);

    public SwTextProps getSwTextProps();

    public void setSwTextProps(SwTextProps var1);

    public EList<SwVariableRefProxy> getSwComparisonVariables();

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

    public ImplementationDataType getImplementationDataType();

    public void setImplementationDataType(ImplementationDataType var1);

    public SwVariableRefProxy getSwHostVariable();

    public void setSwHostVariable(SwVariableRefProxy var1);

    public SwImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();

    public String getAdditionalNativeTypeQualifier();

    public void setAdditionalNativeTypeQualifier(String var1);

    public void unsetAdditionalNativeTypeQualifier();

    public boolean isSetAdditionalNativeTypeQualifier();

    public String getSwIntendedResolution();

    public void setSwIntendedResolution(String var1);

    public void unsetSwIntendedResolution();

    public boolean isSetSwIntendedResolution();

    public String getSwInterpolationMethod();

    public void setSwInterpolationMethod(String var1);

    public void unsetSwInterpolationMethod();

    public boolean isSetSwInterpolationMethod();

    public ValueSpecification getInvalidValue();

    public void setInvalidValue(ValueSpecification var1);

    public String getMcFunction();

    public void setMcFunction(String var1);

    public void unsetMcFunction();

    public boolean isSetMcFunction();

    public Boolean getSwIsVirtual();

    public void setSwIsVirtual(Boolean var1);

    public void unsetSwIsVirtual();

    public boolean isSetSwIsVirtual();

    public SwPointerTargetProps getSwPointerTargetProps();

    public void setSwPointerTargetProps(SwPointerTargetProps var1);

    public SwRecordLayout getSwRecordLayout();

    public void setSwRecordLayout(SwRecordLayout var1);

    public MultidimensionalTime getSwRefreshTiming();

    public void setSwRefreshTiming(MultidimensionalTime var1);

    public Unit getUnit();

    public void setUnit(Unit var1);

    public ApplicationPrimitiveDataType getValueAxisDataType();

    public void setValueAxisDataType(ApplicationPrimitiveDataType var1);

    public float getSwIntendedResolutionAsFloat();

    public int getSwIntendedResolutionAsInteger();

    public int getRadixForSwIntendedResolution();

    public void setSwIntendedResolution(int var1, String var2);
}

