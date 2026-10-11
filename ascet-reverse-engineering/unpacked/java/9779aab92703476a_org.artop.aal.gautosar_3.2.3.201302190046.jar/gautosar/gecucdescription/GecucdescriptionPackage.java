/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gecucdescription;

import gautosar.gecucdescription.GecucdescriptionFactory;
import gautosar.gecucdescription.impl.GecucdescriptionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GecucdescriptionPackage
extends EPackage {
    public static final String eNAME = "gecucdescription";
    public static final String eNS_URI = "http://artop.org/gautosar/ed";
    public static final String eNS_PREFIX = "";
    public static final GecucdescriptionPackage eINSTANCE = GecucdescriptionPackageImpl.init();
    public static final int GMODULE_CONFIGURATION = 0;
    public static final int GMODULE_CONFIGURATION__GCHECKSUM = 0;
    public static final int GMODULE_CONFIGURATION__GTIMESTAMP = 1;
    public static final int GMODULE_CONFIGURATION__GSHORT_NAME = 2;
    public static final int GMODULE_CONFIGURATION__GUUID = 3;
    public static final int GMODULE_CONFIGURATION__GCATEGORY = 4;
    public static final int GMODULE_CONFIGURATION__GDESC = 5;
    public static final int GMODULE_CONFIGURATION__GAR_PACKAGE = 6;
    public static final int GMODULE_CONFIGURATION_FEATURE_COUNT = 7;
    public static final int GCONTAINER = 1;
    public static final int GCONTAINER__GCHECKSUM = 0;
    public static final int GCONTAINER__GTIMESTAMP = 1;
    public static final int GCONTAINER__GSHORT_NAME = 2;
    public static final int GCONTAINER__GUUID = 3;
    public static final int GCONTAINER__GCATEGORY = 4;
    public static final int GCONTAINER__GDESC = 5;
    public static final int GCONTAINER_FEATURE_COUNT = 6;
    public static final int GPARAMETER_VALUE = 2;
    public static final int GPARAMETER_VALUE__GCHECKSUM = 0;
    public static final int GPARAMETER_VALUE__GTIMESTAMP = 1;
    public static final int GPARAMETER_VALUE_FEATURE_COUNT = 2;
    public static final int GCONFIG_REFERENCE_VALUE = 3;
    public static final int GCONFIG_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int GCONFIG_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int GCONFIG_REFERENCE_VALUE_FEATURE_COUNT = 2;
    public static final int GREFERENCE_VALUE = 4;
    public static final int GREFERENCE_VALUE__GCHECKSUM = 0;
    public static final int GREFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int GREFERENCE_VALUE_FEATURE_COUNT = 2;
    public static final int GINSTANCE_REFERENCE_VALUE = 5;
    public static final int GINSTANCE_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int GINSTANCE_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int GINSTANCE_REFERENCE_VALUE_FEATURE_COUNT = 2;
    public static final int GBOOLEAN_VALUE = 6;
    public static final int GBOOLEAN_VALUE__GCHECKSUM = 0;
    public static final int GBOOLEAN_VALUE__GTIMESTAMP = 1;
    public static final int GBOOLEAN_VALUE__GVALUE = 2;
    public static final int GBOOLEAN_VALUE_FEATURE_COUNT = 3;
    public static final int GENUMERATION_VALUE = 7;
    public static final int GENUMERATION_VALUE__GCHECKSUM = 0;
    public static final int GENUMERATION_VALUE__GTIMESTAMP = 1;
    public static final int GENUMERATION_VALUE__GVALUE = 2;
    public static final int GENUMERATION_VALUE_FEATURE_COUNT = 3;
    public static final int GINTEGER_VALUE = 8;
    public static final int GINTEGER_VALUE__GCHECKSUM = 0;
    public static final int GINTEGER_VALUE__GTIMESTAMP = 1;
    public static final int GINTEGER_VALUE__GVALUE = 2;
    public static final int GINTEGER_VALUE_FEATURE_COUNT = 3;
    public static final int GSTRING_VALUE = 9;
    public static final int GSTRING_VALUE__GCHECKSUM = 0;
    public static final int GSTRING_VALUE__GTIMESTAMP = 1;
    public static final int GSTRING_VALUE__GVALUE = 2;
    public static final int GSTRING_VALUE_FEATURE_COUNT = 3;
    public static final int GLINKER_SYMBOL_VALUE = 10;
    public static final int GLINKER_SYMBOL_VALUE__GCHECKSUM = 0;
    public static final int GLINKER_SYMBOL_VALUE__GTIMESTAMP = 1;
    public static final int GLINKER_SYMBOL_VALUE__GVALUE = 2;
    public static final int GLINKER_SYMBOL_VALUE_FEATURE_COUNT = 3;
    public static final int GFUNCTION_NAME_VALUE = 11;
    public static final int GFUNCTION_NAME_VALUE__GCHECKSUM = 0;
    public static final int GFUNCTION_NAME_VALUE__GTIMESTAMP = 1;
    public static final int GFUNCTION_NAME_VALUE__GVALUE = 2;
    public static final int GFUNCTION_NAME_VALUE_FEATURE_COUNT = 3;
    public static final int GFLOAT_VALUE = 12;
    public static final int GFLOAT_VALUE__GCHECKSUM = 0;
    public static final int GFLOAT_VALUE__GTIMESTAMP = 1;
    public static final int GFLOAT_VALUE__GVALUE = 2;
    public static final int GFLOAT_VALUE_FEATURE_COUNT = 3;

    public EClass getGModuleConfiguration();

    public EClass getGContainer();

    public EClass getGParameterValue();

    public EClass getGConfigReferenceValue();

    public EClass getGReferenceValue();

    public EClass getGInstanceReferenceValue();

    public EClass getGBooleanValue();

    public EAttribute getGBooleanValue_GValue();

    public EClass getGEnumerationValue();

    public EAttribute getGEnumerationValue_GValue();

    public EClass getGIntegerValue();

    public EAttribute getGIntegerValue_GValue();

    public EClass getGStringValue();

    public EAttribute getGStringValue_GValue();

    public EClass getGLinkerSymbolValue();

    public EClass getGFunctionNameValue();

    public EClass getGFloatValue();

    public EAttribute getGFloatValue_GValue();

    public GecucdescriptionFactory getGecucdescriptionFactory();

    public static interface Literals {
        public static final EClass GMODULE_CONFIGURATION = eINSTANCE.getGModuleConfiguration();
        public static final EClass GCONTAINER = eINSTANCE.getGContainer();
        public static final EClass GPARAMETER_VALUE = eINSTANCE.getGParameterValue();
        public static final EClass GCONFIG_REFERENCE_VALUE = eINSTANCE.getGConfigReferenceValue();
        public static final EClass GREFERENCE_VALUE = eINSTANCE.getGReferenceValue();
        public static final EClass GINSTANCE_REFERENCE_VALUE = eINSTANCE.getGInstanceReferenceValue();
        public static final EClass GBOOLEAN_VALUE = eINSTANCE.getGBooleanValue();
        public static final EAttribute GBOOLEAN_VALUE__GVALUE = eINSTANCE.getGBooleanValue_GValue();
        public static final EClass GENUMERATION_VALUE = eINSTANCE.getGEnumerationValue();
        public static final EAttribute GENUMERATION_VALUE__GVALUE = eINSTANCE.getGEnumerationValue_GValue();
        public static final EClass GINTEGER_VALUE = eINSTANCE.getGIntegerValue();
        public static final EAttribute GINTEGER_VALUE__GVALUE = eINSTANCE.getGIntegerValue_GValue();
        public static final EClass GSTRING_VALUE = eINSTANCE.getGStringValue();
        public static final EAttribute GSTRING_VALUE__GVALUE = eINSTANCE.getGStringValue_GValue();
        public static final EClass GLINKER_SYMBOL_VALUE = eINSTANCE.getGLinkerSymbolValue();
        public static final EClass GFUNCTION_NAME_VALUE = eINSTANCE.getGFunctionNameValue();
        public static final EClass GFLOAT_VALUE = eINSTANCE.getGFloatValue();
        public static final EAttribute GFLOAT_VALUE__GVALUE = eINSTANCE.getGFloatValue_GValue();
    }
}

