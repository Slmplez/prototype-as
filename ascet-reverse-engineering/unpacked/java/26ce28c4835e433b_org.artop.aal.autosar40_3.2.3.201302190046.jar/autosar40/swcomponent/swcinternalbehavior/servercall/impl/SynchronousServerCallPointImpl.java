/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.swcinternalbehavior.servercall.impl;

import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.ServerCallPointImpl;
import org.eclipse.emf.ecore.EClass;

public class SynchronousServerCallPointImpl
extends ServerCallPointImpl
implements SynchronousServerCallPoint {
    protected SynchronousServerCallPointImpl() {
    }

    protected EClass eStaticClass() {
        return ServercallPackage.Literals.SYNCHRONOUS_SERVER_CALL_POINT;
    }
}

