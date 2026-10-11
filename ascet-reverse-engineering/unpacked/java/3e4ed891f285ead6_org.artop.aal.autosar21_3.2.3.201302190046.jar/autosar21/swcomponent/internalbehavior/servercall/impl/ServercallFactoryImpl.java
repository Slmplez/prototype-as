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
package autosar21.swcomponent.internalbehavior.servercall.impl;

import autosar21.swcomponent.internalbehavior.servercall.AsynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.ServercallFactory;
import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.internalbehavior.servercall.SynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.impl.AsynchronousServerCallPointImpl;
import autosar21.swcomponent.internalbehavior.servercall.impl.SynchronousServerCallPointImpl;
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
            ServercallFactory theServercallFactory = (ServercallFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/sc");
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
            case 1: {
                return this.createSynchronousServerCallPoint();
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

    public ServercallPackage getServercallPackage() {
        return (ServercallPackage)this.getEPackage();
    }

    @Deprecated
    public static ServercallPackage getPackage() {
        return ServercallPackage.eINSTANCE;
    }
}

