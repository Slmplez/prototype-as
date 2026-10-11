/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
import org.eclipse.emf.ecore.EClass;

public abstract class VariableInAtomicSwcInstanceRefImpl
extends AtpInstanceRefImpl
implements VariableInAtomicSwcInstanceRef {
    protected VariableInAtomicSwcInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF;
    }
}

