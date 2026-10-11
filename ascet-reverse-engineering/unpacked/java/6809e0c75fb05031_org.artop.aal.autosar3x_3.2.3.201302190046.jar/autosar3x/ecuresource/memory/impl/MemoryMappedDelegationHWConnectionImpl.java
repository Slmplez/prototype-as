/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.memory.impl;

import autosar3x.ecuresource.impl.DelegationHWConnectionImpl;
import autosar3x.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar3x.ecuresource.memory.MemoryPackage;
import org.eclipse.emf.ecore.EClass;

public class MemoryMappedDelegationHWConnectionImpl
extends DelegationHWConnectionImpl
implements MemoryMappedDelegationHWConnection {
    protected MemoryMappedDelegationHWConnectionImpl() {
    }

    protected EClass eStaticClass() {
        return MemoryPackage.Literals.MEMORY_MAPPED_DELEGATION_HW_CONNECTION;
    }
}

