/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.impl.TimingconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TimingconstraintFactory
extends EFactory {
    public static final TimingconstraintFactory eINSTANCE = TimingconstraintFactoryImpl.init();

    public TimingconstraintPackage getTimingconstraintPackage();
}

