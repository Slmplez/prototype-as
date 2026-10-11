/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.ecuresource.memory.impl;

import autosar3x.ecuresource.memory.MemoryAccess;
import autosar3x.ecuresource.memory.MemoryAccessTypeEnum;
import autosar3x.ecuresource.memory.MemoryFactory;
import autosar3x.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar3x.ecuresource.memory.MemoryMappedHWPort;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.MemorySegmentUsageEnum;
import autosar3x.ecuresource.memory.ProvidedMemorySegment;
import autosar3x.ecuresource.memory.ProvidedNVMemorySegment;
import autosar3x.ecuresource.memory.impl.MemoryAccessImpl;
import autosar3x.ecuresource.memory.impl.MemoryMappedAssemblyHWConnectionImpl;
import autosar3x.ecuresource.memory.impl.MemoryMappedDelegationHWConnectionImpl;
import autosar3x.ecuresource.memory.impl.MemoryMappedHWPortImpl;
import autosar3x.ecuresource.memory.impl.ProvidedMemorySegmentImpl;
import autosar3x.ecuresource.memory.impl.ProvidedNVMemorySegmentImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MemoryFactoryImpl
extends EFactoryImpl
implements MemoryFactory {
    public static MemoryFactory init() {
        try {
            MemoryFactory theMemoryFactory = (MemoryFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/m");
            if (theMemoryFactory != null) {
                return theMemoryFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MemoryFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMemoryAccess();
            }
            case 1: {
                return this.createMemoryMappedAssemblyHWConnection();
            }
            case 2: {
                return this.createMemoryMappedDelegationHWConnection();
            }
            case 3: {
                return this.createProvidedMemorySegment();
            }
            case 4: {
                return this.createProvidedNVMemorySegment();
            }
            case 5: {
                return this.createMemoryMappedHWPort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createMemoryAccessTypeEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createMemorySegmentUsageEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertMemoryAccessTypeEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertMemorySegmentUsageEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public MemoryAccess createMemoryAccess() {
        MemoryAccessImpl memoryAccess = new MemoryAccessImpl();
        return memoryAccess;
    }

    public MemoryMappedAssemblyHWConnection createMemoryMappedAssemblyHWConnection() {
        MemoryMappedAssemblyHWConnectionImpl memoryMappedAssemblyHWConnection = new MemoryMappedAssemblyHWConnectionImpl();
        return memoryMappedAssemblyHWConnection;
    }

    public MemoryMappedDelegationHWConnection createMemoryMappedDelegationHWConnection() {
        MemoryMappedDelegationHWConnectionImpl memoryMappedDelegationHWConnection = new MemoryMappedDelegationHWConnectionImpl();
        return memoryMappedDelegationHWConnection;
    }

    public ProvidedMemorySegment createProvidedMemorySegment() {
        ProvidedMemorySegmentImpl providedMemorySegment = new ProvidedMemorySegmentImpl();
        return providedMemorySegment;
    }

    public ProvidedNVMemorySegment createProvidedNVMemorySegment() {
        ProvidedNVMemorySegmentImpl providedNVMemorySegment = new ProvidedNVMemorySegmentImpl();
        return providedNVMemorySegment;
    }

    public MemoryMappedHWPort createMemoryMappedHWPort() {
        MemoryMappedHWPortImpl memoryMappedHWPort = new MemoryMappedHWPortImpl();
        return memoryMappedHWPort;
    }

    public MemoryAccessTypeEnum createMemoryAccessTypeEnumFromString(EDataType eDataType, String initialValue) {
        MemoryAccessTypeEnum result = MemoryAccessTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryAccessTypeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MemorySegmentUsageEnum createMemorySegmentUsageEnumFromString(EDataType eDataType, String initialValue) {
        MemorySegmentUsageEnum result = MemorySegmentUsageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemorySegmentUsageEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MemoryPackage getMemoryPackage() {
        return (MemoryPackage)this.getEPackage();
    }

    @Deprecated
    public static MemoryPackage getPackage() {
        return MemoryPackage.eINSTANCE;
    }
}

