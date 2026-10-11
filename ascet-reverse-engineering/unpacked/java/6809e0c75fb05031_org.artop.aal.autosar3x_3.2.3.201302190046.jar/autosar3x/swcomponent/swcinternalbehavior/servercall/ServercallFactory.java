/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall;

import autosar3x.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.ServercallFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServercallFactory
extends EFactory {
    public static final ServercallFactory eINSTANCE = ServercallFactoryImpl.init();

    public SynchronousServerCallPoint createSynchronousServerCallPoint();

    public AsynchronousServerCallPoint createAsynchronousServerCallPoint();

    public ServercallPackage getServercallPackage();
}

