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
package autosar40.commonstructure.timing.timingconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.TimingconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.TimingconstraintPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TimingconstraintFactoryImpl
extends EFactoryImpl
implements TimingconstraintFactory {
    public static TimingconstraintFactory init() {
        try {
            TimingconstraintFactory theTimingconstraintFactory = (TimingconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc");
            if (theTimingconstraintFactory != null) {
                return theTimingconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TimingconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TimingconstraintPackage getTimingconstraintPackage() {
        return (TimingconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static TimingconstraintPackage getPackage() {
        return TimingconstraintPackage.eINSTANCE;
    }
}

