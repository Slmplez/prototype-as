/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.perinstancememory;

import autosar21.swcomponent.internalbehavior.perinstancememory.PerinstancememoryFactory;
import autosar21.swcomponent.internalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PerinstancememoryPackage
extends EPackage {
    public static final String eNAME = "perinstancememory";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/pim";
    public static final String eNS_PREFIX = "";
    public static final PerinstancememoryPackage eINSTANCE = PerinstancememoryPackageImpl.init();
    public static final int PER_INSTANCE_MEMORY = 0;
    public static final int PER_INSTANCE_MEMORY__GCHECKSUM = 0;
    public static final int PER_INSTANCE_MEMORY__GTIMESTAMP = 1;
    public static final int PER_INSTANCE_MEMORY__CHECKSUM = 2;
    public static final int PER_INSTANCE_MEMORY__TIMESTAMP = 3;
    public static final int PER_INSTANCE_MEMORY__GSHORT_NAME = 4;
    public static final int PER_INSTANCE_MEMORY__GUUID = 5;
    public static final int PER_INSTANCE_MEMORY__GCATEGORY = 6;
    public static final int PER_INSTANCE_MEMORY__GDESC = 7;
    public static final int PER_INSTANCE_MEMORY__SHORT_NAME = 8;
    public static final int PER_INSTANCE_MEMORY__LONG_NAME = 9;
    public static final int PER_INSTANCE_MEMORY__DESC = 10;
    public static final int PER_INSTANCE_MEMORY__CATEGORY = 11;
    public static final int PER_INSTANCE_MEMORY__ADMIN_DATA = 12;
    public static final int PER_INSTANCE_MEMORY__UUID = 13;
    public static final int PER_INSTANCE_MEMORY__ALL_EXTENSIONS = 14;
    public static final int PER_INSTANCE_MEMORY__CONTAINED_EXTENSIONS = 15;
    public static final int PER_INSTANCE_MEMORY__GTYPE = 16;
    public static final int PER_INSTANCE_MEMORY__GTYPE_DEFINITION = 17;
    public static final int PER_INSTANCE_MEMORY__INTERNAL_BEHAVIOR = 18;
    public static final int PER_INSTANCE_MEMORY__TYPE = 19;
    public static final int PER_INSTANCE_MEMORY__TYPE_DEFINITION = 20;
    public static final int PER_INSTANCE_MEMORY_FEATURE_COUNT = 21;

    public EClass getPerInstanceMemory();

    public EReference getPerInstanceMemory_InternalBehavior();

    public EAttribute getPerInstanceMemory_Type();

    public EAttribute getPerInstanceMemory_TypeDefinition();

    public PerinstancememoryFactory getPerinstancememoryFactory();

    public static interface Literals {
        public static final EClass PER_INSTANCE_MEMORY = eINSTANCE.getPerInstanceMemory();
        public static final EReference PER_INSTANCE_MEMORY__INTERNAL_BEHAVIOR = eINSTANCE.getPerInstanceMemory_InternalBehavior();
        public static final EAttribute PER_INSTANCE_MEMORY__TYPE = eINSTANCE.getPerInstanceMemory_Type();
        public static final EAttribute PER_INSTANCE_MEMORY__TYPE_DEFINITION = eINSTANCE.getPerInstanceMemory_TypeDefinition();
    }
}

