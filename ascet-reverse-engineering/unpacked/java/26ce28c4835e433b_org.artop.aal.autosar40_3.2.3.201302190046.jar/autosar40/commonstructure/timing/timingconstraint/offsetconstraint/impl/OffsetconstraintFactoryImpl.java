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
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.impl.OffsetTimingConstraintImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class OffsetconstraintFactoryImpl
extends EFactoryImpl
implements OffsetconstraintFactory {
    public static OffsetconstraintFactory init() {
        try {
            OffsetconstraintFactory theOffsetconstraintFactory = (OffsetconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/oc");
            if (theOffsetconstraintFactory != null) {
                return theOffsetconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new OffsetconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createOffsetTimingConstraint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public OffsetTimingConstraint createOffsetTimingConstraint() {
        OffsetTimingConstraintImpl offsetTimingConstraint = new OffsetTimingConstraintImpl();
        return offsetTimingConstraint;
    }

    public OffsetconstraintPackage getOffsetconstraintPackage() {
        return (OffsetconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static OffsetconstraintPackage getPackage() {
        return OffsetconstraintPackage.eINSTANCE;
    }
}

