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
package autosar3x.swcomponent.swcinternalbehavior.impl;

import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorFactory;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.impl.InternalBehaviorImpl;
import autosar3x.swcomponent.swcinternalbehavior.impl.RunnableEntityImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwcinternalbehaviorFactoryImpl
extends EFactoryImpl
implements SwcinternalbehaviorFactory {
    public static SwcinternalbehaviorFactory init() {
        try {
            SwcinternalbehaviorFactory theSwcinternalbehaviorFactory = (SwcinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib");
            if (theSwcinternalbehaviorFactory != null) {
                return theSwcinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwcinternalbehaviorFactoryImpl();
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

    public SwcinternalbehaviorPackage getSwcinternalbehaviorPackage() {
        return (SwcinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static SwcinternalbehaviorPackage getPackage() {
        return SwcinternalbehaviorPackage.eINSTANCE;
    }
}

