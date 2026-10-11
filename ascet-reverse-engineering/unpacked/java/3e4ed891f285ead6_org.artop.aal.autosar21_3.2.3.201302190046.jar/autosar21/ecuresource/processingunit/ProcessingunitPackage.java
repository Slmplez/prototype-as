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
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.processingunit.ProcessingunitFactory;
import autosar21.ecuresource.processingunit.impl.ProcessingunitPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ProcessingunitPackage
extends EPackage {
    public static final String eNAME = "processingunit";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecur/pu";
    public static final String eNS_PREFIX = "";
    public static final ProcessingunitPackage eINSTANCE = ProcessingunitPackageImpl.init();
    public static final int INTERRUPT_HW_PORT = 1;
    public static final int INTERRUPT_HW_PORT__GCHECKSUM = 0;
    public static final int INTERRUPT_HW_PORT__GTIMESTAMP = 1;
    public static final int INTERRUPT_HW_PORT__CHECKSUM = 2;
    public static final int INTERRUPT_HW_PORT__TIMESTAMP = 3;
    public static final int INTERRUPT_HW_PORT__GSHORT_NAME = 4;
    public static final int INTERRUPT_HW_PORT__GUUID = 5;
    public static final int INTERRUPT_HW_PORT__GCATEGORY = 6;
    public static final int INTERRUPT_HW_PORT__GDESC = 7;
    public static final int INTERRUPT_HW_PORT__SHORT_NAME = 8;
    public static final int INTERRUPT_HW_PORT__LONG_NAME = 9;
    public static final int INTERRUPT_HW_PORT__DESC = 10;
    public static final int INTERRUPT_HW_PORT__CATEGORY = 11;
    public static final int INTERRUPT_HW_PORT__ADMIN_DATA = 12;
    public static final int INTERRUPT_HW_PORT__UUID = 13;
    public static final int INTERRUPT_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int INTERRUPT_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int INTERRUPT_HW_PORT__HW_ELEMENT = 16;
    public static final int INTERRUPT_HW_PORT__DIRECTION = 17;
    public static final int INTERRUPT_HW_PORT__PINS = 18;
    public static final int INTERRUPT_HW_PORT_FEATURE_COUNT = 19;
    public static final int INTERRUPT_CONSUME_HW_PORT = 0;
    public static final int INTERRUPT_CONSUME_HW_PORT__GCHECKSUM = 0;
    public static final int INTERRUPT_CONSUME_HW_PORT__GTIMESTAMP = 1;
    public static final int INTERRUPT_CONSUME_HW_PORT__CHECKSUM = 2;
    public static final int INTERRUPT_CONSUME_HW_PORT__TIMESTAMP = 3;
    public static final int INTERRUPT_CONSUME_HW_PORT__GSHORT_NAME = 4;
    public static final int INTERRUPT_CONSUME_HW_PORT__GUUID = 5;
    public static final int INTERRUPT_CONSUME_HW_PORT__GCATEGORY = 6;
    public static final int INTERRUPT_CONSUME_HW_PORT__GDESC = 7;
    public static final int INTERRUPT_CONSUME_HW_PORT__SHORT_NAME = 8;
    public static final int INTERRUPT_CONSUME_HW_PORT__LONG_NAME = 9;
    public static final int INTERRUPT_CONSUME_HW_PORT__DESC = 10;
    public static final int INTERRUPT_CONSUME_HW_PORT__CATEGORY = 11;
    public static final int INTERRUPT_CONSUME_HW_PORT__ADMIN_DATA = 12;
    public static final int INTERRUPT_CONSUME_HW_PORT__UUID = 13;
    public static final int INTERRUPT_CONSUME_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int INTERRUPT_CONSUME_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int INTERRUPT_CONSUME_HW_PORT__HW_ELEMENT = 16;
    public static final int INTERRUPT_CONSUME_HW_PORT__DIRECTION = 17;
    public static final int INTERRUPT_CONSUME_HW_PORT__PINS = 18;
    public static final int INTERRUPT_CONSUME_HW_PORT__ACTIVATION_SOURCE = 19;
    public static final int INTERRUPT_CONSUME_HW_PORT__LATENCY = 20;
    public static final int INTERRUPT_CONSUME_HW_PORT__MASKABLE = 21;
    public static final int INTERRUPT_CONSUME_HW_PORT__PRIORITY = 22;
    public static final int INTERRUPT_CONSUME_HW_PORT_FEATURE_COUNT = 23;
    public static final int MPU = 2;
    public static final int MPU__GCHECKSUM = 0;
    public static final int MPU__GTIMESTAMP = 1;
    public static final int MPU__CHECKSUM = 2;
    public static final int MPU__TIMESTAMP = 3;
    public static final int MPU__PROCESSING_UNIT = 4;
    public static final int MPU__CHANNEL_COUNT = 5;
    public static final int MPU__PROTECTED_MEMORY_HW_PORTS = 6;
    public static final int MPU__RAISED_INTERRUPTS = 7;
    public static final int MPU_FEATURE_COUNT = 8;
    public static final int PROCESSING_UNIT = 3;
    public static final int PROCESSING_UNIT__GCHECKSUM = 0;
    public static final int PROCESSING_UNIT__GTIMESTAMP = 1;
    public static final int PROCESSING_UNIT__CHECKSUM = 2;
    public static final int PROCESSING_UNIT__TIMESTAMP = 3;
    public static final int PROCESSING_UNIT__GSHORT_NAME = 4;
    public static final int PROCESSING_UNIT__GUUID = 5;
    public static final int PROCESSING_UNIT__GCATEGORY = 6;
    public static final int PROCESSING_UNIT__GDESC = 7;
    public static final int PROCESSING_UNIT__SHORT_NAME = 8;
    public static final int PROCESSING_UNIT__LONG_NAME = 9;
    public static final int PROCESSING_UNIT__DESC = 10;
    public static final int PROCESSING_UNIT__CATEGORY = 11;
    public static final int PROCESSING_UNIT__ADMIN_DATA = 12;
    public static final int PROCESSING_UNIT__UUID = 13;
    public static final int PROCESSING_UNIT__ALL_EXTENSIONS = 14;
    public static final int PROCESSING_UNIT__CONTAINED_EXTENSIONS = 15;
    public static final int PROCESSING_UNIT__GAR_PACKAGE = 16;
    public static final int PROCESSING_UNIT__AR_PACKAGE = 17;
    public static final int PROCESSING_UNIT__HW_ELEMENT_CONTAINER = 18;
    public static final int PROCESSING_UNIT__HW_ELEMENT_TEMPERATURE = 19;
    public static final int PROCESSING_UNIT__PORTS = 20;
    public static final int PROCESSING_UNIT__SIGNAL_TRANSFORMATIONS = 21;
    public static final int PROCESSING_UNIT__STANDBY_CURRENT = 22;
    public static final int PROCESSING_UNIT__SUPPORTS_SAFETY = 23;
    public static final int PROCESSING_UNIT__SUPPORTS_SECURITY = 24;
    public static final int PROCESSING_UNIT__ADDRESSING_MODES = 25;
    public static final int PROCESSING_UNIT__ARCHITECTURE_KIND = 26;
    public static final int PROCESSING_UNIT__ARCHITECTURE_NAME = 27;
    public static final int PROCESSING_UNIT__ARCHITECTURE_TYPE = 28;
    public static final int PROCESSING_UNIT__BOOT_TIME = 29;
    public static final int PROCESSING_UNIT__DMA_CHANNEL_COUNT = 30;
    public static final int PROCESSING_UNIT__IMPLEMENTATION_TECHNOLOGY = 31;
    public static final int PROCESSING_UNIT__MAX_INTERRUPT_NESTING_LEVELS = 32;
    public static final int PROCESSING_UNIT__MPU = 33;
    public static final int PROCESSING_UNIT__NATURAL_DATA_SIZE = 34;
    public static final int PROCESSING_UNIT__OPCODE_SIZE = 35;
    public static final int PROCESSING_UNIT__PU_CLOCK = 36;
    public static final int PROCESSING_UNIT__REGISTER_MODELS = 37;
    public static final int PROCESSING_UNIT__SPECIAL_OPCODES = 38;
    public static final int PROCESSING_UNIT__SUPPORTED_DATA_TYPES = 39;
    public static final int PROCESSING_UNIT_FEATURE_COUNT = 40;
    public static final int REGISTER = 4;
    public static final int REGISTER__GCHECKSUM = 0;
    public static final int REGISTER__GTIMESTAMP = 1;
    public static final int REGISTER__CHECKSUM = 2;
    public static final int REGISTER__TIMESTAMP = 3;
    public static final int REGISTER__PROCESSING_UNIT = 4;
    public static final int REGISTER__COUNT = 5;
    public static final int REGISTER__TYPE = 6;
    public static final int REGISTER_FEATURE_COUNT = 7;
    public static final int SUPPORTED_DATA_TYPE = 5;
    public static final int SUPPORTED_DATA_TYPE__GCHECKSUM = 0;
    public static final int SUPPORTED_DATA_TYPE__GTIMESTAMP = 1;
    public static final int SUPPORTED_DATA_TYPE__CHECKSUM = 2;
    public static final int SUPPORTED_DATA_TYPE__TIMESTAMP = 3;
    public static final int SUPPORTED_DATA_TYPE__GSHORT_NAME = 4;
    public static final int SUPPORTED_DATA_TYPE__GUUID = 5;
    public static final int SUPPORTED_DATA_TYPE__GCATEGORY = 6;
    public static final int SUPPORTED_DATA_TYPE__GDESC = 7;
    public static final int SUPPORTED_DATA_TYPE__SHORT_NAME = 8;
    public static final int SUPPORTED_DATA_TYPE__LONG_NAME = 9;
    public static final int SUPPORTED_DATA_TYPE__DESC = 10;
    public static final int SUPPORTED_DATA_TYPE__CATEGORY = 11;
    public static final int SUPPORTED_DATA_TYPE__ADMIN_DATA = 12;
    public static final int SUPPORTED_DATA_TYPE__UUID = 13;
    public static final int SUPPORTED_DATA_TYPE__ALL_EXTENSIONS = 14;
    public static final int SUPPORTED_DATA_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int SUPPORTED_DATA_TYPE__PROCESSING_UNIT = 16;
    public static final int SUPPORTED_DATA_TYPE__SUPPORTED_DATA_SIZES = 17;
    public static final int SUPPORTED_DATA_TYPE_FEATURE_COUNT = 18;
    public static final int INTERRUPT_PRODUCE_HW_PORT = 6;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GCHECKSUM = 0;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GTIMESTAMP = 1;
    public static final int INTERRUPT_PRODUCE_HW_PORT__CHECKSUM = 2;
    public static final int INTERRUPT_PRODUCE_HW_PORT__TIMESTAMP = 3;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GSHORT_NAME = 4;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GUUID = 5;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GCATEGORY = 6;
    public static final int INTERRUPT_PRODUCE_HW_PORT__GDESC = 7;
    public static final int INTERRUPT_PRODUCE_HW_PORT__SHORT_NAME = 8;
    public static final int INTERRUPT_PRODUCE_HW_PORT__LONG_NAME = 9;
    public static final int INTERRUPT_PRODUCE_HW_PORT__DESC = 10;
    public static final int INTERRUPT_PRODUCE_HW_PORT__CATEGORY = 11;
    public static final int INTERRUPT_PRODUCE_HW_PORT__ADMIN_DATA = 12;
    public static final int INTERRUPT_PRODUCE_HW_PORT__UUID = 13;
    public static final int INTERRUPT_PRODUCE_HW_PORT__ALL_EXTENSIONS = 14;
    public static final int INTERRUPT_PRODUCE_HW_PORT__CONTAINED_EXTENSIONS = 15;
    public static final int INTERRUPT_PRODUCE_HW_PORT__HW_ELEMENT = 16;
    public static final int INTERRUPT_PRODUCE_HW_PORT__DIRECTION = 17;
    public static final int INTERRUPT_PRODUCE_HW_PORT__PINS = 18;
    public static final int INTERRUPT_PRODUCE_HW_PORT__MPU = 19;
    public static final int INTERRUPT_PRODUCE_HW_PORT_FEATURE_COUNT = 20;
    public static final int PROCESSING_UNIT_ARCHITECTURE_KIND_ENUM = 7;
    public static final int PROCESSING_UNIT_SPECIAL_OPCODES_ENUM = 8;
    public static final int PROCESSING_UNIT_ADDRESSING_MODES_ENUM = 9;
    public static final int PROCESSING_UNIT_ARCHITECTURE_TYPE_ENUM = 10;
    public static final int REGISTER_TYPE_ENUM = 11;

    public EClass getInterruptConsumeHWPort();

    public EAttribute getInterruptConsumeHWPort_ActivationSource();

    public EAttribute getInterruptConsumeHWPort_Latency();

    public EAttribute getInterruptConsumeHWPort_Maskable();

    public EAttribute getInterruptConsumeHWPort_Priority();

    public EClass getInterruptHWPort();

    public EClass getMPU();

    public EReference getMPU_ProcessingUnit();

    public EAttribute getMPU_ChannelCount();

    public EReference getMPU_ProtectedMemoryHWPorts();

    public EReference getMPU_RaisedInterrupts();

    public EClass getProcessingUnit();

    public EAttribute getProcessingUnit_AddressingModes();

    public EAttribute getProcessingUnit_ArchitectureKind();

    public EAttribute getProcessingUnit_ArchitectureName();

    public EAttribute getProcessingUnit_ArchitectureType();

    public EReference getProcessingUnit_BootTime();

    public EAttribute getProcessingUnit_DmaChannelCount();

    public EAttribute getProcessingUnit_ImplementationTechnology();

    public EAttribute getProcessingUnit_MaxInterruptNestingLevels();

    public EReference getProcessingUnit_Mpu();

    public EAttribute getProcessingUnit_NaturalDataSize();

    public EAttribute getProcessingUnit_OpcodeSize();

    public EReference getProcessingUnit_PuClock();

    public EReference getProcessingUnit_RegisterModels();

    public EAttribute getProcessingUnit_SpecialOpcodes();

    public EReference getProcessingUnit_SupportedDataTypes();

    public EClass getRegister();

    public EReference getRegister_ProcessingUnit();

    public EAttribute getRegister_Count();

    public EAttribute getRegister_Type();

    public EClass getSupportedDataType();

    public EReference getSupportedDataType_ProcessingUnit();

    public EAttribute getSupportedDataType_SupportedDataSizes();

    public EClass getInterruptProduceHWPort();

    public EReference getInterruptProduceHWPort_MPU();

    public EEnum getProcessingUnitArchitectureKindEnum();

    public EEnum getProcessingUnitSpecialOpcodesEnum();

    public EEnum getProcessingUnitAddressingModesEnum();

    public EEnum getProcessingUnitArchitectureTypeEnum();

    public EEnum getRegisterTypeEnum();

    public ProcessingunitFactory getProcessingunitFactory();

    public static interface Literals {
        public static final EClass INTERRUPT_CONSUME_HW_PORT = eINSTANCE.getInterruptConsumeHWPort();
        public static final EAttribute INTERRUPT_CONSUME_HW_PORT__ACTIVATION_SOURCE = eINSTANCE.getInterruptConsumeHWPort_ActivationSource();
        public static final EAttribute INTERRUPT_CONSUME_HW_PORT__LATENCY = eINSTANCE.getInterruptConsumeHWPort_Latency();
        public static final EAttribute INTERRUPT_CONSUME_HW_PORT__MASKABLE = eINSTANCE.getInterruptConsumeHWPort_Maskable();
        public static final EAttribute INTERRUPT_CONSUME_HW_PORT__PRIORITY = eINSTANCE.getInterruptConsumeHWPort_Priority();
        public static final EClass INTERRUPT_HW_PORT = eINSTANCE.getInterruptHWPort();
        public static final EClass MPU = eINSTANCE.getMPU();
        public static final EReference MPU__PROCESSING_UNIT = eINSTANCE.getMPU_ProcessingUnit();
        public static final EAttribute MPU__CHANNEL_COUNT = eINSTANCE.getMPU_ChannelCount();
        public static final EReference MPU__PROTECTED_MEMORY_HW_PORTS = eINSTANCE.getMPU_ProtectedMemoryHWPorts();
        public static final EReference MPU__RAISED_INTERRUPTS = eINSTANCE.getMPU_RaisedInterrupts();
        public static final EClass PROCESSING_UNIT = eINSTANCE.getProcessingUnit();
        public static final EAttribute PROCESSING_UNIT__ADDRESSING_MODES = eINSTANCE.getProcessingUnit_AddressingModes();
        public static final EAttribute PROCESSING_UNIT__ARCHITECTURE_KIND = eINSTANCE.getProcessingUnit_ArchitectureKind();
        public static final EAttribute PROCESSING_UNIT__ARCHITECTURE_NAME = eINSTANCE.getProcessingUnit_ArchitectureName();
        public static final EAttribute PROCESSING_UNIT__ARCHITECTURE_TYPE = eINSTANCE.getProcessingUnit_ArchitectureType();
        public static final EReference PROCESSING_UNIT__BOOT_TIME = eINSTANCE.getProcessingUnit_BootTime();
        public static final EAttribute PROCESSING_UNIT__DMA_CHANNEL_COUNT = eINSTANCE.getProcessingUnit_DmaChannelCount();
        public static final EAttribute PROCESSING_UNIT__IMPLEMENTATION_TECHNOLOGY = eINSTANCE.getProcessingUnit_ImplementationTechnology();
        public static final EAttribute PROCESSING_UNIT__MAX_INTERRUPT_NESTING_LEVELS = eINSTANCE.getProcessingUnit_MaxInterruptNestingLevels();
        public static final EReference PROCESSING_UNIT__MPU = eINSTANCE.getProcessingUnit_Mpu();
        public static final EAttribute PROCESSING_UNIT__NATURAL_DATA_SIZE = eINSTANCE.getProcessingUnit_NaturalDataSize();
        public static final EAttribute PROCESSING_UNIT__OPCODE_SIZE = eINSTANCE.getProcessingUnit_OpcodeSize();
        public static final EReference PROCESSING_UNIT__PU_CLOCK = eINSTANCE.getProcessingUnit_PuClock();
        public static final EReference PROCESSING_UNIT__REGISTER_MODELS = eINSTANCE.getProcessingUnit_RegisterModels();
        public static final EAttribute PROCESSING_UNIT__SPECIAL_OPCODES = eINSTANCE.getProcessingUnit_SpecialOpcodes();
        public static final EReference PROCESSING_UNIT__SUPPORTED_DATA_TYPES = eINSTANCE.getProcessingUnit_SupportedDataTypes();
        public static final EClass REGISTER = eINSTANCE.getRegister();
        public static final EReference REGISTER__PROCESSING_UNIT = eINSTANCE.getRegister_ProcessingUnit();
        public static final EAttribute REGISTER__COUNT = eINSTANCE.getRegister_Count();
        public static final EAttribute REGISTER__TYPE = eINSTANCE.getRegister_Type();
        public static final EClass SUPPORTED_DATA_TYPE = eINSTANCE.getSupportedDataType();
        public static final EReference SUPPORTED_DATA_TYPE__PROCESSING_UNIT = eINSTANCE.getSupportedDataType_ProcessingUnit();
        public static final EAttribute SUPPORTED_DATA_TYPE__SUPPORTED_DATA_SIZES = eINSTANCE.getSupportedDataType_SupportedDataSizes();
        public static final EClass INTERRUPT_PRODUCE_HW_PORT = eINSTANCE.getInterruptProduceHWPort();
        public static final EReference INTERRUPT_PRODUCE_HW_PORT__MPU = eINSTANCE.getInterruptProduceHWPort_MPU();
        public static final EEnum PROCESSING_UNIT_ARCHITECTURE_KIND_ENUM = eINSTANCE.getProcessingUnitArchitectureKindEnum();
        public static final EEnum PROCESSING_UNIT_SPECIAL_OPCODES_ENUM = eINSTANCE.getProcessingUnitSpecialOpcodesEnum();
        public static final EEnum PROCESSING_UNIT_ADDRESSING_MODES_ENUM = eINSTANCE.getProcessingUnitAddressingModesEnum();
        public static final EEnum PROCESSING_UNIT_ARCHITECTURE_TYPE_ENUM = eINSTANCE.getProcessingUnitArchitectureTypeEnum();
        public static final EEnum REGISTER_TYPE_ENUM = eINSTANCE.getRegisterTypeEnum();
    }
}

