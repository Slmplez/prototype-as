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
package autosar21.swcomponent.resources.stackusage.impl;

import autosar21.swcomponent.resources.stackusage.MeasuredStackUsage;
import autosar21.swcomponent.resources.stackusage.RoughEstimateStackUsage;
import autosar21.swcomponent.resources.stackusage.StackusageFactory;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.resources.stackusage.WorstCaseStackUsage;
import autosar21.swcomponent.resources.stackusage.impl.MeasuredStackUsageImpl;
import autosar21.swcomponent.resources.stackusage.impl.RoughEstimateStackUsageImpl;
import autosar21.swcomponent.resources.stackusage.impl.WorstCaseStackUsageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class StackusageFactoryImpl
extends EFactoryImpl
implements StackusageFactory {
    public static StackusageFactory init() {
        try {
            StackusageFactory theStackusageFactory = (StackusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r/su");
            if (theStackusageFactory != null) {
                return theStackusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new StackusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMeasuredStackUsage();
            }
            case 1: {
                return this.createRoughEstimateStackUsage();
            }
            case 2: {
                return this.createWorstCaseStackUsage();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MeasuredStackUsage createMeasuredStackUsage() {
        MeasuredStackUsageImpl measuredStackUsage = new MeasuredStackUsageImpl();
        return measuredStackUsage;
    }

    public RoughEstimateStackUsage createRoughEstimateStackUsage() {
        RoughEstimateStackUsageImpl roughEstimateStackUsage = new RoughEstimateStackUsageImpl();
        return roughEstimateStackUsage;
    }

    public WorstCaseStackUsage createWorstCaseStackUsage() {
        WorstCaseStackUsageImpl worstCaseStackUsage = new WorstCaseStackUsageImpl();
        return worstCaseStackUsage;
    }

    public StackusagePackage getStackusagePackage() {
        return (StackusagePackage)this.getEPackage();
    }

    @Deprecated
    public static StackusagePackage getPackage() {
        return StackusagePackage.eINSTANCE;
    }
}

