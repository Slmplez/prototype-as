/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.calibrationvalue;

import autosar40.commonstructure.calibrationvalue.CalibrationvalueFactory;
import autosar40.commonstructure.calibrationvalue.impl.CalibrationvaluePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CalibrationvaluePackage
extends EPackage {
    public static final String eNAME = "calibrationvalue";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/cv";
    public static final String eNS_PREFIX = "";
    public static final CalibrationvaluePackage eINSTANCE = CalibrationvaluePackageImpl.init();
    public static final int SW_AXIS_CONT = 0;
    public static final int SW_AXIS_CONT__GCHECKSUM = 0;
    public static final int SW_AXIS_CONT__GTIMESTAMP = 1;
    public static final int SW_AXIS_CONT__CHECKSUM = 2;
    public static final int SW_AXIS_CONT__TIMESTAMP = 3;
    public static final int SW_AXIS_CONT__APPLICATION_VALUE_SPECIFICATION = 4;
    public static final int SW_AXIS_CONT__CATEGORY = 5;
    public static final int SW_AXIS_CONT__UNIT = 6;
    public static final int SW_AXIS_CONT__UNIT_DISPLAY_NAME = 7;
    public static final int SW_AXIS_CONT__SW_AXIS_INDEX = 8;
    public static final int SW_AXIS_CONT__SW_ARRAYSIZE = 9;
    public static final int SW_AXIS_CONT__SW_VALUES_PHYS = 10;
    public static final int SW_AXIS_CONT_FEATURE_COUNT = 11;
    public static final int SW_VALUE_CONT = 1;
    public static final int SW_VALUE_CONT__GCHECKSUM = 0;
    public static final int SW_VALUE_CONT__GTIMESTAMP = 1;
    public static final int SW_VALUE_CONT__CHECKSUM = 2;
    public static final int SW_VALUE_CONT__TIMESTAMP = 3;
    public static final int SW_VALUE_CONT__APPLICATION_VALUE_SPECIFICATION = 4;
    public static final int SW_VALUE_CONT__UNIT = 5;
    public static final int SW_VALUE_CONT__UNIT_DISPLAY_NAME = 6;
    public static final int SW_VALUE_CONT__SW_ARRAYSIZE = 7;
    public static final int SW_VALUE_CONT__SW_VALUES_PHYS = 8;
    public static final int SW_VALUE_CONT_FEATURE_COUNT = 9;
    public static final int VALUE_GROUP = 2;
    public static final int VALUE_GROUP__GCHECKSUM = 0;
    public static final int VALUE_GROUP__GTIMESTAMP = 1;
    public static final int VALUE_GROUP__CHECKSUM = 2;
    public static final int VALUE_GROUP__TIMESTAMP = 3;
    public static final int VALUE_GROUP__SW_VALUES = 4;
    public static final int VALUE_GROUP__LABEL = 5;
    public static final int VALUE_GROUP__VG_CONTENTS = 6;
    public static final int VALUE_GROUP_FEATURE_COUNT = 7;
    public static final int SW_VALUES = 3;
    public static final int SW_VALUES__GCHECKSUM = 0;
    public static final int SW_VALUES__GTIMESTAMP = 1;
    public static final int SW_VALUES__CHECKSUM = 2;
    public static final int SW_VALUES__TIMESTAMP = 3;
    public static final int SW_VALUES__VFS = 4;
    public static final int SW_VALUES__VTS = 5;
    public static final int SW_VALUES__VS = 6;
    public static final int SW_VALUES__VGS = 7;
    public static final int SW_VALUES_FEATURE_COUNT = 8;

    public EClass getSwAxisCont();

    public EReference getSwAxisCont_ApplicationValueSpecification();

    public EAttribute getSwAxisCont_Category();

    public EReference getSwAxisCont_Unit();

    public EReference getSwAxisCont_UnitDisplayName();

    public EAttribute getSwAxisCont_SwAxisIndex();

    public EReference getSwAxisCont_SwArraysize();

    public EReference getSwAxisCont_SwValuesPhys();

    public EClass getSwValueCont();

    public EReference getSwValueCont_ApplicationValueSpecification();

    public EReference getSwValueCont_Unit();

    public EReference getSwValueCont_UnitDisplayName();

    public EReference getSwValueCont_SwArraysize();

    public EReference getSwValueCont_SwValuesPhys();

    public EClass getValueGroup();

    public EReference getValueGroup_SwValues();

    public EReference getValueGroup_Label();

    public EReference getValueGroup_VgContents();

    public EClass getSwValues();

    public EReference getSwValues_Vfs();

    public EAttribute getSwValues_Vts();

    public EAttribute getSwValues_Vs();

    public EReference getSwValues_Vgs();

    public CalibrationvalueFactory getCalibrationvalueFactory();

    public static interface Literals {
        public static final EClass SW_AXIS_CONT = eINSTANCE.getSwAxisCont();
        public static final EReference SW_AXIS_CONT__APPLICATION_VALUE_SPECIFICATION = eINSTANCE.getSwAxisCont_ApplicationValueSpecification();
        public static final EAttribute SW_AXIS_CONT__CATEGORY = eINSTANCE.getSwAxisCont_Category();
        public static final EReference SW_AXIS_CONT__UNIT = eINSTANCE.getSwAxisCont_Unit();
        public static final EReference SW_AXIS_CONT__UNIT_DISPLAY_NAME = eINSTANCE.getSwAxisCont_UnitDisplayName();
        public static final EAttribute SW_AXIS_CONT__SW_AXIS_INDEX = eINSTANCE.getSwAxisCont_SwAxisIndex();
        public static final EReference SW_AXIS_CONT__SW_ARRAYSIZE = eINSTANCE.getSwAxisCont_SwArraysize();
        public static final EReference SW_AXIS_CONT__SW_VALUES_PHYS = eINSTANCE.getSwAxisCont_SwValuesPhys();
        public static final EClass SW_VALUE_CONT = eINSTANCE.getSwValueCont();
        public static final EReference SW_VALUE_CONT__APPLICATION_VALUE_SPECIFICATION = eINSTANCE.getSwValueCont_ApplicationValueSpecification();
        public static final EReference SW_VALUE_CONT__UNIT = eINSTANCE.getSwValueCont_Unit();
        public static final EReference SW_VALUE_CONT__UNIT_DISPLAY_NAME = eINSTANCE.getSwValueCont_UnitDisplayName();
        public static final EReference SW_VALUE_CONT__SW_ARRAYSIZE = eINSTANCE.getSwValueCont_SwArraysize();
        public static final EReference SW_VALUE_CONT__SW_VALUES_PHYS = eINSTANCE.getSwValueCont_SwValuesPhys();
        public static final EClass VALUE_GROUP = eINSTANCE.getValueGroup();
        public static final EReference VALUE_GROUP__SW_VALUES = eINSTANCE.getValueGroup_SwValues();
        public static final EReference VALUE_GROUP__LABEL = eINSTANCE.getValueGroup_Label();
        public static final EReference VALUE_GROUP__VG_CONTENTS = eINSTANCE.getValueGroup_VgContents();
        public static final EClass SW_VALUES = eINSTANCE.getSwValues();
        public static final EReference SW_VALUES__VFS = eINSTANCE.getSwValues_Vfs();
        public static final EAttribute SW_VALUES__VTS = eINSTANCE.getSwValues_Vts();
        public static final EAttribute SW_VALUES__VS = eINSTANCE.getSwValues_Vs();
        public static final EReference SW_VALUES__VGS = eINSTANCE.getSwValues_Vgs();
    }
}

