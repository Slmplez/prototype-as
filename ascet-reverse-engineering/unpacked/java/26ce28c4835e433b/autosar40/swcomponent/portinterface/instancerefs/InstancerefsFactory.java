/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.portinterface.instancerefs;

import autosar40.swcomponent.portinterface.instancerefs.ApplicationCompositeElementInPortInterfaceInstanceRef;
import autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsFactory
extends EFactory {
    public static final InstancerefsFactory eINSTANCE = InstancerefsFactoryImpl.init();

    public ApplicationCompositeElementInPortInterfaceInstanceRef createApplicationCompositeElementInPortInterfaceInstanceRef();

    public InstancerefsPackage getInstancerefsPackage();
}

