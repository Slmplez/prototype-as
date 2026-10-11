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
package autosar21.swcomponent.implementation;

import autosar21.swcomponent.implementation.ImplementationFactory;
import autosar21.swcomponent.implementation.impl.ImplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ImplementationPackage
extends EPackage {
    public static final String eNAME = "implementation";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/i";
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
    public static final int CODE__UUID = 13;
    public static final int CODE__ALL_EXTENSIONS = 14;
    public static final int CODE__CONTAINED_EXTENSIONS = 15;
    public static final int CODE__IMPLEMENTATION = 16;
    public static final int CODE__TYPE = 17;
    public static final int CODE__XFILES = 18;
    public static final int CODE_FEATURE_COUNT = 19;
    public static final int COMPILER = 1;
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
    public static final int COMPILER__UUID = 13;
    public static final int COMPILER__ALL_EXTENSIONS = 14;
    public static final int COMPILER__CONTAINED_EXTENSIONS = 15;
    public static final int COMPILER__IMPLEMENTATION = 16;
    public static final int COMPILER__NAME = 17;
    public static final int COMPILER__VENDOR = 18;
    public static final int COMPILER__VERSION = 19;
    public static final int COMPILER_FEATURE_COUNT = 20;
    public static final int DEPENDENCY = 2;
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
    public static final int DEPENDENCY__UUID = 13;
    public static final int DEPENDENCY__ALL_EXTENSIONS = 14;
    public static final int DEPENDENCY__CONTAINED_EXTENSIONS = 15;
    public static final int DEPENDENCY__IMPLEMENTATION = 16;
    public static final int DEPENDENCY__USAGES = 17;
    public static final int DEPENDENCY_FEATURE_COUNT = 18;
    public static final int DEPENDENCY_ON_FILE = 3;
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
    public static final int DEPENDENCY_ON_FILE__UUID = 13;
    public static final int DEPENDENCY_ON_FILE__ALL_EXTENSIONS = 14;
    public static final int DEPENDENCY_ON_FILE__CONTAINED_EXTENSIONS = 15;
    public static final int DEPENDENCY_ON_FILE__IMPLEMENTATION = 16;
    public static final int DEPENDENCY_ON_FILE__USAGES = 17;
    public static final int DEPENDENCY_ON_FILE__XFILE = 18;
    public static final int DEPENDENCY_ON_FILE_FEATURE_COUNT = 19;
    public static final int IMPLEMENTATION = 4;
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
    public static final int IMPLEMENTATION__UUID = 13;
    public static final int IMPLEMENTATION__ALL_EXTENSIONS = 14;
    public static final int IMPLEMENTATION__CONTAINED_EXTENSIONS = 15;
    public static final int IMPLEMENTATION__GAR_PACKAGE = 16;
    public static final int IMPLEMENTATION__AR_PACKAGE = 17;
    public static final int IMPLEMENTATION__GRESOURCE_CONSUMPTION = 18;
    public static final int IMPLEMENTATION__GCODE_DESCRIPTORS = 19;
    public static final int IMPLEMENTATION__GBEHAVIOR = 20;
    public static final int IMPLEMENTATION__BEHAVIOR = 21;
    public static final int IMPLEMENTATION__CODE_DESCRIPTOR = 22;
    public static final int IMPLEMENTATION__CODE_GENERATOR = 23;
    public static final int IMPLEMENTATION__COMPILERS = 24;
    public static final int IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = 25;
    public static final int IMPLEMENTATION__PROCESSORS = 26;
    public static final int IMPLEMENTATION__PROGRAMMING_LANGUAGE = 27;
    public static final int IMPLEMENTATION__REQUIRED_RTE_VENDOR = 28;
    public static final int IMPLEMENTATION__RESOURCE_CONSUMPTION = 29;
    public static final int IMPLEMENTATION_FEATURE_COUNT = 30;
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
    public static final int DEPENDENCY_ON_LIBRARY__UUID = 13;
    public static final int DEPENDENCY_ON_LIBRARY__ALL_EXTENSIONS = 14;
    public static final int DEPENDENCY_ON_LIBRARY__CONTAINED_EXTENSIONS = 15;
    public static final int DEPENDENCY_ON_LIBRARY__IMPLEMENTATION = 16;
    public static final int DEPENDENCY_ON_LIBRARY__USAGES = 17;
    public static final int DEPENDENCY_ON_LIBRARY__XFILE = 18;
    public static final int DEPENDENCY_ON_LIBRARY__MAX_VERSION = 19;
    public static final int DEPENDENCY_ON_LIBRARY__MIN_VERSION = 20;
    public static final int DEPENDENCY_ON_LIBRARY_FEATURE_COUNT = 21;
    public static final int CODE_TYPE_ENUM = 6;
    public static final int DEPENDENCY_USAGE_ENUM = 7;
    public static final int IMPLEMENTATION_PROGRAMMING_LANGUAGE_ENUM = 8;

    public EClass getCode();

    public EReference getCode_Implementation();

    public EAttribute getCode_Type();

    public EReference getCode_Xfiles();

    public EClass getCompiler();

    public EReference getCompiler_Implementation();

    public EAttribute getCompiler_Name();

    public EAttribute getCompiler_Vendor();

    public EAttribute getCompiler_Version();

    public EClass getDependency();

    public EReference getDependency_Implementation();

    public EAttribute getDependency_Usages();

    public EClass getDependencyOnFile();

    public EReference getDependencyOnFile_Xfile();

    public EClass getImplementation();

    public EReference getImplementation_Behavior();

    public EReference getImplementation_CodeDescriptor();

    public EAttribute getImplementation_CodeGenerator();

    public EReference getImplementation_Compilers();

    public EReference getImplementation_ImplementationDependencies();

    public EReference getImplementation_Processors();

    public EAttribute getImplementation_ProgrammingLanguage();

    public EAttribute getImplementation_RequiredRTEVendor();

    public EReference getImplementation_ResourceConsumption();

    public EClass getDependencyOnLibrary();

    public EAttribute getDependencyOnLibrary_MaxVersion();

    public EAttribute getDependencyOnLibrary_MinVersion();

    public EEnum getCodeTypeEnum();

    public EEnum getDependencyUsageEnum();

    public EEnum getImplementationProgrammingLanguageEnum();

    public ImplementationFactory getImplementationFactory();

    public static interface Literals {
        public static final EClass CODE = eINSTANCE.getCode();
        public static final EReference CODE__IMPLEMENTATION = eINSTANCE.getCode_Implementation();
        public static final EAttribute CODE__TYPE = eINSTANCE.getCode_Type();
        public static final EReference CODE__XFILES = eINSTANCE.getCode_Xfiles();
        public static final EClass COMPILER = eINSTANCE.getCompiler();
        public static final EReference COMPILER__IMPLEMENTATION = eINSTANCE.getCompiler_Implementation();
        public static final EAttribute COMPILER__NAME = eINSTANCE.getCompiler_Name();
        public static final EAttribute COMPILER__VENDOR = eINSTANCE.getCompiler_Vendor();
        public static final EAttribute COMPILER__VERSION = eINSTANCE.getCompiler_Version();
        public static final EClass DEPENDENCY = eINSTANCE.getDependency();
        public static final EReference DEPENDENCY__IMPLEMENTATION = eINSTANCE.getDependency_Implementation();
        public static final EAttribute DEPENDENCY__USAGES = eINSTANCE.getDependency_Usages();
        public static final EClass DEPENDENCY_ON_FILE = eINSTANCE.getDependencyOnFile();
        public static final EReference DEPENDENCY_ON_FILE__XFILE = eINSTANCE.getDependencyOnFile_Xfile();
        public static final EClass IMPLEMENTATION = eINSTANCE.getImplementation();
        public static final EReference IMPLEMENTATION__BEHAVIOR = eINSTANCE.getImplementation_Behavior();
        public static final EReference IMPLEMENTATION__CODE_DESCRIPTOR = eINSTANCE.getImplementation_CodeDescriptor();
        public static final EAttribute IMPLEMENTATION__CODE_GENERATOR = eINSTANCE.getImplementation_CodeGenerator();
        public static final EReference IMPLEMENTATION__COMPILERS = eINSTANCE.getImplementation_Compilers();
        public static final EReference IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = eINSTANCE.getImplementation_ImplementationDependencies();
        public static final EReference IMPLEMENTATION__PROCESSORS = eINSTANCE.getImplementation_Processors();
        public static final EAttribute IMPLEMENTATION__PROGRAMMING_LANGUAGE = eINSTANCE.getImplementation_ProgrammingLanguage();
        public static final EAttribute IMPLEMENTATION__REQUIRED_RTE_VENDOR = eINSTANCE.getImplementation_RequiredRTEVendor();
        public static final EReference IMPLEMENTATION__RESOURCE_CONSUMPTION = eINSTANCE.getImplementation_ResourceConsumption();
        public static final EClass DEPENDENCY_ON_LIBRARY = eINSTANCE.getDependencyOnLibrary();
        public static final EAttribute DEPENDENCY_ON_LIBRARY__MAX_VERSION = eINSTANCE.getDependencyOnLibrary_MaxVersion();
        public static final EAttribute DEPENDENCY_ON_LIBRARY__MIN_VERSION = eINSTANCE.getDependencyOnLibrary_MinVersion();
        public static final EEnum CODE_TYPE_ENUM = eINSTANCE.getCodeTypeEnum();
        public static final EEnum DEPENDENCY_USAGE_ENUM = eINSTANCE.getDependencyUsageEnum();
        public static final EEnum IMPLEMENTATION_PROGRAMMING_LANGUAGE_ENUM = eINSTANCE.getImplementationProgrammingLanguageEnum();
    }
}

