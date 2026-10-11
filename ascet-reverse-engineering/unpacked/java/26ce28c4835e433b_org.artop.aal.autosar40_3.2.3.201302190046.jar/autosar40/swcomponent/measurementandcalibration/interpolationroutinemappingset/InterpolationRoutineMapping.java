/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMappingSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InterpolationRoutineMapping
extends ARObject {
    public InterpolationRoutineMappingSet getInterpolationRoutineMappingSet();

    public void setInterpolationRoutineMappingSet(InterpolationRoutineMappingSet var1);

    public EList<InterpolationRoutine> getInterpolationRoutines();

    public SwRecordLayout getSwRecordLayout();

    public void setSwRecordLayout(SwRecordLayout var1);
}

