/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.measurementandcalibration.axis;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.CompuMethod;
import autosar21.swcomponent.datatype.units.Unit;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.DataConstr;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwAxisIndividual
extends ARObject {
    public SwCalprmAxisIndividualAxis getSwCalprmAxisIndividualAxis();

    public void setSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis var1);

    public EList<SwVariableRefProxy> getSwVariableRefs();

    public CompuMethod getCompuMethod();

    public void setCompuMethod(CompuMethod var1);

    public Unit getUnit();

    public void setUnit(Unit var1);

    public Vf getSwMaxAxisPoints();

    public void setSwMaxAxisPoints(Vf var1);

    public Vf getSwMinAxisPoints();

    public void setSwMinAxisPoints(Vf var1);

    public DataConstr getDataConstr();

    public void setDataConstr(DataConstr var1);

    public SwAxisGeneric getSwAxisGeneric();

    public void setSwAxisGeneric(SwAxisGeneric var1);
}

