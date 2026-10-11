/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.resources.perinstancememorysize;

import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizeFactory;
import autosar21.swcomponent.resources.perinstancememorysize.impl.PerinstancememorysizePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PerinstancememorysizePackage
extends EPackage {
    public static final String eNAME = "perinstancememorysize";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/r/pims";
    public static final String eNS_PREFIX = "";
    public static final PerinstancememorysizePackage eINSTANCE = PerinstancememorysizePackageImpl.init();
    public static final int PER_INSTANCE_MEMORY_SIZE = 0;
    public static final int PER_INSTANCE_MEMORY_SIZE__GCHECKSUM = 0;
    public static final int PER_INSTANCE_MEMORY_SIZE__GTIMESTAMP = 1;
    public static final int PER_INSTANCE_MEMORY_SIZE__CHECKSUM = 2;
    public static final int PER_INSTANCE_MEMORY_SIZE__TIMESTAMP = 3;
    public static final int PER_INSTANCE_MEMORY_SIZE__RESOURCE_CONSUMPTION = 4;
    public static final int PER_INSTANCE_MEMORY_SIZE__ALIGNMENT = 5;
    public static final int PER_INSTANCE_MEMORY_SIZE__PER_INSTANCE_MEMORY = 6;
    public static final int PER_INSTANCE_MEMORY_SIZE__SIZE = 7;
    public static final int PER_INSTANCE_MEMORY_SIZE_FEATURE_COUNT = 8;

    public EClass getPerInstanceMemorySize();

    public EReference getPerInstanceMemorySize_ResourceConsumption();

    public EAttribute getPerInstanceMemorySize_Alignment();

    public EReference getPerInstanceMemorySize_PerInstanceMemory();

    public EAttribute getPerInstanceMemorySize_Size();

    public PerinstancememorysizeFactory getPerinstancememorysizeFactory();

    public static interface Literals {
        public static final EClass PER_INSTANCE_MEMORY_SIZE = eINSTANCE.getPerInstanceMemorySize();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__RESOURCE_CONSUMPTION = eINSTANCE.getPerInstanceMemorySize_ResourceConsumption();
        public static final EAttribute PER_INSTANCE_MEMORY_SIZE__ALIGNMENT = eINSTANCE.getPerInstanceMemorySize_Alignment();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__PER_INSTANCE_MEMORY = eINSTANCE.getPerInstanceMemorySize_PerInstanceMemory();
        public static final EAttribute PER_INSTANCE_MEMORY_SIZE__SIZE = eINSTANCE.getPerInstanceMemorySize_Size();
    }
}

