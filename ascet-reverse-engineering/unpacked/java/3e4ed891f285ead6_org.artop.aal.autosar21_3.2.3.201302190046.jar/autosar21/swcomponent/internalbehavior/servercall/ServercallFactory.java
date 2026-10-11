/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.servercall;

import autosar21.swcomponent.internalbehavior.servercall.AsynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.internalbehavior.servercall.SynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.impl.ServercallFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServercallFactory
extends EFactory {
    public static final ServercallFactory eINSTANCE = ServercallFactoryImpl.init();

    public AsynchronousServerCallPoint createAsynchronousServerCallPoint();

    public SynchronousServerCallPoint createSynchronousServerCallPoint();

    public ServercallPackage getServercallPackage();
}

