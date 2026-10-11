/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources.stackusage;

import autosar21.swcomponent.resources.stackusage.MeasuredStackUsage;
import autosar21.swcomponent.resources.stackusage.RoughEstimateStackUsage;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.resources.stackusage.WorstCaseStackUsage;
import autosar21.swcomponent.resources.stackusage.impl.StackusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface StackusageFactory
extends EFactory {
    public static final StackusageFactory eINSTANCE = StackusageFactoryImpl.init();

    public MeasuredStackUsage createMeasuredStackUsage();

    public RoughEstimateStackUsage createRoughEstimateStackUsage();

    public WorstCaseStackUsage createWorstCaseStackUsage();

    public StackusagePackage getStackusagePackage();
}

