/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.documentationblock;

import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockFactory;
import autosar3x.genericstructure.commonpatterns.documentationblock.impl.DocumentationblockPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DocumentationblockPackage
extends EPackage {
    public static final String eNAME = "documentationblock";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/db";
    public static final String eNS_PREFIX = "";
    public static final DocumentationblockPackage eINSTANCE = DocumentationblockPackageImpl.init();
    public static final int DOCUMENTATION_BLOCK = 0;
    public static final int DOCUMENTATION_BLOCK__GCHECKSUM = 0;
    public static final int DOCUMENTATION_BLOCK__GTIMESTAMP = 1;
    public static final int DOCUMENTATION_BLOCK__CHECKSUM = 2;
    public static final int DOCUMENTATION_BLOCK__TIMESTAMP = 3;
    public static final int DOCUMENTATION_BLOCK__IDENTIFIABLE = 4;
    public static final int DOCUMENTATION_BLOCK__PS = 5;
    public static final int DOCUMENTATION_BLOCK_FEATURE_COUNT = 6;

    public EClass getDocumentationBlock();

    public EReference getDocumentationBlock_Identifiable();

    public EReference getDocumentationBlock_Ps();

    public DocumentationblockFactory getDocumentationblockFactory();

    public static interface Literals {
        public static final EClass DOCUMENTATION_BLOCK = eINSTANCE.getDocumentationBlock();
        public static final EReference DOCUMENTATION_BLOCK__IDENTIFIABLE = eINSTANCE.getDocumentationBlock_Identifiable();
        public static final EReference DOCUMENTATION_BLOCK__PS = eINSTANCE.getDocumentationBlock_Ps();
    }
}

