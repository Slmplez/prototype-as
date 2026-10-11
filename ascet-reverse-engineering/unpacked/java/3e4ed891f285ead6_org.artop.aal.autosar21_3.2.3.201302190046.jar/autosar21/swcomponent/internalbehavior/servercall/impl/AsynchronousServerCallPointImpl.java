/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.internalbehavior.servercall.impl;

import autosar21.swcomponent.internalbehavior.servercall.AsynchronousServerCallPoint;
import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.internalbehavior.servercall.impl.ServerCallPointImpl;
import org.eclipse.emf.ecore.EClass;

public class AsynchronousServerCallPointImpl
extends ServerCallPointImpl
implements AsynchronousServerCallPoint {
    protected AsynchronousServerCallPointImpl() {
    }

    protected EClass eStaticClass() {
        return ServercallPackage.Literals.ASYNCHRONOUS_SERVER_CALL_POINT;
    }
}

