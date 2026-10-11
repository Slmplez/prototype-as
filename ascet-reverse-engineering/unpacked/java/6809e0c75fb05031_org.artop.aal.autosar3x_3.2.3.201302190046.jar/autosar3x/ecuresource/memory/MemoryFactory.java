/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.memory;

import autosar3x.ecuresource.memory.MemoryAccess;
import autosar3x.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedHWPort;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.ProvidedMemorySegment;
import autosar3x.ecuresource.memory.ProvidedNVMemorySegment;
import autosar3x.ecuresource.memory.impl.MemoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MemoryFactory
extends EFactory {
    public static final MemoryFactory eINSTANCE = MemoryFactoryImpl.init();

    public MemoryAccess createMemoryAccess();

    public MemoryMappedAssemblyHWConnection createMemoryMappedAssemblyHWConnection();

    public MemoryMappedDelegationHWConnection createMemoryMappedDelegationHWConnection();

    public ProvidedMemorySegment createProvidedMemorySegment();

    public ProvidedNVMemorySegment createProvidedNVMemorySegment();

    public MemoryMappedHWPort createMemoryMappedHWPort();

    public MemoryPackage getMemoryPackage();
}

