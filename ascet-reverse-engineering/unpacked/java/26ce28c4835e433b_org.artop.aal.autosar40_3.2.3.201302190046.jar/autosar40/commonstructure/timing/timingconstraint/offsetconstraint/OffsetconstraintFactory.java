/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint;

import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl.OffsetconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface OffsetconstraintFactory
extends EFactory {
    public static final OffsetconstraintFactory eINSTANCE = OffsetconstraintFactoryImpl.init();

    public OffsetTimingConstraint createOffsetTimingConstraint();

    public OffsetconstraintPackage getOffsetconstraintPackage();
}

