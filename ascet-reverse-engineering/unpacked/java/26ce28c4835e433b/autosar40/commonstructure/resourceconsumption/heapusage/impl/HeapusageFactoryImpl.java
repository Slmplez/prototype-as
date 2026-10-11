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
package autosar40.commonstructure.resourceconsumption.heapusage.impl;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapusageFactory;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.RoughEstimateHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.WorstCaseHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.MeasuredHeapUsageImpl;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.RoughEstimateHeapUsageImpl;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.WorstCaseHeapUsageImpl;
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
            HeapusageFactory theHeapusageFactory = (HeapusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/rc/hu");
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
            case 1: {
                return this.createMeasuredHeapUsage();
            }
            case 2: {
                return this.createRoughEstimateHeapUsage();
            }
            case 3: {
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

