/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.resourceconsumption.stackusage;

import autosar40.commonstructure.resourceconsumption.stackusage.MeasuredStackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.RoughEstimateStackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar40.commonstructure.resourceconsumption.stackusage.WorstCaseStackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.impl.StackusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface StackusageFactory
extends EFactory {
    public static final StackusageFactory eINSTANCE = StackusageFactoryImpl.init();

    public MeasuredStackUsage createMeasuredStackUsage();

    public RoughEstimateStackUsage createRoughEstimateStackUsage();

    public WorstCaseStackUsage createWorstCaseStackUsage();

    public StackusagePackage getStackusagePackage();
}

