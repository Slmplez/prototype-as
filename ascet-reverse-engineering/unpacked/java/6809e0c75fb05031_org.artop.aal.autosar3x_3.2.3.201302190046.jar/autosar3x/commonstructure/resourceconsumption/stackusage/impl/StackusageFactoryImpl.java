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
package autosar3x.commonstructure.resourceconsumption.stackusage.impl;

import autosar3x.commonstructure.resourceconsumption.stackusage.MeasuredStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.RoughEstimateStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusageFactory;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.WorstCaseStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.MeasuredStackUsageImpl;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.RoughEstimateStackUsageImpl;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.WorstCaseStackUsageImpl;
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
            StackusageFactory theStackusageFactory = (StackusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/rc/su");
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
            case 2: {
                return this.createRoughEstimateStackUsage();
            }
            case 3: {
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

