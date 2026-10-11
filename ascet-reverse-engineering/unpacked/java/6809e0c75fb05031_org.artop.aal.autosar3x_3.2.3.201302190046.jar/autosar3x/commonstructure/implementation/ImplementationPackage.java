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
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.ImplementationFactory;
import autosar3x.commonstructure.implementation.impl.ImplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ImplementationPackage
extends EPackage {
    public static final String eNAME = "implementation";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/implementation";
    public static final String eNS_PREFIX = "";
    public static final ImplementationPackage eINSTANCE = ImplementationPackageImpl.init();
    public static final int CODE = 0;
    public static final int CODE__GCHECKSUM = 0;
    public static final int CODE__GTIMESTAMP = 1;
    public static final int CODE__CHECKSUM = 2;
    public static final int CODE__TIMESTAMP = 3;
    public static final int CODE__GSHORT_NAME = 4;
    public static final int CODE__GUUID = 5;
    public static final int CODE__GCATEGORY = 6;
    public static final int CODE__GDESC = 7;
    public static final int CODE__SHORT_NAME = 8;
    public static final int CODE__LONG_NAME = 9;
    public static final int CODE__DESC = 10;
    public static final int CODE__CATEGORY = 11;
    public static final int CODE__ADMIN_DATA = 12;
    public static final int CODE__INTRODUCTION = 13;
    public static final int CODE__UUID = 14;
    public static final int CODE__ALL_EXTENSIONS = 15;
    public static final int CODE__CONTAINED_EXTENSIONS = 16;
    public static final int CODE__IMPLEMENTATION = 17;
    public static final int CODE__TYPE = 18;
    public static final int CODE__XFILES = 19;
    public static final int CODE_FEATURE_COUNT = 20;
    public static final int XFILE_SO = 1;
    public static final int XFILE_SO__GCHECKSUM = 0;
    public static final int XFILE_SO__GTIMESTAMP = 1;
    public static final int XFILE_SO__CHECKSUM = 2;
    public static final int XFILE_SO__TIMESTAMP = 3;
    public static final int XFILE_SO__GSHORT_NAME = 4;
    public static final int XFILE_SO__GUUID = 5;
    public static final int XFILE_SO__GCATEGORY = 6;
    public static final int XFILE_SO__GDESC = 7;
    public static final int XFILE_SO__SHORT_NAME = 8;
    public static final int XFILE_SO__LONG_NAME = 9;
    public static final int XFILE_SO__DESC = 10;
    public static final int XFILE_SO__CATEGORY = 11;
    public static final int XFILE_SO__ADMIN_DATA = 12;
    public static final int XFILE_SO__INTRODUCTION = 13;
    public static final int XFILE_SO__UUID = 14;
    public static final int XFILE_SO__ALL_EXTENSIONS = 15;
    public static final int XFILE_SO__CONTAINED_EXTENSIONS = 16;
    public static final int XFILE_SO__URL = 17;
    public static final int XFILE_SO__TOOL = 18;
    public static final int XFILE_SO__TOOL_VERSION = 19;
    public static final int XFILE_SO_FEATURE_COUNT = 20;
    public static final int COMPILER = 2;
    public static final int COMPILER__GCHECKSUM = 0;
    public static final int COMPILER__GTIMESTAMP = 1;
    public static final int COMPILER__CHECKSUM = 2;
    public static final int COMPILER__TIMESTAMP = 3;
    public static final int COMPILER__GSHORT_NAME = 4;
    public static final int COMPILER__GUUID = 5;
    public static final int COMPILER__GCATEGORY = 6;
    public static final int COMPILER__GDESC = 7;
    public static final int COMPILER__SHORT_NAME = 8;
    public static final int COMPILER__LONG_NAME = 9;
    public static final int COMPILER__DESC = 10;
    public static final int COMPILER__CATEGORY = 11;
    public static final int COMPILER__ADMIN_DATA = 12;
    public static final int COMPILER__INTRODUCTION = 13;
    public static final int COMPILER__UUID = 14;
    public static final int COMPILER__ALL_EXTENSIONS = 15;
    public static final int COMPILER__CONTAINED_EXTENSIONS = 16;
    public static final int COMPILER__IMPLEMENTATION = 17;
    public static final int COMPILER__NAME = 18;
    public static final int COMPILER__OPTIONS = 19;
    public static final int COMPILER__VENDOR = 20;
    public static final int COMPILER__VERSION = 21;
    public static final int COMPILER_FEATURE_COUNT = 22;
    public static final int DEPENDENCY = 3;
    public static final int DEPENDENCY__GCHECKSUM = 0;
    public static final int DEPENDENCY__GTIMESTAMP = 1;
    public static final int DEPENDENCY__CHECKSUM = 2;
    public static final int DEPENDENCY__TIMESTAMP = 3;
    public static final int DEPENDENCY__GSHORT_NAME = 4;
    public static final int DEPENDENCY__GUUID = 5;
    public static final int DEPENDENCY__GCATEGORY = 6;
    public static final int DEPENDENCY__GDESC = 7;
    public static final int DEPENDENCY__SHORT_NAME = 8;
    public static final int DEPENDENCY__LONG_NAME = 9;
    public static final int DEPENDENCY__DESC = 10;
    public static final int DEPENDENCY__CATEGORY = 11;
    public static final int DEPENDENCY__ADMIN_DATA = 12;
    public static final int DEPENDENCY__INTRODUCTION = 13;
    public static final int DEPENDENCY__UUID = 14;
    public static final int DEPENDENCY__ALL_EXTENSIONS = 15;
    public static final int DEPENDENCY__CONTAINED_EXTENSIONS = 16;
    public static final int DEPENDENCY__IMPLEMENTATION = 17;
    public static final int DEPENDENCY__USAGES = 18;
    public static final int DEPENDENCY_FEATURE_COUNT = 19;
    public static final int DEPENDENCY_ON_FILE = 4;
    public static final int DEPENDENCY_ON_FILE__GCHECKSUM = 0;
    public static final int DEPENDENCY_ON_FILE__GTIMESTAMP = 1;
    public static final int DEPENDENCY_ON_FILE__CHECKSUM = 2;
    public static final int DEPENDENCY_ON_FILE__TIMESTAMP = 3;
    public static final int DEPENDENCY_ON_FILE__GSHORT_NAME = 4;
    public static final int DEPENDENCY_ON_FILE__GUUID = 5;
    public static final int DEPENDENCY_ON_FILE__GCATEGORY = 6;
    public static final int DEPENDENCY_ON_FILE__GDESC = 7;
    public static final int DEPENDENCY_ON_FILE__SHORT_NAME = 8;
    public static final int DEPENDENCY_ON_FILE__LONG_NAME = 9;
    public static final int DEPENDENCY_ON_FILE__DESC = 10;
    public static final int DEPENDENCY_ON_FILE__CATEGORY = 11;
    public static final int DEPENDENCY_ON_FILE__ADMIN_DATA = 12;
    public static final int DEPENDENCY_ON_FILE__INTRODUCTION = 13;
    public static final int DEPENDENCY_ON_FILE__UUID = 14;
    public static final int DEPENDENCY_ON_FILE__ALL_EXTENSIONS = 15;
    public static final int DEPENDENCY_ON_FILE__CONTAINED_EXTENSIONS = 16;
    public static final int DEPENDENCY_ON_FILE__IMPLEMENTATION = 17;
    public static final int DEPENDENCY_ON_FILE__USAGES = 18;
    public static final int DEPENDENCY_ON_FILE__XFILE = 19;
    public static final int DEPENDENCY_ON_FILE_FEATURE_COUNT = 20;
    public static final int DEPENDENCY_ON_LIBRARY = 5;
    public static final int DEPENDENCY_ON_LIBRARY__GCHECKSUM = 0;
    public static final int DEPENDENCY_ON_LIBRARY__GTIMESTAMP = 1;
    public static final int DEPENDENCY_ON_LIBRARY__CHECKSUM = 2;
    public static final int DEPENDENCY_ON_LIBRARY__TIMESTAMP = 3;
    public static final int DEPENDENCY_ON_LIBRARY__GSHORT_NAME = 4;
    public static final int DEPENDENCY_ON_LIBRARY__GUUID = 5;
    public static final int DEPENDENCY_ON_LIBRARY__GCATEGORY = 6;
    public static final int DEPENDENCY_ON_LIBRARY__GDESC = 7;
    public static final int DEPENDENCY_ON_LIBRARY__SHORT_NAME = 8;
    public static final int DEPENDENCY_ON_LIBRARY__LONG_NAME = 9;
    public static final int DEPENDENCY_ON_LIBRARY__DESC = 10;
    public static final int DEPENDENCY_ON_LIBRARY__CATEGORY = 11;
    public static final int DEPENDENCY_ON_LIBRARY__ADMIN_DATA = 12;
    public static final int DEPENDENCY_ON_LIBRARY__INTRODUCTION = 13;
    public static final int DEPENDENCY_ON_LIBRARY__UUID = 14;
    public static final int DEPENDENCY_ON_LIBRARY__ALL_EXTENSIONS = 15;
    public static final int DEPENDENCY_ON_LIBRARY__CONTAINED_EXTENSIONS = 16;
    public static final int DEPENDENCY_ON_LIBRARY__IMPLEMENTATION = 17;
    public static final int DEPENDENCY_ON_LIBRARY__USAGES = 18;
    public static final int DEPENDENCY_ON_LIBRARY__XFILE = 19;
    public static final int DEPENDENCY_ON_LIBRARY__MAX_VERSION = 20;
    public static final int DEPENDENCY_ON_LIBRARY__MIN_VERSION = 21;
    public static final int DEPENDENCY_ON_LIBRARY_FEATURE_COUNT = 22;
    public static final int IMPLEMENTATION = 6;
    public static final int IMPLEMENTATION__GCHECKSUM = 0;
    public static final int IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION__CHECKSUM = 2;
    public static final int IMPLEMENTATION__TIMESTAMP = 3;
    public static final int IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int IMPLEMENTATION__GUUID = 5;
    public static final int IMPLEMENTATION__GCATEGORY = 6;
    public static final int IMPLEMENTATION__GDESC = 7;
    public static final int IMPLEMENTATION__SHORT_NAME = 8;
    public static final int IMPLEMENTATION__LONG_NAME = 9;
    public static final int IMPLEMENTATION__DESC = 10;
    public static final int IMPLEMENTATION__CATEGORY = 11;
    public static final int IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int IMPLEMENTATION__INTRODUCTION = 13;
    public static final int IMPLEMENTATION__UUID = 14;
    public static final int IMPLEMENTATION__ALL_EXTENSIONS = 15;
    public static final int IMPLEMENTATION__CONTAINED_EXTENSIONS = 16;
    public static final int IMPLEMENTATION__GAR_PACKAGE = 17;
    public static final int IMPLEMENTATION__AR_PACKAGE = 18;
    public static final int IMPLEMENTATION__GRESOURCE_CONSUMPTION = 19;
    public static final int IMPLEMENTATION__GCODE_DESCRIPTORS = 20;
    public static final int IMPLEMENTATION__CODE_DESCRIPTORS = 21;
    public static final int IMPLEMENTATION__CODE_GENERATOR = 22;
    public static final int IMPLEMENTATION__COMPILERS = 23;
    public static final int IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = 24;
    public static final int IMPLEMENTATION__LINKERS = 25;
    public static final int IMPLEMENTATION__PROCESSORS = 26;
    public static final int IMPLEMENTATION__PROGRAMMING_LANGUAGE = 27;
    public static final int IMPLEMENTATION__RESOURCE_CONSUMPTION = 28;
    public static final int IMPLEMENTATION__SW_MAJOR_VERSION = 29;
    public static final int IMPLEMENTATION__SW_MINOR_VERSION = 30;
    public static final int IMPLEMENTATION__SW_PATCH_VERSION = 31;
    public static final int IMPLEMENTATION__VENDOR_ID = 32;
    public static final int IMPLEMENTATION_FEATURE_COUNT = 33;
    public static final int LINKER = 7;
    public static final int LINKER__GCHECKSUM = 0;
    public static final int LINKER__GTIMESTAMP = 1;
    public static final int LINKER__CHECKSUM = 2;
    public static final int LINKER__TIMESTAMP = 3;
    public static final int LINKER__GSHORT_NAME = 4;
    public static final int LINKER__GUUID = 5;
    public static final int LINKER__GCATEGORY = 6;
    public static final int LINKER__GDESC = 7;
    public static final int LINKER__SHORT_NAME = 8;
    public static final int LINKER__LONG_NAME = 9;
    public static final int LINKER__DESC = 10;
    public static final int LINKER__CATEGORY = 11;
    public static final int LINKER__ADMIN_DATA = 12;
    public static final int LINKER__INTRODUCTION = 13;
    public static final int LINKER__UUID = 14;
    public static final int LINKER__ALL_EXTENSIONS = 15;
    public static final int LINKER__CONTAINED_EXTENSIONS = 16;
    public static final int LINKER__IMPLEMENTATION = 17;
    public static final int LINKER__NAME = 18;
    public static final int LINKER__OPTIONS = 19;
    public static final int LINKER__VENDOR = 20;
    public static final int LINKER__VERSION = 21;
    public static final int LINKER_FEATURE_COUNT = 22;
    public static final int CODE_TYPE_ENUM = 8;
    public static final int DEPENDENCY_USAGE_ENUM = 9;
    public static final int PROGRAMMINGLANGUAGE_ENUM = 10;

    public EClass getCode();

    public EReference getCode_Implementation();

    public EAttribute getCode_Type();

    public EReference getCode_Xfiles();

    public EClass getXfileSo();

    public EReference getXfileSo_Url();

    public EAttribute getXfileSo_Tool();

    public EAttribute getXfileSo_ToolVersion();

    public EClass getCompiler();

    public EReference getCompiler_Implementation();

    public EAttribute getCompiler_Name();

    public EAttribute getCompiler_Options();

    public EAttribute getCompiler_Vendor();

    public EAttribute getCompiler_Version();

    public EClass getDependency();

    public EReference getDependency_Implementation();

    public EAttribute getDependency_Usages();

    public EClass getDependencyOnFile();

    public EReference getDependencyOnFile_Xfile();

    public EClass getDependencyOnLibrary();

    public EAttribute getDependencyOnLibrary_MaxVersion();

    public EAttribute getDependencyOnLibrary_MinVersion();

    public EClass getImplementation();

    public EReference getImplementation_CodeDescriptors();

    public EAttribute getImplementation_CodeGenerator();

    public EReference getImplementation_Compilers();

    public EReference getImplementation_ImplementationDependencies();

    public EReference getImplementation_Linkers();

    public EReference getImplementation_Processors();

    public EAttribute getImplementation_ProgrammingLanguage();

    public EReference getImplementation_ResourceConsumption();

    public EAttribute getImplementation_SwMajorVersion();

    public EAttribute getImplementation_SwMinorVersion();

    public EAttribute getImplementation_SwPatchVersion();

    public EAttribute getImplementation_VendorId();

    public EClass getLinker();

    public EReference getLinker_Implementation();

    public EAttribute getLinker_Name();

    public EAttribute getLinker_Options();

    public EAttribute getLinker_Vendor();

    public EAttribute getLinker_Version();

    public EEnum getCodeTypeEnum();

    public EEnum getDependencyUsageEnum();

    public EEnum getProgramminglanguageEnum();

    public ImplementationFactory getImplementationFactory();

    public static interface Literals {
        public static final EClass CODE = eINSTANCE.getCode();
        public static final EReference CODE__IMPLEMENTATION = eINSTANCE.getCode_Implementation();
        public static final EAttribute CODE__TYPE = eINSTANCE.getCode_Type();
        public static final EReference CODE__XFILES = eINSTANCE.getCode_Xfiles();
        public static final EClass XFILE_SO = eINSTANCE.getXfileSo();
        public static final EReference XFILE_SO__URL = eINSTANCE.getXfileSo_Url();
        public static final EAttribute XFILE_SO__TOOL = eINSTANCE.getXfileSo_Tool();
        public static final EAttribute XFILE_SO__TOOL_VERSION = eINSTANCE.getXfileSo_ToolVersion();
        public static final EClass COMPILER = eINSTANCE.getCompiler();
        public static final EReference COMPILER__IMPLEMENTATION = eINSTANCE.getCompiler_Implementation();
        public static final EAttribute COMPILER__NAME = eINSTANCE.getCompiler_Name();
        public static final EAttribute COMPILER__OPTIONS = eINSTANCE.getCompiler_Options();
        public static final EAttribute COMPILER__VENDOR = eINSTANCE.getCompiler_Vendor();
        public static final EAttribute COMPILER__VERSION = eINSTANCE.getCompiler_Version();
        public static final EClass DEPENDENCY = eINSTANCE.getDependency();
        public static final EReference DEPENDENCY__IMPLEMENTATION = eINSTANCE.getDependency_Implementation();
        public static final EAttribute DEPENDENCY__USAGES = eINSTANCE.getDependency_Usages();
        public static final EClass DEPENDENCY_ON_FILE = eINSTANCE.getDependencyOnFile();
        public static final EReference DEPENDENCY_ON_FILE__XFILE = eINSTANCE.getDependencyOnFile_Xfile();
        public static final EClass DEPENDENCY_ON_LIBRARY = eINSTANCE.getDependencyOnLibrary();
        public static final EAttribute DEPENDENCY_ON_LIBRARY__MAX_VERSION = eINSTANCE.getDependencyOnLibrary_MaxVersion();
        public static final EAttribute DEPENDENCY_ON_LIBRARY__MIN_VERSION = eINSTANCE.getDependencyOnLibrary_MinVersion();
        public static final EClass IMPLEMENTATION = eINSTANCE.getImplementation();
        public static final EReference IMPLEMENTATION__CODE_DESCRIPTORS = eINSTANCE.getImplementation_CodeDescriptors();
        public static final EAttribute IMPLEMENTATION__CODE_GENERATOR = eINSTANCE.getImplementation_CodeGenerator();
        public static final EReference IMPLEMENTATION__COMPILERS = eINSTANCE.getImplementation_Compilers();
        public static final EReference IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = eINSTANCE.getImplementation_ImplementationDependencies();
        public static final EReference IMPLEMENTATION__LINKERS = eINSTANCE.getImplementation_Linkers();
        public static final EReference IMPLEMENTATION__PROCESSORS = eINSTANCE.getImplementation_Processors();
        public static final EAttribute IMPLEMENTATION__PROGRAMMING_LANGUAGE = eINSTANCE.getImplementation_ProgrammingLanguage();
        public static final EReference IMPLEMENTATION__RESOURCE_CONSUMPTION = eINSTANCE.getImplementation_ResourceConsumption();
        public static final EAttribute IMPLEMENTATION__SW_MAJOR_VERSION = eINSTANCE.getImplementation_SwMajorVersion();
        public static final EAttribute IMPLEMENTATION__SW_MINOR_VERSION = eINSTANCE.getImplementation_SwMinorVersion();
        public static final EAttribute IMPLEMENTATION__SW_PATCH_VERSION = eINSTANCE.getImplementation_SwPatchVersion();
        public static final EAttribute IMPLEMENTATION__VENDOR_ID = eINSTANCE.getImplementation_VendorId();
        public static final EClass LINKER = eINSTANCE.getLinker();
        public static final EReference LINKER__IMPLEMENTATION = eINSTANCE.getLinker_Implementation();
        public static final EAttribute LINKER__NAME = eINSTANCE.getLinker_Name();
        public static final EAttribute LINKER__OPTIONS = eINSTANCE.getLinker_Options();
        public static final EAttribute LINKER__VENDOR = eINSTANCE.getLinker_Vendor();
        public static final EAttribute LINKER__VERSION = eINSTANCE.getLinker_Version();
        public static final EEnum CODE_TYPE_ENUM = eINSTANCE.getCodeTypeEnum();
        public static final EEnum DEPENDENCY_USAGE_ENUM = eINSTANCE.getDependencyUsageEnum();
        public static final EEnum PROGRAMMINGLANGUAGE_ENUM = eINSTANCE.getProgramminglanguageEnum();
    }
}

