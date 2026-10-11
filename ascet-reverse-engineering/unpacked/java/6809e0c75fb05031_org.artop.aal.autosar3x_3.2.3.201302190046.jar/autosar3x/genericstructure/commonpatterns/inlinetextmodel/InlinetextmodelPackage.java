/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelFactory;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InlinetextmodelPackage
extends EPackage {
    public static final String eNAME = "inlinetextmodel";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/itm";
    public static final String eNS_PREFIX = "";
    public static final InlinetextmodelPackage eINSTANCE = InlinetextmodelPackageImpl.init();
    public static final int MIXED_CONTENT1 = 0;
    public static final int MIXED_CONTENT1__GCHECKSUM = 0;
    public static final int MIXED_CONTENT1__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT1__CHECKSUM = 2;
    public static final int MIXED_CONTENT1__TIMESTAMP = 3;
    public static final int MIXED_CONTENT1__MIXED = 4;
    public static final int MIXED_CONTENT1__XFILES = 5;
    public static final int MIXED_CONTENT1_FEATURE_COUNT = 6;
    public static final int MIXED_CONTENT10 = 1;
    public static final int MIXED_CONTENT10__GCHECKSUM = 0;
    public static final int MIXED_CONTENT10__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT10__CHECKSUM = 2;
    public static final int MIXED_CONTENT10__TIMESTAMP = 3;
    public static final int MIXED_CONTENT10__MIXED = 4;
    public static final int MIXED_CONTENT10_FEATURE_COUNT = 5;
    public static final int MIXED_CONTENT2 = 2;
    public static final int MIXED_CONTENT2__GCHECKSUM = 0;
    public static final int MIXED_CONTENT2__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT2__CHECKSUM = 2;
    public static final int MIXED_CONTENT2__TIMESTAMP = 3;
    public static final int MIXED_CONTENT2__MIXED = 4;
    public static final int MIXED_CONTENT2_FEATURE_COUNT = 5;
    public static final int MIXED_CONTENT3 = 3;
    public static final int MIXED_CONTENT3__GCHECKSUM = 0;
    public static final int MIXED_CONTENT3__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT3__CHECKSUM = 2;
    public static final int MIXED_CONTENT3__TIMESTAMP = 3;
    public static final int MIXED_CONTENT3__MIXED = 4;
    public static final int MIXED_CONTENT3_FEATURE_COUNT = 5;
    public static final int MIXED_CONTENT5 = 4;
    public static final int MIXED_CONTENT5__GCHECKSUM = 0;
    public static final int MIXED_CONTENT5__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT5__CHECKSUM = 2;
    public static final int MIXED_CONTENT5__TIMESTAMP = 3;
    public static final int MIXED_CONTENT5__MIXED = 4;
    public static final int MIXED_CONTENT5_FEATURE_COUNT = 5;
    public static final int MIXED_CONTENT4 = 5;
    public static final int MIXED_CONTENT4__GCHECKSUM = 0;
    public static final int MIXED_CONTENT4__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT4__CHECKSUM = 2;
    public static final int MIXED_CONTENT4__TIMESTAMP = 3;
    public static final int MIXED_CONTENT4__MIXED = 4;
    public static final int MIXED_CONTENT4_FEATURE_COUNT = 5;

    public EClass getMixedContent1();

    public EAttribute getMixedContent1_Mixed();

    public EReference getMixedContent1_Xfiles();

    public EClass getMixedContent10();

    public EAttribute getMixedContent10_Mixed();

    public EClass getMixedContent2();

    public EAttribute getMixedContent2_Mixed();

    public EClass getMixedContent3();

    public EAttribute getMixedContent3_Mixed();

    public EClass getMixedContent5();

    public EAttribute getMixedContent5_Mixed();

    public EClass getMixedContent4();

    public EAttribute getMixedContent4_Mixed();

    public InlinetextmodelFactory getInlinetextmodelFactory();

    public static interface Literals {
        public static final EClass MIXED_CONTENT1 = eINSTANCE.getMixedContent1();
        public static final EAttribute MIXED_CONTENT1__MIXED = eINSTANCE.getMixedContent1_Mixed();
        public static final EReference MIXED_CONTENT1__XFILES = eINSTANCE.getMixedContent1_Xfiles();
        public static final EClass MIXED_CONTENT10 = eINSTANCE.getMixedContent10();
        public static final EAttribute MIXED_CONTENT10__MIXED = eINSTANCE.getMixedContent10_Mixed();
        public static final EClass MIXED_CONTENT2 = eINSTANCE.getMixedContent2();
        public static final EAttribute MIXED_CONTENT2__MIXED = eINSTANCE.getMixedContent2_Mixed();
        public static final EClass MIXED_CONTENT3 = eINSTANCE.getMixedContent3();
        public static final EAttribute MIXED_CONTENT3__MIXED = eINSTANCE.getMixedContent3_Mixed();
        public static final EClass MIXED_CONTENT5 = eINSTANCE.getMixedContent5();
        public static final EAttribute MIXED_CONTENT5__MIXED = eINSTANCE.getMixedContent5_Mixed();
        public static final EClass MIXED_CONTENT4 = eINSTANCE.getMixedContent4();
        public static final EAttribute MIXED_CONTENT4__MIXED = eINSTANCE.getMixedContent4_Mixed();
    }
}

