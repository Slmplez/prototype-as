/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.resourceconsumption.heapusage;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.RoughEstimateHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.WorstCaseHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface HeapusageFactory
extends EFactory {
    public static final HeapusageFactory eINSTANCE = HeapusageFactoryImpl.init();

    public MeasuredHeapUsage createMeasuredHeapUsage();

    public RoughEstimateHeapUsage createRoughEstimateHeapUsage();

    public WorstCaseHeapUsage createWorstCaseHeapUsage();

    public HeapusagePackage getHeapusagePackage();
}

