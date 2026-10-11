/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.abstractstructure;

import autosar40.genericstructure.abstractstructure.AbstractstructureFactory;
import autosar40.genericstructure.abstractstructure.impl.AbstractstructurePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AbstractstructurePackage
extends EPackage {
    public static final String eNAME = "abstractstructure";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/as";
    public static final String eNS_PREFIX = "";
    public static final AbstractstructurePackage eINSTANCE = AbstractstructurePackageImpl.init();
    public static final int ATP_CLASSIFIER = 0;
    public static final int ATP_CLASSIFIER__GCHECKSUM = 0;
    public static final int ATP_CLASSIFIER__GTIMESTAMP = 1;
    public static final int ATP_CLASSIFIER__CHECKSUM = 2;
    public static final int ATP_CLASSIFIER__TIMESTAMP = 3;
    public static final int ATP_CLASSIFIER__GSHORT_NAME = 4;
    public static final int ATP_CLASSIFIER__SHORT_NAME = 5;
    public static final int ATP_CLASSIFIER__LONG_NAME = 6;
    public static final int ATP_CLASSIFIER__GUUID = 7;
    public static final int ATP_CLASSIFIER__GCATEGORY = 8;
    public static final int ATP_CLASSIFIER__GDESC = 9;
    public static final int ATP_CLASSIFIER__DESC = 10;
    public static final int ATP_CLASSIFIER__CATEGORY = 11;
    public static final int ATP_CLASSIFIER__ADMIN_DATA = 12;
    public static final int ATP_CLASSIFIER__INTRODUCTION = 13;
    public static final int ATP_CLASSIFIER__ANNOTATIONS = 14;
    public static final int ATP_CLASSIFIER__UUID = 15;
    public static final int ATP_CLASSIFIER__ALL_EXTENSIONS = 16;
    public static final int ATP_CLASSIFIER__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_CLASSIFIER_FEATURE_COUNT = 18;
    public static final int ATP_INSTANCE_REF = 1;
    public static final int ATP_INSTANCE_REF__GCHECKSUM = 0;
    public static final int ATP_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int ATP_INSTANCE_REF__CHECKSUM = 2;
    public static final int ATP_INSTANCE_REF__TIMESTAMP = 3;
    public static final int ATP_INSTANCE_REF_FEATURE_COUNT = 4;
    public static final int ATP_FEATURE = 3;
    public static final int ATP_FEATURE__GCHECKSUM = 0;
    public static final int ATP_FEATURE__GTIMESTAMP = 1;
    public static final int ATP_FEATURE__CHECKSUM = 2;
    public static final int ATP_FEATURE__TIMESTAMP = 3;
    public static final int ATP_FEATURE__GSHORT_NAME = 4;
    public static final int ATP_FEATURE__SHORT_NAME = 5;
    public static final int ATP_FEATURE__LONG_NAME = 6;
    public static final int ATP_FEATURE__GUUID = 7;
    public static final int ATP_FEATURE__GCATEGORY = 8;
    public static final int ATP_FEATURE__GDESC = 9;
    public static final int ATP_FEATURE__DESC = 10;
    public static final int ATP_FEATURE__CATEGORY = 11;
    public static final int ATP_FEATURE__ADMIN_DATA = 12;
    public static final int ATP_FEATURE__INTRODUCTION = 13;
    public static final int ATP_FEATURE__ANNOTATIONS = 14;
    public static final int ATP_FEATURE__UUID = 15;
    public static final int ATP_FEATURE__ALL_EXTENSIONS = 16;
    public static final int ATP_FEATURE__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_FEATURE__ATP_CLASSIFIER = 18;
    public static final int ATP_FEATURE_FEATURE_COUNT = 19;
    public static final int ATP_PROTOTYPE = 2;
    public static final int ATP_PROTOTYPE__GCHECKSUM = 0;
    public static final int ATP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ATP_PROTOTYPE__CHECKSUM = 2;
    public static final int ATP_PROTOTYPE__TIMESTAMP = 3;
    public static final int ATP_PROTOTYPE__GSHORT_NAME = 4;
    public static final int ATP_PROTOTYPE__SHORT_NAME = 5;
    public static final int ATP_PROTOTYPE__LONG_NAME = 6;
    public static final int ATP_PROTOTYPE__GUUID = 7;
    public static final int ATP_PROTOTYPE__GCATEGORY = 8;
    public static final int ATP_PROTOTYPE__GDESC = 9;
    public static final int ATP_PROTOTYPE__DESC = 10;
    public static final int ATP_PROTOTYPE__CATEGORY = 11;
    public static final int ATP_PROTOTYPE__ADMIN_DATA = 12;
    public static final int ATP_PROTOTYPE__INTRODUCTION = 13;
    public static final int ATP_PROTOTYPE__ANNOTATIONS = 14;
    public static final int ATP_PROTOTYPE__UUID = 15;
    public static final int ATP_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int ATP_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int ATP_PROTOTYPE_FEATURE_COUNT = 19;
    public static final int ATP_TYPE = 4;
    public static final int ATP_TYPE__GCHECKSUM = 0;
    public static final int ATP_TYPE__GTIMESTAMP = 1;
    public static final int ATP_TYPE__CHECKSUM = 2;
    public static final int ATP_TYPE__TIMESTAMP = 3;
    public static final int ATP_TYPE__GSHORT_NAME = 4;
    public static final int ATP_TYPE__SHORT_NAME = 5;
    public static final int ATP_TYPE__LONG_NAME = 6;
    public static final int ATP_TYPE__GUUID = 7;
    public static final int ATP_TYPE__GCATEGORY = 8;
    public static final int ATP_TYPE__GDESC = 9;
    public static final int ATP_TYPE__DESC = 10;
    public static final int ATP_TYPE__CATEGORY = 11;
    public static final int ATP_TYPE__ADMIN_DATA = 12;
    public static final int ATP_TYPE__INTRODUCTION = 13;
    public static final int ATP_TYPE__ANNOTATIONS = 14;
    public static final int ATP_TYPE__UUID = 15;
    public static final int ATP_TYPE__ALL_EXTENSIONS = 16;
    public static final int ATP_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_TYPE_FEATURE_COUNT = 18;
    public static final int ATP_STRUCTURE_ELEMENT = 5;
    public static final int ATP_STRUCTURE_ELEMENT__GCHECKSUM = 0;
    public static final int ATP_STRUCTURE_ELEMENT__GTIMESTAMP = 1;
    public static final int ATP_STRUCTURE_ELEMENT__CHECKSUM = 2;
    public static final int ATP_STRUCTURE_ELEMENT__TIMESTAMP = 3;
    public static final int ATP_STRUCTURE_ELEMENT__GSHORT_NAME = 4;
    public static final int ATP_STRUCTURE_ELEMENT__SHORT_NAME = 5;
    public static final int ATP_STRUCTURE_ELEMENT__LONG_NAME = 6;
    public static final int ATP_STRUCTURE_ELEMENT__GUUID = 7;
    public static final int ATP_STRUCTURE_ELEMENT__GCATEGORY = 8;
    public static final int ATP_STRUCTURE_ELEMENT__GDESC = 9;
    public static final int ATP_STRUCTURE_ELEMENT__DESC = 10;
    public static final int ATP_STRUCTURE_ELEMENT__CATEGORY = 11;
    public static final int ATP_STRUCTURE_ELEMENT__ADMIN_DATA = 12;
    public static final int ATP_STRUCTURE_ELEMENT__INTRODUCTION = 13;
    public static final int ATP_STRUCTURE_ELEMENT__ANNOTATIONS = 14;
    public static final int ATP_STRUCTURE_ELEMENT__UUID = 15;
    public static final int ATP_STRUCTURE_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int ATP_STRUCTURE_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_STRUCTURE_ELEMENT__ATP_CLASSIFIER = 18;
    public static final int ATP_STRUCTURE_ELEMENT_FEATURE_COUNT = 19;

    public EClass getAtpClassifier();

    public EClass getAtpInstanceRef();

    public EClass getAtpPrototype();

    public EClass getAtpFeature();

    public EReference getAtpFeature_AtpClassifier();

    public EClass getAtpType();

    public EClass getAtpStructureElement();

    public AbstractstructureFactory getAbstractstructureFactory();

    public static interface Literals {
        public static final EClass ATP_CLASSIFIER = eINSTANCE.getAtpClassifier();
        public static final EClass ATP_INSTANCE_REF = eINSTANCE.getAtpInstanceRef();
        public static final EClass ATP_PROTOTYPE = eINSTANCE.getAtpPrototype();
        public static final EClass ATP_FEATURE = eINSTANCE.getAtpFeature();
        public static final EReference ATP_FEATURE__ATP_CLASSIFIER = eINSTANCE.getAtpFeature_AtpClassifier();
        public static final EClass ATP_TYPE = eINSTANCE.getAtpType();
        public static final EClass ATP_STRUCTURE_ELEMENT = eINSTANCE.getAtpStructureElement();
    }
}

