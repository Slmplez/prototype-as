/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.impl.SynchronizationtimingconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SynchronizationtimingconstraintFactory
extends EFactory {
    public static final SynchronizationtimingconstraintFactory eINSTANCE = SynchronizationtimingconstraintFactoryImpl.init();

    public SynchronizationTimingConstraint createSynchronizationTimingConstraint();

    public SynchronizationtimingconstraintPackage getSynchronizationtimingconstraintPackage();
}

