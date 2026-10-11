/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.memory.impl;

import autosar21.ecuresource.impl.DelegationHWConnectionImpl;
import autosar21.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar21.ecuresource.memory.MemoryPackage;
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

