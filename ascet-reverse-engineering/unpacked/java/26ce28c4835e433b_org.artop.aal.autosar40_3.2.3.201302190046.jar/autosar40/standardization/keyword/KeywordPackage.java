/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.keyword;

import autosar40.standardization.keyword.KeywordFactory;
import autosar40.standardization.keyword.impl.KeywordPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface KeywordPackage
extends EPackage {
    public static final String eNAME = "keyword";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/k";
    public static final String eNS_PREFIX = "";
    public static final KeywordPackage eINSTANCE = KeywordPackageImpl.init();
    public static final int KEYWORD = 0;
    public static final int KEYWORD__GCHECKSUM = 0;
    public static final int KEYWORD__GTIMESTAMP = 1;
    public static final int KEYWORD__CHECKSUM = 2;
    public static final int KEYWORD__TIMESTAMP = 3;
    public static final int KEYWORD__GSHORT_NAME = 4;
    public static final int KEYWORD__SHORT_NAME = 5;
    public static final int KEYWORD__LONG_NAME = 6;
    public static final int KEYWORD__GUUID = 7;
    public static final int KEYWORD__GCATEGORY = 8;
    public static final int KEYWORD__GDESC = 9;
    public static final int KEYWORD__DESC = 10;
    public static final int KEYWORD__CATEGORY = 11;
    public static final int KEYWORD__ADMIN_DATA = 12;
    public static final int KEYWORD__INTRODUCTION = 13;
    public static final int KEYWORD__ANNOTATIONS = 14;
    public static final int KEYWORD__UUID = 15;
    public static final int KEYWORD__ALL_EXTENSIONS = 16;
    public static final int KEYWORD__CONTAINED_EXTENSIONS = 17;
    public static final int KEYWORD__KEYWORD_SET = 18;
    public static final int KEYWORD__ABBR_NAME = 19;
    public static final int KEYWORD__CLASSIFICATIONS = 20;
    public static final int KEYWORD_FEATURE_COUNT = 21;
    public static final int KEYWORD_SET = 1;
    public static final int KEYWORD_SET__GCHECKSUM = 0;
    public static final int KEYWORD_SET__GTIMESTAMP = 1;
    public static final int KEYWORD_SET__CHECKSUM = 2;
    public static final int KEYWORD_SET__TIMESTAMP = 3;
    public static final int KEYWORD_SET__GSHORT_NAME = 4;
    public static final int KEYWORD_SET__SHORT_NAME = 5;
    public static final int KEYWORD_SET__LONG_NAME = 6;
    public static final int KEYWORD_SET__GUUID = 7;
    public static final int KEYWORD_SET__GCATEGORY = 8;
    public static final int KEYWORD_SET__GDESC = 9;
    public static final int KEYWORD_SET__DESC = 10;
    public static final int KEYWORD_SET__CATEGORY = 11;
    public static final int KEYWORD_SET__ADMIN_DATA = 12;
    public static final int KEYWORD_SET__INTRODUCTION = 13;
    public static final int KEYWORD_SET__ANNOTATIONS = 14;
    public static final int KEYWORD_SET__UUID = 15;
    public static final int KEYWORD_SET__ALL_EXTENSIONS = 16;
    public static final int KEYWORD_SET__CONTAINED_EXTENSIONS = 17;
    public static final int KEYWORD_SET__GAR_PACKAGE = 18;
    public static final int KEYWORD_SET__AR_PACKAGE = 19;
    public static final int KEYWORD_SET__VARIATION_POINT = 20;
    public static final int KEYWORD_SET__KEYWORDS = 21;
    public static final int KEYWORD_SET_FEATURE_COUNT = 22;

    public EClass getKeyword();

    public EReference getKeyword_KeywordSet();

    public EAttribute getKeyword_AbbrName();

    public EAttribute getKeyword_Classifications();

    public EClass getKeywordSet();

    public EReference getKeywordSet_Keywords();

    public KeywordFactory getKeywordFactory();

    public static interface Literals {
        public static final EClass KEYWORD = eINSTANCE.getKeyword();
        public static final EReference KEYWORD__KEYWORD_SET = eINSTANCE.getKeyword_KeywordSet();
        public static final EAttribute KEYWORD__ABBR_NAME = eINSTANCE.getKeyword_AbbrName();
        public static final EAttribute KEYWORD__CLASSIFICATIONS = eINSTANCE.getKeyword_Classifications();
        public static final EClass KEYWORD_SET = eINSTANCE.getKeywordSet();
        public static final EReference KEYWORD_SET__KEYWORDS = eINSTANCE.getKeywordSet_Keywords();
    }
}

