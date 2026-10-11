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
package autosar21.ecuresource.memory.impl;

import autosar21.ecuresource.memory.MemoryFactory;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnectionSegmentUsageEnum;
import autosar21.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.memory.MemoryMappedHWPortHwPortTypeEnum;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedMemorySegment;
import autosar21.ecuresource.memory.ProvidedNVMemorySegment;
import autosar21.ecuresource.memory.impl.MemoryMappedAssemblyHWConnectionImpl;
import autosar21.ecuresource.memory.impl.MemoryMappedDelegationHWConnectionImpl;
import autosar21.ecuresource.memory.impl.MemoryMappedHWPortImpl;
import autosar21.ecuresource.memory.impl.ProvidedMemorySegmentImpl;
import autosar21.ecuresource.memory.impl.ProvidedNVMemorySegmentImpl;
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
            MemoryFactory theMemoryFactory = (MemoryFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecur/m");
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
                return this.createMemoryMappedAssemblyHWConnection();
            }
            case 1: {
                return this.createMemoryMappedDelegationHWConnection();
            }
            case 2: {
                return this.createProvidedMemorySegment();
            }
            case 3: {
                return this.createProvidedNVMemorySegment();
            }
            case 4: {
                return this.createMemoryMappedHWPort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createMemoryMappedAssemblyHWConnectionSegmentUsageEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createMemoryMappedHWPortHwPortTypeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertMemoryMappedAssemblyHWConnectionSegmentUsageEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertMemoryMappedHWPortHwPortTypeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
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

    public MemoryMappedAssemblyHWConnectionSegmentUsageEnum createMemoryMappedAssemblyHWConnectionSegmentUsageEnumFromString(EDataType eDataType, String initialValue) {
        MemoryMappedAssemblyHWConnectionSegmentUsageEnum result = MemoryMappedAssemblyHWConnectionSegmentUsageEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryMappedAssemblyHWConnectionSegmentUsageEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public MemoryMappedHWPortHwPortTypeEnum createMemoryMappedHWPortHwPortTypeEnumFromString(EDataType eDataType, String initialValue) {
        MemoryMappedHWPortHwPortTypeEnum result = MemoryMappedHWPortHwPortTypeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMemoryMappedHWPortHwPortTypeEnumToString(EDataType eDataType, Object instanceValue) {
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

