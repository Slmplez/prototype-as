/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl;

import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMappingSet;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetFactory;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationRoutineImpl;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationRoutineMappingImpl;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationRoutineMappingSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InterpolationroutinemappingsetFactoryImpl
extends EFactoryImpl
implements InterpolationroutinemappingsetFactory {
    public static InterpolationroutinemappingsetFactory init() {
        try {
            InterpolationroutinemappingsetFactory theInterpolationroutinemappingsetFactory = (InterpolationroutinemappingsetFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/mac/irms");
            if (theInterpolationroutinemappingsetFactory != null) {
                return theInterpolationroutinemappingsetFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InterpolationroutinemappingsetFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInterpolationRoutine();
            }
            case 1: {
                return this.createInterpolationRoutineMapping();
            }
            case 2: {
                return this.createInterpolationRoutineMappingSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public InterpolationRoutine createInterpolationRoutine() {
        InterpolationRoutineImpl interpolationRoutine = new InterpolationRoutineImpl();
        return interpolationRoutine;
    }

    public InterpolationRoutineMapping createInterpolationRoutineMapping() {
        InterpolationRoutineMappingImpl interpolationRoutineMapping = new InterpolationRoutineMappingImpl();
        return interpolationRoutineMapping;
    }

    public InterpolationRoutineMappingSet createInterpolationRoutineMappingSet() {
        InterpolationRoutineMappingSetImpl interpolationRoutineMappingSet = new InterpolationRoutineMappingSetImpl();
        return interpolationRoutineMappingSet;
    }

    public InterpolationroutinemappingsetPackage getInterpolationroutinemappingsetPackage() {
        return (InterpolationroutinemappingsetPackage)this.getEPackage();
    }

    @Deprecated
    public static InterpolationroutinemappingsetPackage getPackage() {
        return InterpolationroutinemappingsetPackage.eINSTANCE;
    }
}

