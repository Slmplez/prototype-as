/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.perinstancememory;

import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryFactory;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PerinstancememoryPackage
extends EPackage {
    public static final String eNAME = "perinstancememory";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/pim";
    public static final String eNS_PREFIX = "";
    public static final PerinstancememoryPackage eINSTANCE = PerinstancememoryPackageImpl.init();
    public static final int PER_INSTANCE_MEMORY = 0;
    public static final int PER_INSTANCE_MEMORY__GCHECKSUM = 0;
    public static final int PER_INSTANCE_MEMORY__GTIMESTAMP = 1;
    public static final int PER_INSTANCE_MEMORY__CHECKSUM = 2;
    public static final int PER_INSTANCE_MEMORY__TIMESTAMP = 3;
    public static final int PER_INSTANCE_MEMORY__GSHORT_NAME = 4;
    public static final int PER_INSTANCE_MEMORY__SHORT_NAME = 5;
    public static final int PER_INSTANCE_MEMORY__LONG_NAME = 6;
    public static final int PER_INSTANCE_MEMORY__GUUID = 7;
    public static final int PER_INSTANCE_MEMORY__GCATEGORY = 8;
    public static final int PER_INSTANCE_MEMORY__GDESC = 9;
    public static final int PER_INSTANCE_MEMORY__DESC = 10;
    public static final int PER_INSTANCE_MEMORY__CATEGORY = 11;
    public static final int PER_INSTANCE_MEMORY__ADMIN_DATA = 12;
    public static final int PER_INSTANCE_MEMORY__INTRODUCTION = 13;
    public static final int PER_INSTANCE_MEMORY__ANNOTATIONS = 14;
    public static final int PER_INSTANCE_MEMORY__UUID = 15;
    public static final int PER_INSTANCE_MEMORY__ALL_EXTENSIONS = 16;
    public static final int PER_INSTANCE_MEMORY__CONTAINED_EXTENSIONS = 17;
    public static final int PER_INSTANCE_MEMORY__ATP_CLASSIFIER = 18;
    public static final int PER_INSTANCE_MEMORY__GTYPE = 19;
    public static final int PER_INSTANCE_MEMORY__GTYPE_DEFINITION = 20;
    public static final int PER_INSTANCE_MEMORY__SWC_INTERNAL_BEHAVIOR = 21;
    public static final int PER_INSTANCE_MEMORY__INIT_VALUE = 22;
    public static final int PER_INSTANCE_MEMORY__SW_DATA_DEF_PROPS = 23;
    public static final int PER_INSTANCE_MEMORY__TYPE = 24;
    public static final int PER_INSTANCE_MEMORY__TYPE_DEFINITION = 25;
    public static final int PER_INSTANCE_MEMORY__VARIATION_POINT = 26;
    public static final int PER_INSTANCE_MEMORY_FEATURE_COUNT = 27;

    public EClass getPerInstanceMemory();

    public EReference getPerInstanceMemory_SwcInternalBehavior();

    public EAttribute getPerInstanceMemory_InitValue();

    public EReference getPerInstanceMemory_SwDataDefProps();

    public EAttribute getPerInstanceMemory_Type();

    public EAttribute getPerInstanceMemory_TypeDefinition();

    public EReference getPerInstanceMemory_VariationPoint();

    public PerinstancememoryFactory getPerinstancememoryFactory();

    public static interface Literals {
        public static final EClass PER_INSTANCE_MEMORY = eINSTANCE.getPerInstanceMemory();
        public static final EReference PER_INSTANCE_MEMORY__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getPerInstanceMemory_SwcInternalBehavior();
        public static final EAttribute PER_INSTANCE_MEMORY__INIT_VALUE = eINSTANCE.getPerInstanceMemory_InitValue();
        public static final EReference PER_INSTANCE_MEMORY__SW_DATA_DEF_PROPS = eINSTANCE.getPerInstanceMemory_SwDataDefProps();
        public static final EAttribute PER_INSTANCE_MEMORY__TYPE = eINSTANCE.getPerInstanceMemory_Type();
        public static final EAttribute PER_INSTANCE_MEMORY__TYPE_DEFINITION = eINSTANCE.getPerInstanceMemory_TypeDefinition();
        public static final EReference PER_INSTANCE_MEMORY__VARIATION_POINT = eINSTANCE.getPerInstanceMemory_VariationPoint();
    }
}

