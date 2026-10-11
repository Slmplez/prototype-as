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
package autosar3x.swcomponent.swcinternalbehavior.servercall.impl;

import autosar3x.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallFactory;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.AsynchronousServerCallPointImpl;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.SynchronousServerCallPointImpl;
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
            ServercallFactory theServercallFactory = (ServercallFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/sc");
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
            case 1: {
                return this.createSynchronousServerCallPoint();
            }
            case 2: {
                return this.createAsynchronousServerCallPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SynchronousServerCallPoint createSynchronousServerCallPoint() {
        SynchronousServerCallPointImpl synchronousServerCallPoint = new SynchronousServerCallPointImpl();
        return synchronousServerCallPoint;
    }

    public AsynchronousServerCallPoint createAsynchronousServerCallPoint() {
        AsynchronousServerCallPointImpl asynchronousServerCallPoint = new AsynchronousServerCallPointImpl();
        return asynchronousServerCallPoint;
    }

    public ServercallPackage getServercallPackage() {
        return (ServercallPackage)this.getEPackage();
    }

    @Deprecated
    public static ServercallPackage getPackage() {
        return ServercallPackage.eINSTANCE;
    }
}

