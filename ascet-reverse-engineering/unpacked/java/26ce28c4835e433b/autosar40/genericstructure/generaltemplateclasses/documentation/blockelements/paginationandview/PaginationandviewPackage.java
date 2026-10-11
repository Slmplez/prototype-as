/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginationandviewPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface PaginationandviewPackage
extends EPackage {
    public static final String eNAME = "paginationandview";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/pav";
    public static final String eNS_PREFIX = "";
    public static final PaginationandviewPackage eINSTANCE = PaginationandviewPackageImpl.init();
    public static final int DOCUMENT_VIEW_SELECTABLE = 0;
    public static final int DOCUMENT_VIEW_SELECTABLE__GCHECKSUM = 0;
    public static final int DOCUMENT_VIEW_SELECTABLE__GTIMESTAMP = 1;
    public static final int DOCUMENT_VIEW_SELECTABLE__CHECKSUM = 2;
    public static final int DOCUMENT_VIEW_SELECTABLE__TIMESTAMP = 3;
    public static final int DOCUMENT_VIEW_SELECTABLE__SI = 4;
    public static final int DOCUMENT_VIEW_SELECTABLE__VIEW = 5;
    public static final int DOCUMENT_VIEW_SELECTABLE_FEATURE_COUNT = 6;
    public static final int PAGINATEABLE = 1;
    public static final int PAGINATEABLE__GCHECKSUM = 0;
    public static final int PAGINATEABLE__GTIMESTAMP = 1;
    public static final int PAGINATEABLE__CHECKSUM = 2;
    public static final int PAGINATEABLE__TIMESTAMP = 3;
    public static final int PAGINATEABLE__SI = 4;
    public static final int PAGINATEABLE__VIEW = 5;
    public static final int PAGINATEABLE__BREAK = 6;
    public static final int PAGINATEABLE__KEEP_WITH_PREVIOUS = 7;
    public static final int PAGINATEABLE_FEATURE_COUNT = 8;
    public static final int CHAPTER_ENUM_BREAK = 2;
    public static final int KEEP_WITH_PREVIOUS_ENUM = 3;
    public static final int VIEW_TOKENS = 4;

    public EClass getDocumentViewSelectable();

    public EAttribute getDocumentViewSelectable_Si();

    public EAttribute getDocumentViewSelectable_View();

    public EClass getPaginateable();

    public EAttribute getPaginateable_Break();

    public EAttribute getPaginateable_KeepWithPrevious();

    public EEnum getChapterEnumBreak();

    public EEnum getKeepWithPreviousEnum();

    public EDataType getViewTokens();

    public PaginationandviewFactory getPaginationandviewFactory();

    public static interface Literals {
        public static final EClass DOCUMENT_VIEW_SELECTABLE = eINSTANCE.getDocumentViewSelectable();
        public static final EAttribute DOCUMENT_VIEW_SELECTABLE__SI = eINSTANCE.getDocumentViewSelectable_Si();
        public static final EAttribute DOCUMENT_VIEW_SELECTABLE__VIEW = eINSTANCE.getDocumentViewSelectable_View();
        public static final EClass PAGINATEABLE = eINSTANCE.getPaginateable();
        public static final EAttribute PAGINATEABLE__BREAK = eINSTANCE.getPaginateable_Break();
        public static final EAttribute PAGINATEABLE__KEEP_WITH_PREVIOUS = eINSTANCE.getPaginateable_KeepWithPrevious();
        public static final EEnum CHAPTER_ENUM_BREAK = eINSTANCE.getChapterEnumBreak();
        public static final EEnum KEEP_WITH_PREVIOUS_ENUM = eINSTANCE.getKeepWithPreviousEnum();
        public static final EDataType VIEW_TOKENS = eINSTANCE.getViewTokens();
    }
}

