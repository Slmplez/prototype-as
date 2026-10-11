/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.ecuresource.memory;

import autosar21.ecuresource.memory.MemoryFactory;
import autosar21.ecuresource.memory.impl.MemoryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MemoryPackage
extends EPackage {
    public static final String eNAME = "memory";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecur/m";
    public static final String eNS_PREFIX = "";
    public static final MemoryPackage eINSTANCE = MemoryPackageImpl.init();
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION = 0;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GCHECKSUM = 0;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GTIMESTAMP = 1;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CHECKSUM = 2;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__TIMESTAMP = 3;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GSHORT_NAME = 4;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GUUID = 5;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GCATEGORY = 6;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__GDESC = 7;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__SHORT_NAME = 8;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__LONG_NAME = 9;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__DESC = 10;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CATEGORY = 11;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__ADMIN_DATA = 12;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__UUID = 13;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__ALL_EXTENSIONS = 14;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CONTAINED_EXTENSIONS = 15;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__HW_ELEMENT_CONTAINER = 16;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CONNECTED_PINS = 17;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__HW_PORTS = 18;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__BASE_ADDRESS = 19;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__BYTE_ORDER = 20;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CACHABLE = 21;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__HW_CONNECTION_ACCESS = 22;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__SEGMENT_USAGES = 23;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION_FEATURE_COUNT = 24;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION = 1;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GCHECKSUM = 0;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GTIMESTAMP = 1;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__CHECKSUM = 2;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__TIMESTAMP = 3;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GSHORT_NAME = 4;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GUUID = 5;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GCATEGORY = 6;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__GDESC = 7;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__SHORT_NAME = 8;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__LONG_NAME = 9;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__DESC = 10;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__CATEGORY = 11;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__ADMIN_DATA = 12;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__UUID = 13;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__ALL_EXTENSIONS = 14;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__CONTAINED_EXTENSIONS = 15;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__HW_ELEMENT_CONTAINER = 16;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__CONNECTED_PINS = 17;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__INNER_PORT = 18;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION__OUTER_PORT = 19;
    public static final int MEMORY_MAPPED_DELEGATION_HW_CONNECTION_FEATURE_COUNT = 20;
    public static final int PROVIDED_MEMORY_SEGMENT = 2;
    public static final int PROVIDED_MEMORY_SEGMENT__GCHECKSUM = 0;
    public static final int PROVIDED_MEMORY_SEGMENT__GTIMESTAMP = 1;
    public static final int PROVIDED_MEMORY_SEGMENT__CHECKSUM = 2;
    public static final int PROVIDED_MEMORY_SEGMENT__TIMESTAMP = 3;
    public static final int PROVIDED_MEMORY_SEGMENT__GSHORT_NAME = 4;
    public static final int PROVIDED_MEMORY_SEGMENT__GUUID = 5;
    public static final int PROVIDED_MEMORY_SEGMENT__GCATEGORY = 6;
    public static final int PROVIDED_MEMORY_SEGMENT__GDESC = 7;
    public static final int PROVIDED_MEMORY_SEGMENT__SHORT_NAME = 8;
    public static final int PROVIDED_MEMORY_SEGMENT__LONG_NAME = 9;
    public static final int PROVIDED_MEMORY_SEGMENT__DESC = 10;
    public static final int PROVIDED_MEMORY_SEGMENT__CATEGORY = 11;
    public static final int PROVIDED_MEMORY_SEGMENT__ADMIN_DATA = 12;
    public static final int PROVIDED_MEMORY_SEGMENT__UUID = 13;
    public static final int PROVIDED_MEMORY_SEGMENT__ALL_EXTENSIONS = 14;
    public static final int PROVIDED_MEMORY_SEGMENT__CONTAINED_EXTENSIONS = 15;
    public static final int PROVIDED_MEMORY_SEGMENT__GAR_PACKAGE = 16;
    public static final int PROVIDED_MEMORY_SEGMENT__AR_PACKAGE = 17;
    public static final int PROVIDED_MEMORY_SEGMENT__HW_ELEMENT_CONTAINER = 18;
    public static final int PROVIDED_MEMORY_SEGMENT__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PROVIDED_MEMORY_SEGMENT__PORTS = 20;
    public static final int PROVIDED_MEMORY_SEGMENT__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PROVIDED_MEMORY_SEGMENT__STANDBY_CURRENT = 22;
    public static final int PROVIDED_MEMORY_SEGMENT__SUPPORTS_SAFETY = 23;
    public static final int PROVIDED_MEMORY_SEGMENT__SUPPORTS_SECURITY = 24;
    public static final int PROVIDED_MEMORY_SEGMENT__ALIGNMENT = 25;
    public static final int PROVIDED_MEMORY_SEGMENT__ARCHITECTURAL_QUALITY = 26;
    public static final int PROVIDED_MEMORY_SEGMENT__MANUFACTURING_QUALITY = 27;
    public static final int PROVIDED_MEMORY_SEGMENT__SEGMENT_SIZE = 28;
    public static final int PROVIDED_MEMORY_SEGMENT__SEPARATE = 29;
    public static final int PROVIDED_MEMORY_SEGMENT_FEATURE_COUNT = 30;
    public static final int PROVIDED_NV_MEMORY_SEGMENT = 3;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GCHECKSUM = 0;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GTIMESTAMP = 1;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__CHECKSUM = 2;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__TIMESTAMP = 3;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GSHORT_NAME = 4;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GUUID = 5;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GCATEGORY = 6;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GDESC = 7;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SHORT_NAME = 8;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__LONG_NAME = 9;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__DESC = 10;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__CATEGORY = 11;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__ADMIN_DATA = 12;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__UUID = 13;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__ALL_EXTENSIONS = 14;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__CONTAINED_EXTENSIONS = 15;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__GAR_PACKAGE = 16;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__AR_PACKAGE = 17;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__HW_ELEMENT_CONTAINER = 18;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__PORTS = 20;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__STANDBY_CURRENT = 22;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SUPPORTS_SAFETY = 23;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SUPPORTS_SECURITY = 24;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__ALIGNMENT = 25;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__ARCHITECTURAL_QUALITY = 26;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__MANUFACTURING_QUALITY = 27;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SEGMENT_SIZE = 28;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SEPARATE = 29;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__DATA_ENDURANCE = 30;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__DATA_RETENTION = 31;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__MARGIN_READ_AVAILABLE = 32;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SEGMENT_SIZE_ERASE = 33;
    public static final int PROVIDED_NV_MEMORY_SEGMENT__SEGMENT_SIZE_WRITE = 34;
    public static final int PROVIDED_NV_MEMORY_SEGMENT_FEATURE_COUNT = 35;
    public static final int MEMORY_MAPPED_HW_PORT = 4;
    public static final int MEMORY_MAPPED_HW_PORT__GCHECKSUM = 0;
    public static final int MEMORY_MAPPED_HW_PORT__GTIMESTAMP = 1;
    public static final int MEMORY_MAPPED_HW_PORT__CHECKSUM = 2;
    public static final int MEMORY_MAPPED_HW_PORT__TIMESTAMP = 3;
    public static final int MEMORY_MAPPED_HW_PORT__GSHORT_NAME = 4;
    public static final int MEMORY_MAPPED_HW_PORT__GUUID = 5;
    public static final int MEMORY_MAPPED_HW_PORT__GCATEGORY = 6;
    public static final int MEMORY_MAPPED_HW_PORT__GDESC = 7;
    public static final int MEMORY_MAPPED_HW_PORT__SHORT_NAME = 8;
    public static final int MEMORY_MAPPED_HW_PORT__LONG_NAME = 9;
    public static final int MEMORY_MAPPED_HW_PORT__DESC = 10;
    public static final int MEMORY_MAPPED_HW_PORT__CATEGORY = 11;
    public static final int MEMORY_MAPPED_HW_PORT__ADMIN_DATA = 12;
    public static final int MEMORY_MAPPED_HW_PORT__UUID = 13;
    public static final int MEMORY_MAPPED_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int MEMORY_MAPPED_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int MEMORY_MAPPED_HW_PORT__HW_ELEMENT = 16;
    public static final int MEMORY_MAPPED_HW_PORT__DIRECTION = 17;
    public static final int MEMORY_MAPPED_HW_PORT__PINS = 18;
    public static final int MEMORY_MAPPED_HW_PORT__DATA_INTERFACE_WIDTH = 19;
    public static final int MEMORY_MAPPED_HW_PORT__HW_PORT_TYPE = 20;
    public static final int MEMORY_MAPPED_HW_PORT_FEATURE_COUNT = 21;
    public static final int MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION_SEGMENT_USAGE_ENUM = 5;
    public static final int MEMORY_MAPPED_HW_PORT_HW_PORT_TYPE_ENUM = 6;

    public EClass getMemoryMappedAssemblyHWConnection();

    public EAttribute getMemoryMappedAssemblyHWConnection_BaseAddress();

    public EAttribute getMemoryMappedAssemblyHWConnection_ByteOrder();

    public EAttribute getMemoryMappedAssemblyHWConnection_Cachable();

    public EReference getMemoryMappedAssemblyHWConnection_HwConnectionAccess();

    public EAttribute getMemoryMappedAssemblyHWConnection_SegmentUsages();

    public EClass getMemoryMappedDelegationHWConnection();

    public EClass getProvidedMemorySegment();

    public EAttribute getProvidedMemorySegment_Alignment();

    public EReference getProvidedMemorySegment_ArchitecturalQuality();

    public EAttribute getProvidedMemorySegment_ManufacturingQuality();

    public EAttribute getProvidedMemorySegment_SegmentSize();

    public EAttribute getProvidedMemorySegment_Separate();

    public EClass getProvidedNVMemorySegment();

    public EAttribute getProvidedNVMemorySegment_DataEndurance();

    public EAttribute getProvidedNVMemorySegment_DataRetention();

    public EAttribute getProvidedNVMemorySegment_MarginReadAvailable();

    public EAttribute getProvidedNVMemorySegment_SegmentSizeErase();

    public EAttribute getProvidedNVMemorySegment_SegmentSizeWrite();

    public EClass getMemoryMappedHWPort();

    public EAttribute getMemoryMappedHWPort_DataInterfaceWidth();

    public EAttribute getMemoryMappedHWPort_HwPortType();

    public EEnum getMemoryMappedAssemblyHWConnectionSegmentUsageEnum();

    public EEnum getMemoryMappedHWPortHwPortTypeEnum();

    public MemoryFactory getMemoryFactory();

    public static interface Literals {
        public static final EClass MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION = eINSTANCE.getMemoryMappedAssemblyHWConnection();
        public static final EAttribute MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__BASE_ADDRESS = eINSTANCE.getMemoryMappedAssemblyHWConnection_BaseAddress();
        public static final EAttribute MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__BYTE_ORDER = eINSTANCE.getMemoryMappedAssemblyHWConnection_ByteOrder();
        public static final EAttribute MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__CACHABLE = eINSTANCE.getMemoryMappedAssemblyHWConnection_Cachable();
        public static final EReference MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__HW_CONNECTION_ACCESS = eINSTANCE.getMemoryMappedAssemblyHWConnection_HwConnectionAccess();
        public static final EAttribute MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION__SEGMENT_USAGES = eINSTANCE.getMemoryMappedAssemblyHWConnection_SegmentUsages();
        public static final EClass MEMORY_MAPPED_DELEGATION_HW_CONNECTION = eINSTANCE.getMemoryMappedDelegationHWConnection();
        public static final EClass PROVIDED_MEMORY_SEGMENT = eINSTANCE.getProvidedMemorySegment();
        public static final EAttribute PROVIDED_MEMORY_SEGMENT__ALIGNMENT = eINSTANCE.getProvidedMemorySegment_Alignment();
        public static final EReference PROVIDED_MEMORY_SEGMENT__ARCHITECTURAL_QUALITY = eINSTANCE.getProvidedMemorySegment_ArchitecturalQuality();
        public static final EAttribute PROVIDED_MEMORY_SEGMENT__MANUFACTURING_QUALITY = eINSTANCE.getProvidedMemorySegment_ManufacturingQuality();
        public static final EAttribute PROVIDED_MEMORY_SEGMENT__SEGMENT_SIZE = eINSTANCE.getProvidedMemorySegment_SegmentSize();
        public static final EAttribute PROVIDED_MEMORY_SEGMENT__SEPARATE = eINSTANCE.getProvidedMemorySegment_Separate();
        public static final EClass PROVIDED_NV_MEMORY_SEGMENT = eINSTANCE.getProvidedNVMemorySegment();
        public static final EAttribute PROVIDED_NV_MEMORY_SEGMENT__DATA_ENDURANCE = eINSTANCE.getProvidedNVMemorySegment_DataEndurance();
        public static final EAttribute PROVIDED_NV_MEMORY_SEGMENT__DATA_RETENTION = eINSTANCE.getProvidedNVMemorySegment_DataRetention();
        public static final EAttribute PROVIDED_NV_MEMORY_SEGMENT__MARGIN_READ_AVAILABLE = eINSTANCE.getProvidedNVMemorySegment_MarginReadAvailable();
        public static final EAttribute PROVIDED_NV_MEMORY_SEGMENT__SEGMENT_SIZE_ERASE = eINSTANCE.getProvidedNVMemorySegment_SegmentSizeErase();
        public static final EAttribute PROVIDED_NV_MEMORY_SEGMENT__SEGMENT_SIZE_WRITE = eINSTANCE.getProvidedNVMemorySegment_SegmentSizeWrite();
        public static final EClass MEMORY_MAPPED_HW_PORT = eINSTANCE.getMemoryMappedHWPort();
        public static final EAttribute MEMORY_MAPPED_HW_PORT__DATA_INTERFACE_WIDTH = eINSTANCE.getMemoryMappedHWPort_DataInterfaceWidth();
        public static final EAttribute MEMORY_MAPPED_HW_PORT__HW_PORT_TYPE = eINSTANCE.getMemoryMappedHWPort_HwPortType();
        public static final EEnum MEMORY_MAPPED_ASSEMBLY_HW_CONNECTION_SEGMENT_USAGE_ENUM = eINSTANCE.getMemoryMappedAssemblyHWConnectionSegmentUsageEnum();
        public static final EEnum MEMORY_MAPPED_HW_PORT_HW_PORT_TYPE_ENUM = eINSTANCE.getMemoryMappedHWPortHwPortTypeEnum();
    }
}

