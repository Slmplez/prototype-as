/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system;

import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;
import autosar40.system.System;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RootSwCompositionPrototype
extends AtpPrototype {
    public System getSystem();

    public void setSystem(System var1);

    public EList<CalibrationParameterValueSet> getCalibrationParameterValueSets();

    public FlatMap getFlatMap();

    public void setFlatMap(FlatMap var1);

    public CompositionSwComponentType getSoftwareComposition();

    public void setSoftwareComposition(CompositionSwComponentType var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

