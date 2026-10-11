/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.gformulalanguage;

import gautosar.ggenericstructure.gformulalanguage.GformulalanguageFactory;
import gautosar.ggenericstructure.gformulalanguage.impl.GformulalanguagePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GformulalanguagePackage
extends EPackage {
    public static final String eNAME = "gformulalanguage";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/fl";
    public static final String eNS_PREFIX = "null";
    public static final GformulalanguagePackage eINSTANCE = GformulalanguagePackageImpl.init();
    public static final int GFORMULA_EXPRESSION = 0;
    public static final int GFORMULA_EXPRESSION__GCHECKSUM = 0;
    public static final int GFORMULA_EXPRESSION__GTIMESTAMP = 1;
    public static final int GFORMULA_EXPRESSION_FEATURE_COUNT = 2;

    public EClass getGFormulaExpression();

    public GformulalanguageFactory getGformulalanguageFactory();

    public static interface Literals {
        public static final EClass GFORMULA_EXPRESSION = eINSTANCE.getGFormulaExpression();
    }
}

