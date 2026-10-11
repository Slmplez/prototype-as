/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset;

import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMappingSet;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationroutinemappingsetFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InterpolationroutinemappingsetFactory
extends EFactory {
    public static final InterpolationroutinemappingsetFactory eINSTANCE = InterpolationroutinemappingsetFactoryImpl.init();

    public InterpolationRoutine createInterpolationRoutine();

    public InterpolationRoutineMapping createInterpolationRoutineMapping();

    public InterpolationRoutineMappingSet createInterpolationRoutineMappingSet();

    public InterpolationroutinemappingsetPackage getInterpolationroutinemappingsetPackage();
}

