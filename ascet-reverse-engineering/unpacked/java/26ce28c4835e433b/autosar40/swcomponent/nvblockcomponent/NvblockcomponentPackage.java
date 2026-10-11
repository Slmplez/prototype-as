/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.nvblockcomponent;

import autosar40.swcomponent.nvblockcomponent.NvblockcomponentFactory;
import autosar40.swcomponent.nvblockcomponent.impl.NvblockcomponentPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface NvblockcomponentPackage
extends EPackage {
    public static final String eNAME = "nvblockcomponent";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/nbc";
    public static final String eNS_PREFIX = "";
    public static final NvblockcomponentPackage eINSTANCE = NvblockcomponentPackageImpl.init();
    public static final int NV_BLOCK_DATA_MAPPING = 0;
    public static final int NV_BLOCK_DATA_MAPPING__GCHECKSUM = 0;
    public static final int NV_BLOCK_DATA_MAPPING__GTIMESTAMP = 1;
    public static final int NV_BLOCK_DATA_MAPPING__CHECKSUM = 2;
    public static final int NV_BLOCK_DATA_MAPPING__TIMESTAMP = 3;
    public static final int NV_BLOCK_DATA_MAPPING__NV_BLOCK_DESCRIPTOR = 4;
    public static final int NV_BLOCK_DATA_MAPPING__NV_RAM_BLOCK_ELEMENT = 5;
    public static final int NV_BLOCK_DATA_MAPPING__READ_NV_DATA = 6;
    public static final int NV_BLOCK_DATA_MAPPING__WRITTEN_NV_DATA = 7;
    public static final int NV_BLOCK_DATA_MAPPING__VARIATION_POINT = 8;
    public static final int NV_BLOCK_DATA_MAPPING_FEATURE_COUNT = 9;
    public static final int NV_BLOCK_DESCRIPTOR = 1;
    public static final int NV_BLOCK_DESCRIPTOR__GCHECKSUM = 0;
    public static final int NV_BLOCK_DESCRIPTOR__GTIMESTAMP = 1;
    public static final int NV_BLOCK_DESCRIPTOR__CHECKSUM = 2;
    public static final int NV_BLOCK_DESCRIPTOR__TIMESTAMP = 3;
    public static final int NV_BLOCK_DESCRIPTOR__GSHORT_NAME = 4;
    public static final int NV_BLOCK_DESCRIPTOR__SHORT_NAME = 5;
    public static final int NV_BLOCK_DESCRIPTOR__LONG_NAME = 6;
    public static final int NV_BLOCK_DESCRIPTOR__GUUID = 7;
    public static final int NV_BLOCK_DESCRIPTOR__GCATEGORY = 8;
    public static final int NV_BLOCK_DESCRIPTOR__GDESC = 9;
    public static final int NV_BLOCK_DESCRIPTOR__DESC = 10;
    public static final int NV_BLOCK_DESCRIPTOR__CATEGORY = 11;
    public static final int NV_BLOCK_DESCRIPTOR__ADMIN_DATA = 12;
    public static final int NV_BLOCK_DESCRIPTOR__INTRODUCTION = 13;
    public static final int NV_BLOCK_DESCRIPTOR__ANNOTATIONS = 14;
    public static final int NV_BLOCK_DESCRIPTOR__UUID = 15;
    public static final int NV_BLOCK_DESCRIPTOR__ALL_EXTENSIONS = 16;
    public static final int NV_BLOCK_DESCRIPTOR__CONTAINED_EXTENSIONS = 17;
    public static final int NV_BLOCK_DESCRIPTOR__NV_BLOCK_SW_COMPONENT_TYPE = 18;
    public static final int NV_BLOCK_DESCRIPTOR__CLIENT_SERVER_PORTS = 19;
    public static final int NV_BLOCK_DESCRIPTOR__CONSTANT_VALUE_MAPPINGS = 20;
    public static final int NV_BLOCK_DESCRIPTOR__DATA_TYPE_MAPPINGS = 21;
    public static final int NV_BLOCK_DESCRIPTOR__INSTANTIATION_DATA_DEF_PROPS = 22;
    public static final int NV_BLOCK_DESCRIPTOR__NV_BLOCK_DATA_MAPPINGS = 23;
    public static final int NV_BLOCK_DESCRIPTOR__NV_BLOCK_NEEDS = 24;
    public static final int NV_BLOCK_DESCRIPTOR__RAM_BLOCK = 25;
    public static final int NV_BLOCK_DESCRIPTOR__ROM_BLOCK = 26;
    public static final int NV_BLOCK_DESCRIPTOR__VARIATION_POINT = 27;
    public static final int NV_BLOCK_DESCRIPTOR_FEATURE_COUNT = 28;

    public EClass getNvBlockDataMapping();

    public EReference getNvBlockDataMapping_NvBlockDescriptor();

    public EReference getNvBlockDataMapping_NvRamBlockElement();

    public EReference getNvBlockDataMapping_ReadNvData();

    public EReference getNvBlockDataMapping_WrittenNvData();

    public EReference getNvBlockDataMapping_VariationPoint();

    public EClass getNvBlockDescriptor();

    public EReference getNvBlockDescriptor_NvBlockSwComponentType();

    public EReference getNvBlockDescriptor_ClientServerPorts();

    public EReference getNvBlockDescriptor_ConstantValueMappings();

    public EReference getNvBlockDescriptor_DataTypeMappings();

    public EReference getNvBlockDescriptor_InstantiationDataDefProps();

    public EReference getNvBlockDescriptor_NvBlockDataMappings();

    public EReference getNvBlockDescriptor_NvBlockNeeds();

    public EReference getNvBlockDescriptor_RamBlock();

    public EReference getNvBlockDescriptor_RomBlock();

    public EReference getNvBlockDescriptor_VariationPoint();

    public NvblockcomponentFactory getNvblockcomponentFactory();

    public static interface Literals {
        public static final EClass NV_BLOCK_DATA_MAPPING = eINSTANCE.getNvBlockDataMapping();
        public static final EReference NV_BLOCK_DATA_MAPPING__NV_BLOCK_DESCRIPTOR = eINSTANCE.getNvBlockDataMapping_NvBlockDescriptor();
        public static final EReference NV_BLOCK_DATA_MAPPING__NV_RAM_BLOCK_ELEMENT = eINSTANCE.getNvBlockDataMapping_NvRamBlockElement();
        public static final EReference NV_BLOCK_DATA_MAPPING__READ_NV_DATA = eINSTANCE.getNvBlockDataMapping_ReadNvData();
        public static final EReference NV_BLOCK_DATA_MAPPING__WRITTEN_NV_DATA = eINSTANCE.getNvBlockDataMapping_WrittenNvData();
        public static final EReference NV_BLOCK_DATA_MAPPING__VARIATION_POINT = eINSTANCE.getNvBlockDataMapping_VariationPoint();
        public static final EClass NV_BLOCK_DESCRIPTOR = eINSTANCE.getNvBlockDescriptor();
        public static final EReference NV_BLOCK_DESCRIPTOR__NV_BLOCK_SW_COMPONENT_TYPE = eINSTANCE.getNvBlockDescriptor_NvBlockSwComponentType();
        public static final EReference NV_BLOCK_DESCRIPTOR__CLIENT_SERVER_PORTS = eINSTANCE.getNvBlockDescriptor_ClientServerPorts();
        public static final EReference NV_BLOCK_DESCRIPTOR__CONSTANT_VALUE_MAPPINGS = eINSTANCE.getNvBlockDescriptor_ConstantValueMappings();
        public static final EReference NV_BLOCK_DESCRIPTOR__DATA_TYPE_MAPPINGS = eINSTANCE.getNvBlockDescriptor_DataTypeMappings();
        public static final EReference NV_BLOCK_DESCRIPTOR__INSTANTIATION_DATA_DEF_PROPS = eINSTANCE.getNvBlockDescriptor_InstantiationDataDefProps();
        public static final EReference NV_BLOCK_DESCRIPTOR__NV_BLOCK_DATA_MAPPINGS = eINSTANCE.getNvBlockDescriptor_NvBlockDataMappings();
        public static final EReference NV_BLOCK_DESCRIPTOR__NV_BLOCK_NEEDS = eINSTANCE.getNvBlockDescriptor_NvBlockNeeds();
        public static final EReference NV_BLOCK_DESCRIPTOR__RAM_BLOCK = eINSTANCE.getNvBlockDescriptor_RamBlock();
        public static final EReference NV_BLOCK_DESCRIPTOR__ROM_BLOCK = eINSTANCE.getNvBlockDescriptor_RomBlock();
        public static final EReference NV_BLOCK_DESCRIPTOR__VARIATION_POINT = eINSTANCE.getNvBlockDescriptor_VariationPoint();
    }
}

