/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory;

import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.impl.GperinstancememoryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GperinstancememoryPackage
extends EPackage {
    public static final String eNAME = "gperinstancememory";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib/pim";
    public static final String eNS_PREFIX = "";
    public static final GperinstancememoryPackage eINSTANCE = GperinstancememoryPackageImpl.init();
    public static final int GPER_INSTANCE_MEMORY = 0;
    public static final int GPER_INSTANCE_MEMORY__GCHECKSUM = 0;
    public static final int GPER_INSTANCE_MEMORY__GTIMESTAMP = 1;
    public static final int GPER_INSTANCE_MEMORY__GSHORT_NAME = 2;
    public static final int GPER_INSTANCE_MEMORY__GUUID = 3;
    public static final int GPER_INSTANCE_MEMORY__GCATEGORY = 4;
    public static final int GPER_INSTANCE_MEMORY__GDESC = 5;
    public static final int GPER_INSTANCE_MEMORY__GTYPE = 6;
    public static final int GPER_INSTANCE_MEMORY__GTYPE_DEFINITION = 7;
    public static final int GPER_INSTANCE_MEMORY_FEATURE_COUNT = 8;

    public EClass getGPerInstanceMemory();

    public EAttribute getGPerInstanceMemory_GType();

    public EAttribute getGPerInstanceMemory_GTypeDefinition();

    public GperinstancememoryFactory getGperinstancememoryFactory();

    public static interface Literals {
        public static final EClass GPER_INSTANCE_MEMORY = eINSTANCE.getGPerInstanceMemory();
        public static final EAttribute GPER_INSTANCE_MEMORY__GTYPE = eINSTANCE.getGPerInstanceMemory_GType();
        public static final EAttribute GPER_INSTANCE_MEMORY__GTYPE_DEFINITION = eINSTANCE.getGPerInstanceMemory_GTypeDefinition();
    }
}

