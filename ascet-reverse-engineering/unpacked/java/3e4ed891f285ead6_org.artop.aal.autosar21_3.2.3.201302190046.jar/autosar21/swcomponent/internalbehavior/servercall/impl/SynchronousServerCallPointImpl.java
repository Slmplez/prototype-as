/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.internalbehavior.servercall.impl;

import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.internalbehavior.servercall.SynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.impl.ServerCallPointImpl;
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

