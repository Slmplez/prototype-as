/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.impl.GprimitivetypesPackageImpl;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface GprimitivetypesPackage
extends EPackage {
    public static final String eNAME = "gprimitivetypes";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/gtc/pt";
    public static final String eNS_PREFIX = "";
    public static final GprimitivetypesPackage eINSTANCE = GprimitivetypesPackageImpl.init();
    public static final int GBYTE_ORDER_ENUM = 0;

    public EEnum getGByteOrderEnum();

    public GprimitivetypesFactory getGprimitivetypesFactory();

    public static interface Literals {
        public static final EEnum GBYTE_ORDER_ENUM = eINSTANCE.getGByteOrderEnum();
    }
}

