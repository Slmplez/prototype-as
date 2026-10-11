/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.gprimitivetypes;

import gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesFactory;
import gautosar.ggenericstructure.gprimitivetypes.impl.GprimitivetypesPackageImpl;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;

public interface GprimitivetypesPackage
extends EPackage {
    public static final String eNAME = "gprimitivetypes";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/pt";
    public static final String eNS_PREFIX = "";
    public static final GprimitivetypesPackage eINSTANCE = GprimitivetypesPackageImpl.init();
    public static final int STRING = 0;
    public static final int BOOLEAN = 1;
    public static final int FLOAT = 2;
    public static final int INTEGER = 3;
    public static final int DATE_TIME = 4;
    public static final int UNLIMITED_NATURAL = 5;
    public static final int IDENTIFIER = 6;
    public static final int BASE_TYPE_ENCODING_STRING = 7;
    public static final int VERBATIM_STRING = 8;
    public static final int NUMERICAL = 9;

    public EDataType getString();

    public EDataType getBoolean();

    public EDataType getFloat();

    public EDataType getInteger();

    public EDataType getDateTime();

    public EDataType getUnlimitedNatural();

    public EDataType getIdentifier();

    public EDataType getBaseTypeEncodingString();

    public EDataType getVerbatimString();

    public EDataType getNumerical();

    public GprimitivetypesFactory getGprimitivetypesFactory();

    public static interface Literals {
        public static final EDataType STRING = eINSTANCE.getString();
        public static final EDataType BOOLEAN = eINSTANCE.getBoolean();
        public static final EDataType FLOAT = eINSTANCE.getFloat();
        public static final EDataType INTEGER = eINSTANCE.getInteger();
        public static final EDataType DATE_TIME = eINSTANCE.getDateTime();
        public static final EDataType UNLIMITED_NATURAL = eINSTANCE.getUnlimitedNatural();
        public static final EDataType IDENTIFIER = eINSTANCE.getIdentifier();
        public static final EDataType BASE_TYPE_ENCODING_STRING = eINSTANCE.getBaseTypeEncodingString();
        public static final EDataType VERBATIM_STRING = eINSTANCE.getVerbatimString();
        public static final EDataType NUMERICAL = eINSTANCE.getNumerical();
    }
}

