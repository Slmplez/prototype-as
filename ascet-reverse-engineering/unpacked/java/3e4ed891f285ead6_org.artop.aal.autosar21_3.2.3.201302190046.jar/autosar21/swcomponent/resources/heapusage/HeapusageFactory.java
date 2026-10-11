/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources.heapusage;

import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.heapusage.MeasuredHeapUsage;
import autosar21.swcomponent.resources.heapusage.RoughEstimateHeapUsage;
import autosar21.swcomponent.resources.heapusage.WorstCaseHeapUsage;
import autosar21.swcomponent.resources.heapusage.impl.HeapusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface HeapusageFactory
extends EFactory {
    public static final HeapusageFactory eINSTANCE = HeapusageFactoryImpl.init();

    public MeasuredHeapUsage createMeasuredHeapUsage();

    public RoughEstimateHeapUsage createRoughEstimateHeapUsage();

    public WorstCaseHeapUsage createWorstCaseHeapUsage();

    public HeapusagePackage getHeapusagePackage();
}

