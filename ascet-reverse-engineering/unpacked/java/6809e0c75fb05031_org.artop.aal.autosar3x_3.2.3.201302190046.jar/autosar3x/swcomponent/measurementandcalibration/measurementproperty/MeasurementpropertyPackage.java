/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty;

import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyFactory;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MeasurementpropertyPackage
extends EPackage {
    public static final String eNAME = "measurementproperty";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/mac/mp";
    public static final String eNS_PREFIX = "";
    public static final MeasurementpropertyPackage eINSTANCE = MeasurementpropertyPackageImpl.init();
    public static final int DATA_PROTOTYPE_REF = 0;
    public static final int DATA_PROTOTYPE_REF__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE_REF__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE_REF__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE_REF__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE_REF__DATA_PROTOTYPE = 4;
    public static final int DATA_PROTOTYPE_REF_FEATURE_COUNT = 5;
    public static final int RECORD_ELEMENT_REF = 1;
    public static final int RECORD_ELEMENT_REF__GCHECKSUM = 0;
    public static final int RECORD_ELEMENT_REF__GTIMESTAMP = 1;
    public static final int RECORD_ELEMENT_REF__CHECKSUM = 2;
    public static final int RECORD_ELEMENT_REF__TIMESTAMP = 3;
    public static final int RECORD_ELEMENT_REF__RECORD_ELEMENT = 4;
    public static final int RECORD_ELEMENT_REF_FEATURE_COUNT = 5;

    public EClass getDataPrototypeRef();

    public EReference getDataPrototypeRef_DataPrototype();

    public EClass getRecordElementRef();

    public EReference getRecordElementRef_RecordElement();

    public MeasurementpropertyFactory getMeasurementpropertyFactory();

    public static interface Literals {
        public static final EClass DATA_PROTOTYPE_REF = eINSTANCE.getDataPrototypeRef();
        public static final EReference DATA_PROTOTYPE_REF__DATA_PROTOTYPE = eINSTANCE.getDataPrototypeRef_DataPrototype();
        public static final EClass RECORD_ELEMENT_REF = eINSTANCE.getRecordElementRef();
        public static final EReference RECORD_ELEMENT_REF__RECORD_ELEMENT = eINSTANCE.getRecordElementRef_RecordElement();
    }
}

