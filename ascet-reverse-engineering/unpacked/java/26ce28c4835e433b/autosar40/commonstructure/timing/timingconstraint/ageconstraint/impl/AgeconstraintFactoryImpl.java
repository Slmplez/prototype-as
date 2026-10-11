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
package autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeConstraint;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.impl.AgeConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AgeconstraintFactoryImpl
extends EFactoryImpl
implements AgeconstraintFactory {
    public static AgeconstraintFactory init() {
        try {
            AgeconstraintFactory theAgeconstraintFactory = (AgeconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/ac");
            if (theAgeconstraintFactory != null) {
                return theAgeconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AgeconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAgeConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AgeConstraint createAgeConstraint() {
        AgeConstraintImpl ageConstraint = new AgeConstraintImpl();
        return ageConstraint;
    }

    public AgeconstraintPackage getAgeconstraintPackage() {
        return (AgeconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static AgeconstraintPackage getPackage() {
        return AgeconstraintPackage.eINSTANCE;
    }
}

