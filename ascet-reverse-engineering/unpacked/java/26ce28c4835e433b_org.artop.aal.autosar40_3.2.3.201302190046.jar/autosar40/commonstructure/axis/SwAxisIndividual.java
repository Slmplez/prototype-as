/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.units.Unit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwAxisIndividual
extends SwCalprmAxisTypeProps {
    public ApplicationPrimitiveDataType getInputVariableType();

    public void setInputVariableType(ApplicationPrimitiveDataType var1);

    public EList<SwVariableRefProxy> getSwVariableRefs();

    public CompuMethod getCompuMethod();

    public void setCompuMethod(CompuMethod var1);

    public Unit getUnit();

    public void setUnit(Unit var1);

    public IntegerValueVariationPoint getSwMaxAxisPoints();

    public void setSwMaxAxisPoints(IntegerValueVariationPoint var1);

    public IntegerValueVariationPoint getSwMinAxisPoints();

    public void setSwMinAxisPoints(IntegerValueVariationPoint var1);

    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public SwAxisGeneric getSwAxisGeneric();

    public void setSwAxisGeneric(SwAxisGeneric var1);
}

