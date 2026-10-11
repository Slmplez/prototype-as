/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyFactory;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MeasurementpropertyPackage
extends EPackage {
    public static final String eNAME = "measurementproperty";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/mp";
    public static final String eNS_PREFIX = "";
    public static final MeasurementpropertyPackage eINSTANCE = MeasurementpropertyPackageImpl.init();
    public static final int DATA_PROTOTYPE_REF = 0;
    public static final int DATA_PROTOTYPE_REF__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE_REF__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE_REF__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE_REF__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE_REF__DATA_PROTOTYPE = 4;
    public static final int DATA_PROTOTYPE_REF_FEATURE_COUNT = 5;
    public static final int PER_INSTANCE_MEMORY_VARIABLE = 1;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GCHECKSUM = 0;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GTIMESTAMP = 1;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__CHECKSUM = 2;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__TIMESTAMP = 3;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GSHORT_NAME = 4;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GUUID = 5;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GCATEGORY = 6;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GDESC = 7;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__SHORT_NAME = 8;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__LONG_NAME = 9;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__DESC = 10;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__CATEGORY = 11;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__ADMIN_DATA = 12;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__UUID = 13;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__ALL_EXTENSIONS = 14;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__CONTAINED_EXTENSIONS = 15;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GTYPE = 16;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__GELEMENT_TYPE = 17;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__SW_DATA_DEF_PROPS = 18;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__TYPE = 19;
    public static final int PER_INSTANCE_MEMORY_VARIABLE__MEASURABLES = 20;
    public static final int PER_INSTANCE_MEMORY_VARIABLE_FEATURE_COUNT = 21;
    public static final int RECORD_ELEMENT_REF = 2;
    public static final int RECORD_ELEMENT_REF__GCHECKSUM = 0;
    public static final int RECORD_ELEMENT_REF__GTIMESTAMP = 1;
    public static final int RECORD_ELEMENT_REF__CHECKSUM = 2;
    public static final int RECORD_ELEMENT_REF__TIMESTAMP = 3;
    public static final int RECORD_ELEMENT_REF__RECORD_ELEMENT = 4;
    public static final int RECORD_ELEMENT_REF_FEATURE_COUNT = 5;
    public static final int MEASURABLE = 3;
    public static final int MEASURABLE__GCHECKSUM = 0;
    public static final int MEASURABLE__GTIMESTAMP = 1;
    public static final int MEASURABLE__CHECKSUM = 2;
    public static final int MEASURABLE__TIMESTAMP = 3;
    public static final int MEASURABLE__GSHORT_NAME = 4;
    public static final int MEASURABLE__GUUID = 5;
    public static final int MEASURABLE__GCATEGORY = 6;
    public static final int MEASURABLE__GDESC = 7;
    public static final int MEASURABLE__SHORT_NAME = 8;
    public static final int MEASURABLE__LONG_NAME = 9;
    public static final int MEASURABLE__DESC = 10;
    public static final int MEASURABLE__CATEGORY = 11;
    public static final int MEASURABLE__ADMIN_DATA = 12;
    public static final int MEASURABLE__UUID = 13;
    public static final int MEASURABLE__ALL_EXTENSIONS = 14;
    public static final int MEASURABLE__CONTAINED_EXTENSIONS = 15;
    public static final int MEASURABLE__SW_DATA_DEF_PROPS = 16;
    public static final int MEASURABLE_FEATURE_COUNT = 17;

    public EClass getDataPrototypeRef();

    public EReference getDataPrototypeRef_DataPrototype();

    public EClass getPerInstanceMemoryVariable();

    public EReference getPerInstanceMemoryVariable_Measurables();

    public EClass getRecordElementRef();

    public EReference getRecordElementRef_RecordElement();

    public EClass getMeasurable();

    public EReference getMeasurable_SwDataDefProps();

    public MeasurementpropertyFactory getMeasurementpropertyFactory();

    public static interface Literals {
        public static final EClass DATA_PROTOTYPE_REF = eINSTANCE.getDataPrototypeRef();
        public static final EReference DATA_PROTOTYPE_REF__DATA_PROTOTYPE = eINSTANCE.getDataPrototypeRef_DataPrototype();
        public static final EClass PER_INSTANCE_MEMORY_VARIABLE = eINSTANCE.getPerInstanceMemoryVariable();
        public static final EReference PER_INSTANCE_MEMORY_VARIABLE__MEASURABLES = eINSTANCE.getPerInstanceMemoryVariable_Measurables();
        public static final EClass RECORD_ELEMENT_REF = eINSTANCE.getRecordElementRef();
        public static final EReference RECORD_ELEMENT_REF__RECORD_ELEMENT = eINSTANCE.getRecordElementRef_RecordElement();
        public static final EClass MEASURABLE = eINSTANCE.getMeasurable();
        public static final EReference MEASURABLE__SW_DATA_DEF_PROPS = eINSTANCE.getMeasurable_SwDataDefProps();
    }
}

