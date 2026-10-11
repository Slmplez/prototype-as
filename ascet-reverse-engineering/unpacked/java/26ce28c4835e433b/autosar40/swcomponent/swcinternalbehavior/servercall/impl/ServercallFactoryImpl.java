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
package autosar40.swcomponent.swcinternalbehavior.servercall.impl;

import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallFactory;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.AsynchronousServerCallPointImpl;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.AsynchronousServerCallResultPointImpl;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.SynchronousServerCallPointImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServercallFactoryImpl
extends EFactoryImpl
implements ServercallFactory {
    public static ServercallFactory init() {
        try {
            ServercallFactory theServercallFactory = (ServercallFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/sc");
            if (theServercallFactory != null) {
                return theServercallFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServercallFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAsynchronousServerCallPoint();
            }
            case 2: {
                return this.createSynchronousServerCallPoint();
            }
            case 3: {
                return this.createAsynchronousServerCallResultPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AsynchronousServerCallPoint createAsynchronousServerCallPoint() {
        AsynchronousServerCallPointImpl asynchronousServerCallPoint = new AsynchronousServerCallPointImpl();
        return asynchronousServerCallPoint;
    }

    public SynchronousServerCallPoint createSynchronousServerCallPoint() {
        SynchronousServerCallPointImpl synchronousServerCallPoint = new SynchronousServerCallPointImpl();
        return synchronousServerCallPoint;
    }

    public AsynchronousServerCallResultPoint createAsynchronousServerCallResultPoint() {
        AsynchronousServerCallResultPointImpl asynchronousServerCallResultPoint = new AsynchronousServerCallResultPointImpl();
        return asynchronousServerCallResultPoint;
    }

    public ServercallPackage getServercallPackage() {
        return (ServercallPackage)this.getEPackage();
    }

    @Deprecated
    public static ServercallPackage getPackage() {
        return ServercallPackage.eINSTANCE;
    }
}

