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
package autosar40.swcomponent.swcinternalbehavior.runnableentity.impl;

import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableEntityArgument;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityFactory;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.impl.RunnableEntityArgumentImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class RunnableentityFactoryImpl
extends EFactoryImpl
implements RunnableentityFactory {
    public static RunnableentityFactory init() {
        try {
            RunnableentityFactory theRunnableentityFactory = (RunnableentityFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/re");
            if (theRunnableentityFactory != null) {
                return theRunnableentityFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new RunnableentityFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createRunnableEntityArgument();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public RunnableEntityArgument createRunnableEntityArgument() {
        RunnableEntityArgumentImpl runnableEntityArgument = new RunnableEntityArgumentImpl();
        return runnableEntityArgument;
    }

    public RunnableentityPackage getRunnableentityPackage() {
        return (RunnableentityPackage)this.getEPackage();
    }

    @Deprecated
    public static RunnableentityPackage getPackage() {
        return RunnableentityPackage.eINSTANCE;
    }
}

