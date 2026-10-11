/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import org.eclipse.emf.ecore.EClass;

public abstract class OperationInAtomicSwcInstanceRefImpl
extends AtpInstanceRefImpl
implements OperationInAtomicSwcInstanceRef {
    protected OperationInAtomicSwcInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.OPERATION_IN_ATOMIC_SWC_INSTANCE_REF;
    }
}

