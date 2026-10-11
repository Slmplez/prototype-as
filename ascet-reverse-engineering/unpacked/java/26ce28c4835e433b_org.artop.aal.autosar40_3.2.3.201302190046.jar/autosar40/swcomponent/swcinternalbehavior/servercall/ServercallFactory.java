/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.servercall;

import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.ServercallFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServercallFactory
extends EFactory {
    public static final ServercallFactory eINSTANCE = ServercallFactoryImpl.init();

    public AsynchronousServerCallPoint createAsynchronousServerCallPoint();

    public SynchronousServerCallPoint createSynchronousServerCallPoint();

    public AsynchronousServerCallResultPoint createAsynchronousServerCallResultPoint();

    public ServercallPackage getServercallPackage();
}

