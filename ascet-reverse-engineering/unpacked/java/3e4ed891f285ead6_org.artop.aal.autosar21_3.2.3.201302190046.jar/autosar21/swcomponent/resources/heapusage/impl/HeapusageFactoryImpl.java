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
package autosar21.swcomponent.resources.heapusage.impl;

import autosar21.swcomponent.resources.heapusage.HeapusageFactory;
import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.heapusage.MeasuredHeapUsage;
import autosar21.swcomponent.resources.heapusage.RoughEstimateHeapUsage;
import autosar21.swcomponent.resources.heapusage.WorstCaseHeapUsage;
import autosar21.swcomponent.resources.heapusage.impl.MeasuredHeapUsageImpl;
import autosar21.swcomponent.resources.heapusage.impl.RoughEstimateHeapUsageImpl;
import autosar21.swcomponent.resources.heapusage.impl.WorstCaseHeapUsageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class HeapusageFactoryImpl
extends EFactoryImpl
implements HeapusageFactory {
    public static HeapusageFactory init() {
        try {
            HeapusageFactory theHeapusageFactory = (HeapusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r/hu");
            if (theHeapusageFactory != null) {
                return theHeapusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new HeapusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMeasuredHeapUsage();
            }
            case 1: {
                return this.createRoughEstimateHeapUsage();
            }
            case 2: {
                return this.createWorstCaseHeapUsage();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MeasuredHeapUsage createMeasuredHeapUsage() {
        MeasuredHeapUsageImpl measuredHeapUsage = new MeasuredHeapUsageImpl();
        return measuredHeapUsage;
    }

    public RoughEstimateHeapUsage createRoughEstimateHeapUsage() {
        RoughEstimateHeapUsageImpl roughEstimateHeapUsage = new RoughEstimateHeapUsageImpl();
        return roughEstimateHeapUsage;
    }

    public WorstCaseHeapUsage createWorstCaseHeapUsage() {
        WorstCaseHeapUsageImpl worstCaseHeapUsage = new WorstCaseHeapUsageImpl();
        return worstCaseHeapUsage;
    }

    public HeapusagePackage getHeapusagePackage() {
        return (HeapusagePackage)this.getEPackage();
    }

    @Deprecated
    public static HeapusagePackage getPackage() {
        return HeapusagePackage.eINSTANCE;
    }
}

