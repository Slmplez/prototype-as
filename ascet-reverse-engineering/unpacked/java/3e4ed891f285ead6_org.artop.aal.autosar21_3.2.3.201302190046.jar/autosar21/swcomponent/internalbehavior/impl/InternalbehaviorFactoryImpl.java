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
package autosar21.swcomponent.internalbehavior.impl;

import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorFactory;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.impl.InternalBehaviorImpl;
import autosar21.swcomponent.internalbehavior.impl.RunnableEntityImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InternalbehaviorFactoryImpl
extends EFactoryImpl
implements InternalbehaviorFactory {
    public static InternalbehaviorFactory init() {
        try {
            InternalbehaviorFactory theInternalbehaviorFactory = (InternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib");
            if (theInternalbehaviorFactory != null) {
                return theInternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createInternalBehavior();
            }
            case 1: {
                return this.createRunnableEntity();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public InternalBehavior createInternalBehavior() {
        InternalBehaviorImpl internalBehavior = new InternalBehaviorImpl();
        return internalBehavior;
    }

    public RunnableEntity createRunnableEntity() {
        RunnableEntityImpl runnableEntity = new RunnableEntityImpl();
        return runnableEntity;
    }

    public InternalbehaviorPackage getInternalbehaviorPackage() {
        return (InternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static InternalbehaviorPackage getPackage() {
        return InternalbehaviorPackage.eINSTANCE;
    }
}

