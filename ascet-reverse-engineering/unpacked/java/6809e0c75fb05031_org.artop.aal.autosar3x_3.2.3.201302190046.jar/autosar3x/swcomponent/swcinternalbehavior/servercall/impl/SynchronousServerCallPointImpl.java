/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall.impl;

import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.ServerCallPointImpl;
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

