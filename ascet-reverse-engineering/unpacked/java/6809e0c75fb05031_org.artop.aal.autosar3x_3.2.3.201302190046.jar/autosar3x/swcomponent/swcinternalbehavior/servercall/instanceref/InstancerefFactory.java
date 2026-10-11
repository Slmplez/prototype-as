/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.ServerCallPointOperation;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ServerCallPointOperation createServerCallPointOperation();

    public InstancerefPackage getInstancerefPackage();
}

