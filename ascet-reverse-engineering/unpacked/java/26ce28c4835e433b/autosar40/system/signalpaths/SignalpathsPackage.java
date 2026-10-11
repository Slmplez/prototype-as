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
package autosar40.system.signalpaths;

import autosar40.system.signalpaths.SignalpathsFactory;
import autosar40.system.signalpaths.impl.SignalpathsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SignalpathsPackage
extends EPackage {
    public static final String eNAME = "signalpaths";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/sp";
    public static final String eNS_PREFIX = "";
    public static final SignalpathsPackage eINSTANCE = SignalpathsPackageImpl.init();
    public static final int SIGNAL_PATH_CONSTRAINT = 6;
    public static final int SIGNAL_PATH_CONSTRAINT__GCHECKSUM = 0;
    public static final int SIGNAL_PATH_CONSTRAINT__GTIMESTAMP = 1;
    public static final int SIGNAL_PATH_CONSTRAINT__CHECKSUM = 2;
    public static final int SIGNAL_PATH_CONSTRAINT__TIMESTAMP = 3;
    public static final int SIGNAL_PATH_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int SIGNAL_PATH_CONSTRAINT__INTRODUCTION = 5;
    public static final int SIGNAL_PATH_CONSTRAINT__VARIATION_POINT = 6;
    public static final int SIGNAL_PATH_CONSTRAINT_FEATURE_COUNT = 7;
    public static final int COMMON_SIGNAL_PATH = 0;
    public static final int COMMON_SIGNAL_PATH__GCHECKSUM = 0;
    public static final int COMMON_SIGNAL_PATH__GTIMESTAMP = 1;
    public static final int COMMON_SIGNAL_PATH__CHECKSUM = 2;
    public static final int COMMON_SIGNAL_PATH__TIMESTAMP = 3;
    public static final int COMMON_SIGNAL_PATH__SYSTEM_MAPPING = 4;
    public static final int COMMON_SIGNAL_PATH__INTRODUCTION = 5;
    public static final int COMMON_SIGNAL_PATH__VARIATION_POINT = 6;
    public static final int COMMON_SIGNAL_PATH__OPERATIONS = 7;
    public static final int COMMON_SIGNAL_PATH__SIGNALS = 8;
    public static final int COMMON_SIGNAL_PATH_FEATURE_COUNT = 9;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS = 1;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__GCHECKSUM = 0;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__GTIMESTAMP = 1;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__CHECKSUM = 2;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__TIMESTAMP = 3;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__DIRECTION = 4;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS__OPERATIONS = 5;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_FEATURE_COUNT = 6;
    public static final int SWC_TO_SWC_SIGNAL = 2;
    public static final int SWC_TO_SWC_SIGNAL__GCHECKSUM = 0;
    public static final int SWC_TO_SWC_SIGNAL__GTIMESTAMP = 1;
    public static final int SWC_TO_SWC_SIGNAL__CHECKSUM = 2;
    public static final int SWC_TO_SWC_SIGNAL__TIMESTAMP = 3;
    public static final int SWC_TO_SWC_SIGNAL__DATA_ELEMENTS = 4;
    public static final int SWC_TO_SWC_SIGNAL_FEATURE_COUNT = 5;
    public static final int FORBIDDEN_SIGNAL_PATH = 3;
    public static final int FORBIDDEN_SIGNAL_PATH__GCHECKSUM = 0;
    public static final int FORBIDDEN_SIGNAL_PATH__GTIMESTAMP = 1;
    public static final int FORBIDDEN_SIGNAL_PATH__CHECKSUM = 2;
    public static final int FORBIDDEN_SIGNAL_PATH__TIMESTAMP = 3;
    public static final int FORBIDDEN_SIGNAL_PATH__SYSTEM_MAPPING = 4;
    public static final int FORBIDDEN_SIGNAL_PATH__INTRODUCTION = 5;
    public static final int FORBIDDEN_SIGNAL_PATH__VARIATION_POINT = 6;
    public static final int FORBIDDEN_SIGNAL_PATH__OPERATIONS = 7;
    public static final int FORBIDDEN_SIGNAL_PATH__PHYSICAL_CHANNELS = 8;
    public static final int FORBIDDEN_SIGNAL_PATH__SIGNALS = 9;
    public static final int FORBIDDEN_SIGNAL_PATH_FEATURE_COUNT = 10;
    public static final int PERMISSIBLE_SIGNAL_PATH = 4;
    public static final int PERMISSIBLE_SIGNAL_PATH__GCHECKSUM = 0;
    public static final int PERMISSIBLE_SIGNAL_PATH__GTIMESTAMP = 1;
    public static final int PERMISSIBLE_SIGNAL_PATH__CHECKSUM = 2;
    public static final int PERMISSIBLE_SIGNAL_PATH__TIMESTAMP = 3;
    public static final int PERMISSIBLE_SIGNAL_PATH__SYSTEM_MAPPING = 4;
    public static final int PERMISSIBLE_SIGNAL_PATH__INTRODUCTION = 5;
    public static final int PERMISSIBLE_SIGNAL_PATH__VARIATION_POINT = 6;
    public static final int PERMISSIBLE_SIGNAL_PATH__OPERATIONS = 7;
    public static final int PERMISSIBLE_SIGNAL_PATH__PHYSICAL_CHANNELS = 8;
    public static final int PERMISSIBLE_SIGNAL_PATH__SIGNALS = 9;
    public static final int PERMISSIBLE_SIGNAL_PATH_FEATURE_COUNT = 10;
    public static final int SEPARATE_SIGNAL_PATH = 5;
    public static final int SEPARATE_SIGNAL_PATH__GCHECKSUM = 0;
    public static final int SEPARATE_SIGNAL_PATH__GTIMESTAMP = 1;
    public static final int SEPARATE_SIGNAL_PATH__CHECKSUM = 2;
    public static final int SEPARATE_SIGNAL_PATH__TIMESTAMP = 3;
    public static final int SEPARATE_SIGNAL_PATH__SYSTEM_MAPPING = 4;
    public static final int SEPARATE_SIGNAL_PATH__INTRODUCTION = 5;
    public static final int SEPARATE_SIGNAL_PATH__VARIATION_POINT = 6;
    public static final int SEPARATE_SIGNAL_PATH__OPERATIONS = 7;
    public static final int SEPARATE_SIGNAL_PATH__SIGNALS = 8;
    public static final int SEPARATE_SIGNAL_PATH_FEATURE_COUNT = 9;
    public static final int SWC_TO_SWC_OPERATION_ARGUMENTS_DIRECTION_ENUM = 7;

    public EClass getCommonSignalPath();

    public EReference getCommonSignalPath_Operations();

    public EReference getCommonSignalPath_Signals();

    public EClass getSwcToSwcOperationArguments();

    public EAttribute getSwcToSwcOperationArguments_Direction();

    public EReference getSwcToSwcOperationArguments_Operations();

    public EClass getSwcToSwcSignal();

    public EReference getSwcToSwcSignal_DataElements();

    public EClass getForbiddenSignalPath();

    public EReference getForbiddenSignalPath_Operations();

    public EReference getForbiddenSignalPath_PhysicalChannels();

    public EReference getForbiddenSignalPath_Signals();

    public EClass getPermissibleSignalPath();

    public EReference getPermissibleSignalPath_Operations();

    public EReference getPermissibleSignalPath_PhysicalChannels();

    public EReference getPermissibleSignalPath_Signals();

    public EClass getSeparateSignalPath();

    public EReference getSeparateSignalPath_Operations();

    public EReference getSeparateSignalPath_Signals();

    public EClass getSignalPathConstraint();

    public EReference getSignalPathConstraint_SystemMapping();

    public EReference getSignalPathConstraint_Introduction();

    public EReference getSignalPathConstraint_VariationPoint();

    public EEnum getSwcToSwcOperationArgumentsDirectionEnum();

    public SignalpathsFactory getSignalpathsFactory();

    public static interface Literals {
        public static final EClass COMMON_SIGNAL_PATH = eINSTANCE.getCommonSignalPath();
        public static final EReference COMMON_SIGNAL_PATH__OPERATIONS = eINSTANCE.getCommonSignalPath_Operations();
        public static final EReference COMMON_SIGNAL_PATH__SIGNALS = eINSTANCE.getCommonSignalPath_Signals();
        public static final EClass SWC_TO_SWC_OPERATION_ARGUMENTS = eINSTANCE.getSwcToSwcOperationArguments();
        public static final EAttribute SWC_TO_SWC_OPERATION_ARGUMENTS__DIRECTION = eINSTANCE.getSwcToSwcOperationArguments_Direction();
        public static final EReference SWC_TO_SWC_OPERATION_ARGUMENTS__OPERATIONS = eINSTANCE.getSwcToSwcOperationArguments_Operations();
        public static final EClass SWC_TO_SWC_SIGNAL = eINSTANCE.getSwcToSwcSignal();
        public static final EReference SWC_TO_SWC_SIGNAL__DATA_ELEMENTS = eINSTANCE.getSwcToSwcSignal_DataElements();
        public static final EClass FORBIDDEN_SIGNAL_PATH = eINSTANCE.getForbiddenSignalPath();
        public static final EReference FORBIDDEN_SIGNAL_PATH__OPERATIONS = eINSTANCE.getForbiddenSignalPath_Operations();
        public static final EReference FORBIDDEN_SIGNAL_PATH__PHYSICAL_CHANNELS = eINSTANCE.getForbiddenSignalPath_PhysicalChannels();
        public static final EReference FORBIDDEN_SIGNAL_PATH__SIGNALS = eINSTANCE.getForbiddenSignalPath_Signals();
        public static final EClass PERMISSIBLE_SIGNAL_PATH = eINSTANCE.getPermissibleSignalPath();
        public static final EReference PERMISSIBLE_SIGNAL_PATH__OPERATIONS = eINSTANCE.getPermissibleSignalPath_Operations();
        public static final EReference PERMISSIBLE_SIGNAL_PATH__PHYSICAL_CHANNELS = eINSTANCE.getPermissibleSignalPath_PhysicalChannels();
        public static final EReference PERMISSIBLE_SIGNAL_PATH__SIGNALS = eINSTANCE.getPermissibleSignalPath_Signals();
        public static final EClass SEPARATE_SIGNAL_PATH = eINSTANCE.getSeparateSignalPath();
        public static final EReference SEPARATE_SIGNAL_PATH__OPERATIONS = eINSTANCE.getSeparateSignalPath_Operations();
        public static final EReference SEPARATE_SIGNAL_PATH__SIGNALS = eINSTANCE.getSeparateSignalPath_Signals();
        public static final EClass SIGNAL_PATH_CONSTRAINT = eINSTANCE.getSignalPathConstraint();
        public static final EReference SIGNAL_PATH_CONSTRAINT__SYSTEM_MAPPING = eINSTANCE.getSignalPathConstraint_SystemMapping();
        public static final EReference SIGNAL_PATH_CONSTRAINT__INTRODUCTION = eINSTANCE.getSignalPathConstraint_Introduction();
        public static final EReference SIGNAL_PATH_CONSTRAINT__VARIATION_POINT = eINSTANCE.getSignalPathConstraint_VariationPoint();
        public static final EEnum SWC_TO_SWC_OPERATION_ARGUMENTS_DIRECTION_ENUM = eINSTANCE.getSwcToSwcOperationArgumentsDirectionEnum();
    }
}

