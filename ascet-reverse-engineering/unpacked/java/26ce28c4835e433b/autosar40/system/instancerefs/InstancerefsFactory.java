/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.instancerefs;

import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.OperationInSystemInstanceRef;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
import autosar40.system.instancerefs.impl.InstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsFactory
extends EFactory {
    public static final InstancerefsFactory eINSTANCE = InstancerefsFactoryImpl.init();

    public OperationInSystemInstanceRef createOperationInSystemInstanceRef();

    public PortGroupInSystemInstanceRef createPortGroupInSystemInstanceRef();

    public VariableDataPrototypeInSystemInstanceRef createVariableDataPrototypeInSystemInstanceRef();

    public ComponentInSystemInstanceRef createComponentInSystemInstanceRef();

    public InstancerefsPackage getInstancerefsPackage();
}

