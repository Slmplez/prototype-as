/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing;

import autosar40.commonstructure.timing.BswModuleTiming;
import autosar40.commonstructure.timing.EcuTiming;
import autosar40.commonstructure.timing.SwcTiming;
import autosar40.commonstructure.timing.SystemTiming;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.VfbTiming;
import autosar40.commonstructure.timing.impl.TimingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TimingFactory
extends EFactory {
    public static final TimingFactory eINSTANCE = TimingFactoryImpl.init();

    public BswModuleTiming createBswModuleTiming();

    public EcuTiming createEcuTiming();

    public SwcTiming createSwcTiming();

    public SystemTiming createSystemTiming();

    public VfbTiming createVfbTiming();

    public TimingPackage getTimingPackage();
}

