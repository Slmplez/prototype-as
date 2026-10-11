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
package autosar40.commonstructure.timing.timingdescription.impl;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionFactory;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventChainImpl;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TimingdescriptionFactoryImpl
extends EFactoryImpl
implements TimingdescriptionFactory {
    public static TimingdescriptionFactory init() {
        try {
            TimingdescriptionFactory theTimingdescriptionFactory = (TimingdescriptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td");
            if (theTimingdescriptionFactory != null) {
                return theTimingdescriptionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TimingdescriptionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createTimingDescriptionEvent();
            }
            case 2: {
                return this.createTimingDescriptionEventChain();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TimingDescriptionEvent createTimingDescriptionEvent() {
        TimingDescriptionEventImpl timingDescriptionEvent = new TimingDescriptionEventImpl();
        return timingDescriptionEvent;
    }

    public TimingDescriptionEventChain createTimingDescriptionEventChain() {
        TimingDescriptionEventChainImpl timingDescriptionEventChain = new TimingDescriptionEventChainImpl();
        return timingDescriptionEventChain;
    }

    public TimingdescriptionPackage getTimingdescriptionPackage() {
        return (TimingdescriptionPackage)this.getEPackage();
    }

    @Deprecated
    public static TimingdescriptionPackage getPackage() {
        return TimingdescriptionPackage.eINSTANCE;
    }
}

