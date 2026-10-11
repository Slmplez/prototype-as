/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints;

import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsFactory;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.impl.GlocalconstraintsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface GlocalconstraintsPackage
extends EPackage {
    public static final String eNAME = "glocalconstraints";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/d/d/lc";
    public static final String eNS_PREFIX = "";
    public static final GlocalconstraintsPackage eINSTANCE = GlocalconstraintsPackageImpl.init();
    public static final int GABSTRACT_LIMIT = 1;
    public static final int GABSTRACT_LIMIT__GCHECKSUM = 0;
    public static final int GABSTRACT_LIMIT__GTIMESTAMP = 1;
    public static final int GABSTRACT_LIMIT__GINTERVAL_TYPE = 2;
    public static final int GABSTRACT_LIMIT_FEATURE_COUNT = 3;
    public static final int GLIMIT = 0;
    public static final int GLIMIT__GCHECKSUM = 0;
    public static final int GLIMIT__GTIMESTAMP = 1;
    public static final int GLIMIT__GINTERVAL_TYPE = 2;
    public static final int GLIMIT_FEATURE_COUNT = 3;
    public static final int GINTERVAL_TYPE_ENUM = 2;

    public EClass getGLimit();

    public EClass getGAbstractLimit();

    public EAttribute getGAbstractLimit_GIntervalType();

    public EEnum getGIntervalTypeEnum();

    public GlocalconstraintsFactory getGlocalconstraintsFactory();

    public static interface Literals {
        public static final EClass GLIMIT = eINSTANCE.getGLimit();
        public static final EClass GABSTRACT_LIMIT = eINSTANCE.getGAbstractLimit();
        public static final EAttribute GABSTRACT_LIMIT__GINTERVAL_TYPE = eINSTANCE.getGAbstractLimit_GIntervalType();
        public static final EEnum GINTERVAL_TYPE_ENUM = eINSTANCE.getGIntervalTypeEnum();
    }
}

