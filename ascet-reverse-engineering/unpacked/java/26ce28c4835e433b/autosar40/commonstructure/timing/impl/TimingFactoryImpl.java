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
package autosar40.commonstructure.timing.impl;

import autosar40.commonstructure.timing.BswModuleTiming;
import autosar40.commonstructure.timing.EcuTiming;
import autosar40.commonstructure.timing.SwcTiming;
import autosar40.commonstructure.timing.SystemTiming;
import autosar40.commonstructure.timing.TimingFactory;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.VfbTiming;
import autosar40.commonstructure.timing.impl.BswModuleTimingImpl;
import autosar40.commonstructure.timing.impl.EcuTimingImpl;
import autosar40.commonstructure.timing.impl.SwcTimingImpl;
import autosar40.commonstructure.timing.impl.SystemTimingImpl;
import autosar40.commonstructure.timing.impl.VfbTimingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TimingFactoryImpl
extends EFactoryImpl
implements TimingFactory {
    public static TimingFactory init() {
        try {
            TimingFactory theTimingFactory = (TimingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t");
            if (theTimingFactory != null) {
                return theTimingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TimingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswModuleTiming();
            }
            case 2: {
                return this.createEcuTiming();
            }
            case 3: {
                return this.createSwcTiming();
            }
            case 4: {
                return this.createSystemTiming();
            }
            case 5: {
                return this.createVfbTiming();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BswModuleTiming createBswModuleTiming() {
        BswModuleTimingImpl bswModuleTiming = new BswModuleTimingImpl();
        return bswModuleTiming;
    }

    public EcuTiming createEcuTiming() {
        EcuTimingImpl ecuTiming = new EcuTimingImpl();
        return ecuTiming;
    }

    public SwcTiming createSwcTiming() {
        SwcTimingImpl swcTiming = new SwcTimingImpl();
        return swcTiming;
    }

    public SystemTiming createSystemTiming() {
        SystemTimingImpl systemTiming = new SystemTimingImpl();
        return systemTiming;
    }

    public VfbTiming createVfbTiming() {
        VfbTimingImpl vfbTiming = new VfbTimingImpl();
        return vfbTiming;
    }

    public TimingPackage getTimingPackage() {
        return (TimingPackage)this.getEPackage();
    }

    @Deprecated
    public static TimingPackage getPackage() {
        return TimingPackage.eINSTANCE;
    }
}

