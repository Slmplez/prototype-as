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
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.ImplementationFactory;
import autosar40.commonstructure.implementation.impl.ImplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ImplementationPackage
extends EPackage {
    public static final String eNAME = "implementation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/implementation";
    public static final String eNS_PREFIX = "";
    public static final ImplementationPackage eINSTANCE = ImplementationPackageImpl.init();
    public static final int CODE = 0;
    public static final int CODE__GCHECKSUM = 0;
    public static final int CODE__GTIMESTAMP = 1;
    public static final int CODE__CHECKSUM = 2;
    public static final int CODE__TIMESTAMP = 3;
    public static final int CODE__GSHORT_NAME = 4;
    public static final int CODE__SHORT_NAME = 5;
    public static final int CODE__LONG_NAME = 6;
    public static final int CODE__GUUID = 7;
    public static final int CODE__GCATEGORY = 8;
    public static final int CODE__GDESC = 9;
    public static final int CODE__DESC = 10;
    public static final int CODE__CATEGORY = 11;
    public static final int CODE__ADMIN_DATA = 12;
    public static final int CODE__INTRODUCTION = 13;
    public static final int CODE__ANNOTATIONS = 14;
    public static final int CODE__UUID = 15;
    public static final int CODE__ALL_EXTENSIONS = 16;
    public static final int CODE__CONTAINED_EXTENSIONS = 17;
    public static final int CODE__IMPLEMENTATION = 18;
    public static final int CODE__ARTIFACT_DESCRIPTORS = 19;
    public static final int CODE_FEATURE_COUNT = 20;
    public static final int COMPILER = 1;
    public static final int COMPILER__GCHECKSUM = 0;
    public static final int COMPILER__GTIMESTAMP = 1;
    public static final int COMPILER__CHECKSUM = 2;
    public static final int COMPILER__TIMESTAMP = 3;
    public static final int COMPILER__GSHORT_NAME = 4;
    public static final int COMPILER__SHORT_NAME = 5;
    public static final int COMPILER__LONG_NAME = 6;
    public static final int COMPILER__GUUID = 7;
    public static final int COMPILER__GCATEGORY = 8;
    public static final int COMPILER__GDESC = 9;
    public static final int COMPILER__DESC = 10;
    public static final int COMPILER__CATEGORY = 11;
    public static final int COMPILER__ADMIN_DATA = 12;
    public static final int COMPILER__INTRODUCTION = 13;
    public static final int COMPILER__ANNOTATIONS = 14;
    public static final int COMPILER__UUID = 15;
    public static final int COMPILER__ALL_EXTENSIONS = 16;
    public static final int COMPILER__CONTAINED_EXTENSIONS = 17;
    public static final int COMPILER__IMPLEMENTATION = 18;
    public static final int COMPILER__NAME = 19;
    public static final int COMPILER__OPTIONS = 20;
    public static final int COMPILER__VENDOR = 21;
    public static final int COMPILER__VERSION = 22;
    public static final int COMPILER_FEATURE_COUNT = 23;
    public static final int DEPENDENCY_ON_ARTIFACT = 2;
    public static final int DEPENDENCY_ON_ARTIFACT__GCHECKSUM = 0;
    public static final int DEPENDENCY_ON_ARTIFACT__GTIMESTAMP = 1;
    public static final int DEPENDENCY_ON_ARTIFACT__CHECKSUM = 2;
    public static final int DEPENDENCY_ON_ARTIFACT__TIMESTAMP = 3;
    public static final int DEPENDENCY_ON_ARTIFACT__GSHORT_NAME = 4;
    public static final int DEPENDENCY_ON_ARTIFACT__SHORT_NAME = 5;
    public static final int DEPENDENCY_ON_ARTIFACT__LONG_NAME = 6;
    public static final int DEPENDENCY_ON_ARTIFACT__GUUID = 7;
    public static final int DEPENDENCY_ON_ARTIFACT__GCATEGORY = 8;
    public static final int DEPENDENCY_ON_ARTIFACT__GDESC = 9;
    public static final int DEPENDENCY_ON_ARTIFACT__DESC = 10;
    public static final int DEPENDENCY_ON_ARTIFACT__CATEGORY = 11;
    public static final int DEPENDENCY_ON_ARTIFACT__ADMIN_DATA = 12;
    public static final int DEPENDENCY_ON_ARTIFACT__INTRODUCTION = 13;
    public static final int DEPENDENCY_ON_ARTIFACT__ANNOTATIONS = 14;
    public static final int DEPENDENCY_ON_ARTIFACT__UUID = 15;
    public static final int DEPENDENCY_ON_ARTIFACT__ALL_EXTENSIONS = 16;
    public static final int DEPENDENCY_ON_ARTIFACT__CONTAINED_EXTENSIONS = 17;
    public static final int DEPENDENCY_ON_ARTIFACT__ARTIFACT_DESCRIPTOR = 18;
    public static final int DEPENDENCY_ON_ARTIFACT__USAGES = 19;
    public static final int DEPENDENCY_ON_ARTIFACT__VARIATION_POINT = 20;
    public static final int DEPENDENCY_ON_ARTIFACT_FEATURE_COUNT = 21;
    public static final int IMPLEMENTATION = 3;
    public static final int IMPLEMENTATION__GCHECKSUM = 0;
    public static final int IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION__CHECKSUM = 2;
    public static final int IMPLEMENTATION__TIMESTAMP = 3;
    public static final int IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int IMPLEMENTATION__SHORT_NAME = 5;
    public static final int IMPLEMENTATION__LONG_NAME = 6;
    public static final int IMPLEMENTATION__GUUID = 7;
    public static final int IMPLEMENTATION__GCATEGORY = 8;
    public static final int IMPLEMENTATION__GDESC = 9;
    public static final int IMPLEMENTATION__DESC = 10;
    public static final int IMPLEMENTATION__CATEGORY = 11;
    public static final int IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int IMPLEMENTATION__INTRODUCTION = 13;
    public static final int IMPLEMENTATION__ANNOTATIONS = 14;
    public static final int IMPLEMENTATION__UUID = 15;
    public static final int IMPLEMENTATION__ALL_EXTENSIONS = 16;
    public static final int IMPLEMENTATION__CONTAINED_EXTENSIONS = 17;
    public static final int IMPLEMENTATION__GAR_PACKAGE = 18;
    public static final int IMPLEMENTATION__AR_PACKAGE = 19;
    public static final int IMPLEMENTATION__VARIATION_POINT = 20;
    public static final int IMPLEMENTATION__GRESOURCE_CONSUMPTION = 21;
    public static final int IMPLEMENTATION__GCODE_DESCRIPTORS = 22;
    public static final int IMPLEMENTATION__CODE_DESCRIPTORS = 23;
    public static final int IMPLEMENTATION__COMPILERS = 24;
    public static final int IMPLEMENTATION__GENERATED_ARTIFACTS = 25;
    public static final int IMPLEMENTATION__HW_ELEMENTS = 26;
    public static final int IMPLEMENTATION__LINKERS = 27;
    public static final int IMPLEMENTATION__MC_SUPPORT = 28;
    public static final int IMPLEMENTATION__PROGRAMMING_LANGUAGE = 29;
    public static final int IMPLEMENTATION__REQUIRED_ARTIFACTS = 30;
    public static final int IMPLEMENTATION__REQUIRED_GENERATOR_TOOLS = 31;
    public static final int IMPLEMENTATION__RESOURCE_CONSUMPTION = 32;
    public static final int IMPLEMENTATION__SW_VERSION = 33;
    public static final int IMPLEMENTATION__SWC_BSW_MAPPING = 34;
    public static final int IMPLEMENTATION__USED_CODE_GENERATOR = 35;
    public static final int IMPLEMENTATION__VENDOR_ID = 36;
    public static final int IMPLEMENTATION_FEATURE_COUNT = 37;
    public static final int LINKER = 4;
    public static final int LINKER__GCHECKSUM = 0;
    public static final int LINKER__GTIMESTAMP = 1;
    public static final int LINKER__CHECKSUM = 2;
    public static final int LINKER__TIMESTAMP = 3;
    public static final int LINKER__GSHORT_NAME = 4;
    public static final int LINKER__SHORT_NAME = 5;
    public static final int LINKER__LONG_NAME = 6;
    public static final int LINKER__GUUID = 7;
    public static final int LINKER__GCATEGORY = 8;
    public static final int LINKER__GDESC = 9;
    public static final int LINKER__DESC = 10;
    public static final int LINKER__CATEGORY = 11;
    public static final int LINKER__ADMIN_DATA = 12;
    public static final int LINKER__INTRODUCTION = 13;
    public static final int LINKER__ANNOTATIONS = 14;
    public static final int LINKER__UUID = 15;
    public static final int LINKER__ALL_EXTENSIONS = 16;
    public static final int LINKER__CONTAINED_EXTENSIONS = 17;
    public static final int LINKER__IMPLEMENTATION = 18;
    public static final int LINKER__NAME = 19;
    public static final int LINKER__OPTIONS = 20;
    public static final int LINKER__VENDOR = 21;
    public static final int LINKER__VERSION = 22;
    public static final int LINKER_FEATURE_COUNT = 23;
    public static final int IMPLEMENTATION_PROPS = 5;
    public static final int IMPLEMENTATION_PROPS__GCHECKSUM = 0;
    public static final int IMPLEMENTATION_PROPS__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION_PROPS__CHECKSUM = 2;
    public static final int IMPLEMENTATION_PROPS__TIMESTAMP = 3;
    public static final int IMPLEMENTATION_PROPS__GSHORT_NAME = 4;
    public static final int IMPLEMENTATION_PROPS__SHORT_NAME = 5;
    public static final int IMPLEMENTATION_PROPS__SYMBOL = 6;
    public static final int IMPLEMENTATION_PROPS_FEATURE_COUNT = 7;
    public static final int DEPENDENCY_USAGE_ENUM = 6;
    public static final int PROGRAMMINGLANGUAGE_ENUM = 7;

    public EClass getCode();

    public EReference getCode_Implementation();

    public EReference getCode_ArtifactDescriptors();

    public EClass getCompiler();

    public EReference getCompiler_Implementation();

    public EAttribute getCompiler_Name();

    public EAttribute getCompiler_Options();

    public EAttribute getCompiler_Vendor();

    public EAttribute getCompiler_Version();

    public EClass getDependencyOnArtifact();

    public EReference getDependencyOnArtifact_ArtifactDescriptor();

    public EAttribute getDependencyOnArtifact_Usages();

    public EReference getDependencyOnArtifact_VariationPoint();

    public EClass getImplementation();

    public EReference getImplementation_CodeDescriptors();

    public EReference getImplementation_Compilers();

    public EReference getImplementation_GeneratedArtifacts();

    public EReference getImplementation_HwElements();

    public EReference getImplementation_Linkers();

    public EReference getImplementation_McSupport();

    public EAttribute getImplementation_ProgrammingLanguage();

    public EReference getImplementation_RequiredArtifacts();

    public EReference getImplementation_RequiredGeneratorTools();

    public EReference getImplementation_ResourceConsumption();

    public EAttribute getImplementation_SwVersion();

    public EReference getImplementation_SwcBswMapping();

    public EAttribute getImplementation_UsedCodeGenerator();

    public EAttribute getImplementation_VendorId();

    public EClass getLinker();

    public EReference getLinker_Implementation();

    public EAttribute getLinker_Name();

    public EAttribute getLinker_Options();

    public EAttribute getLinker_Vendor();

    public EAttribute getLinker_Version();

    public EClass getImplementationProps();

    public EAttribute getImplementationProps_Symbol();

    public EEnum getDependencyUsageEnum();

    public EEnum getProgramminglanguageEnum();

    public ImplementationFactory getImplementationFactory();

    public static interface Literals {
        public static final EClass CODE = eINSTANCE.getCode();
        public static final EReference CODE__IMPLEMENTATION = eINSTANCE.getCode_Implementation();
        public static final EReference CODE__ARTIFACT_DESCRIPTORS = eINSTANCE.getCode_ArtifactDescriptors();
        public static final EClass COMPILER = eINSTANCE.getCompiler();
        public static final EReference COMPILER__IMPLEMENTATION = eINSTANCE.getCompiler_Implementation();
        public static final EAttribute COMPILER__NAME = eINSTANCE.getCompiler_Name();
        public static final EAttribute COMPILER__OPTIONS = eINSTANCE.getCompiler_Options();
        public static final EAttribute COMPILER__VENDOR = eINSTANCE.getCompiler_Vendor();
        public static final EAttribute COMPILER__VERSION = eINSTANCE.getCompiler_Version();
        public static final EClass DEPENDENCY_ON_ARTIFACT = eINSTANCE.getDependencyOnArtifact();
        public static final EReference DEPENDENCY_ON_ARTIFACT__ARTIFACT_DESCRIPTOR = eINSTANCE.getDependencyOnArtifact_ArtifactDescriptor();
        public static final EAttribute DEPENDENCY_ON_ARTIFACT__USAGES = eINSTANCE.getDependencyOnArtifact_Usages();
        public static final EReference DEPENDENCY_ON_ARTIFACT__VARIATION_POINT = eINSTANCE.getDependencyOnArtifact_VariationPoint();
        public static final EClass IMPLEMENTATION = eINSTANCE.getImplementation();
        public static final EReference IMPLEMENTATION__CODE_DESCRIPTORS = eINSTANCE.getImplementation_CodeDescriptors();
        public static final EReference IMPLEMENTATION__COMPILERS = eINSTANCE.getImplementation_Compilers();
        public static final EReference IMPLEMENTATION__GENERATED_ARTIFACTS = eINSTANCE.getImplementation_GeneratedArtifacts();
        public static final EReference IMPLEMENTATION__HW_ELEMENTS = eINSTANCE.getImplementation_HwElements();
        public static final EReference IMPLEMENTATION__LINKERS = eINSTANCE.getImplementation_Linkers();
        public static final EReference IMPLEMENTATION__MC_SUPPORT = eINSTANCE.getImplementation_McSupport();
        public static final EAttribute IMPLEMENTATION__PROGRAMMING_LANGUAGE = eINSTANCE.getImplementation_ProgrammingLanguage();
        public static final EReference IMPLEMENTATION__REQUIRED_ARTIFACTS = eINSTANCE.getImplementation_RequiredArtifacts();
        public static final EReference IMPLEMENTATION__REQUIRED_GENERATOR_TOOLS = eINSTANCE.getImplementation_RequiredGeneratorTools();
        public static final EReference IMPLEMENTATION__RESOURCE_CONSUMPTION = eINSTANCE.getImplementation_ResourceConsumption();
        public static final EAttribute IMPLEMENTATION__SW_VERSION = eINSTANCE.getImplementation_SwVersion();
        public static final EReference IMPLEMENTATION__SWC_BSW_MAPPING = eINSTANCE.getImplementation_SwcBswMapping();
        public static final EAttribute IMPLEMENTATION__USED_CODE_GENERATOR = eINSTANCE.getImplementation_UsedCodeGenerator();
        public static final EAttribute IMPLEMENTATION__VENDOR_ID = eINSTANCE.getImplementation_VendorId();
        public static final EClass LINKER = eINSTANCE.getLinker();
        public static final EReference LINKER__IMPLEMENTATION = eINSTANCE.getLinker_Implementation();
        public static final EAttribute LINKER__NAME = eINSTANCE.getLinker_Name();
        public static final EAttribute LINKER__OPTIONS = eINSTANCE.getLinker_Options();
        public static final EAttribute LINKER__VENDOR = eINSTANCE.getLinker_Vendor();
        public static final EAttribute LINKER__VERSION = eINSTANCE.getLinker_Version();
        public static final EClass IMPLEMENTATION_PROPS = eINSTANCE.getImplementationProps();
        public static final EAttribute IMPLEMENTATION_PROPS__SYMBOL = eINSTANCE.getImplementationProps_Symbol();
        public static final EEnum DEPENDENCY_USAGE_ENUM = eINSTANCE.getDependencyUsageEnum();
        public static final EEnum PROGRAMMINGLANGUAGE_ENUM = eINSTANCE.getProgramminglanguageEnum();
    }
}

