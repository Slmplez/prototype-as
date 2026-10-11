/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.memory;

import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedMemorySegment;
import autosar21.ecuresource.memory.ProvidedNVMemorySegment;
import autosar21.ecuresource.memory.impl.MemoryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MemoryFactory
extends EFactory {
    public static final MemoryFactory eINSTANCE = MemoryFactoryImpl.init();

    public MemoryMappedAssemblyHWConnection createMemoryMappedAssemblyHWConnection();

    public MemoryMappedDelegationHWConnection createMemoryMappedDelegationHWConnection();

    public ProvidedMemorySegment createProvidedMemorySegment();

    public ProvidedNVMemorySegment createProvidedNVMemorySegment();

    public MemoryMappedHWPort createMemoryMappedHWPort();

    public MemoryPackage getMemoryPackage();
}

