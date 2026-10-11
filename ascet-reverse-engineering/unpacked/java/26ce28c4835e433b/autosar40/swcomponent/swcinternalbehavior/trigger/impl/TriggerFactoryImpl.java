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
package autosar40.swcomponent.swcinternalbehavior.trigger.impl;

import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerFactory;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.ExternalTriggeringPointImpl;
import autosar40.swcomponent.swcinternalbehavior.trigger.impl.InternalTriggeringPointImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TriggerFactoryImpl
extends EFactoryImpl
implements TriggerFactory {
    public static TriggerFactory init() {
        try {
            TriggerFactory theTriggerFactory = (TriggerFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/t");
            if (theTriggerFactory != null) {
                return theTriggerFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TriggerFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createExternalTriggeringPoint();
            }
            case 1: {
                return this.createInternalTriggeringPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ExternalTriggeringPoint createExternalTriggeringPoint() {
        ExternalTriggeringPointImpl externalTriggeringPoint = new ExternalTriggeringPointImpl();
        return externalTriggeringPoint;
    }

    public InternalTriggeringPoint createInternalTriggeringPoint() {
        InternalTriggeringPointImpl internalTriggeringPoint = new InternalTriggeringPointImpl();
        return internalTriggeringPoint;
    }

    public TriggerPackage getTriggerPackage() {
        return (TriggerPackage)this.getEPackage();
    }

    @Deprecated
    public static TriggerPackage getPackage() {
        return TriggerPackage.eINSTANCE;
    }
}

