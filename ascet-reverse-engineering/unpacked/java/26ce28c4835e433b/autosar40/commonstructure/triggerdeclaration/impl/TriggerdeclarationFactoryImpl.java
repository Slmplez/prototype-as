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
package autosar40.commonstructure.triggerdeclaration.impl;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationFactory;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerImpl;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerMappingImpl;
import autosar40.commonstructure.triggerdeclaration.impl.TriggerRefConditionalImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TriggerdeclarationFactoryImpl
extends EFactoryImpl
implements TriggerdeclarationFactory {
    public static TriggerdeclarationFactory init() {
        try {
            TriggerdeclarationFactory theTriggerdeclarationFactory = (TriggerdeclarationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/td");
            if (theTriggerdeclarationFactory != null) {
                return theTriggerdeclarationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TriggerdeclarationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTrigger();
            }
            case 1: {
                return this.createTriggerMapping();
            }
            case 2: {
                return this.createTriggerRefConditional();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Trigger createTrigger() {
        TriggerImpl trigger = new TriggerImpl();
        return trigger;
    }

    public TriggerMapping createTriggerMapping() {
        TriggerMappingImpl triggerMapping = new TriggerMappingImpl();
        return triggerMapping;
    }

    public TriggerRefConditional createTriggerRefConditional() {
        TriggerRefConditionalImpl triggerRefConditional = new TriggerRefConditionalImpl();
        return triggerRefConditional;
    }

    public TriggerdeclarationPackage getTriggerdeclarationPackage() {
        return (TriggerdeclarationPackage)this.getEPackage();
    }

    @Deprecated
    public static TriggerdeclarationPackage getPackage() {
        return TriggerdeclarationPackage.eINSTANCE;
    }
}

