/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.ageconstraint;

import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeConstraint;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl.AgeconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AgeconstraintFactory
extends EFactory {
    public static final AgeconstraintFactory eINSTANCE = AgeconstraintFactoryImpl.init();

    public AgeConstraint createAgeConstraint();

    public AgeconstraintPackage getAgeconstraintPackage();
}

