/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gcommonstructure.gdatadefproperties;

import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesFactory;
import gautosar.gcommonstructure.gdatadefproperties.impl.GdatadefpropertiesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GdatadefpropertiesPackage
extends EPackage {
    public static final String eNAME = "gdatadefproperties";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/ddp";
    public static final String eNS_PREFIX = "";
    public static final GdatadefpropertiesPackage eINSTANCE = GdatadefpropertiesPackageImpl.init();
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL = 0;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL__GCHECKSUM = 0;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL__GTIMESTAMP = 1;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL__GBASE_TYPE = 2;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL__GINVALID_VALUE = 3;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL__GCOMPU_METHOD = 4;
    public static final int GSW_DATA_DEF_PROPS_CONDITIONAL_FEATURE_COUNT = 5;

    public EClass getGSwDataDefPropsConditional();

    public EReference getGSwDataDefPropsConditional_GBaseType();

    public EReference getGSwDataDefPropsConditional_GInvalidValue();

    public EReference getGSwDataDefPropsConditional_GCompuMethod();

    public GdatadefpropertiesFactory getGdatadefpropertiesFactory();

    public static interface Literals {
        public static final EClass GSW_DATA_DEF_PROPS_CONDITIONAL = eINSTANCE.getGSwDataDefPropsConditional();
        public static final EReference GSW_DATA_DEF_PROPS_CONDITIONAL__GBASE_TYPE = eINSTANCE.getGSwDataDefPropsConditional_GBaseType();
        public static final EReference GSW_DATA_DEF_PROPS_CONDITIONAL__GINVALID_VALUE = eINSTANCE.getGSwDataDefPropsConditional_GInvalidValue();
        public static final EReference GSW_DATA_DEF_PROPS_CONDITIONAL__GCOMPU_METHOD = eINSTANCE.getGSwDataDefPropsConditional_GCompuMethod();
    }
}

