/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.internalbehavior.servercall.instanceref;

import autosar21.swcomponent.internalbehavior.servercall.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.servercall.instanceref.ServerCallPointOperation;
import autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ServerCallPointOperation createServerCallPointOperation();

    public InstancerefPackage getInstancerefPackage();
}

