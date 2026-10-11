/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.admindata;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataFactory;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.AdmindataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AdmindataPackage
extends EPackage {
    public static final String eNAME = "admindata";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/ad";
    public static final String eNS_PREFIX = "";
    public static final AdmindataPackage eINSTANCE = AdmindataPackageImpl.init();
    public static final int DOC_REVISION = 0;
    public static final int DOC_REVISION__GCHECKSUM = 0;
    public static final int DOC_REVISION__GTIMESTAMP = 1;
    public static final int DOC_REVISION__CHECKSUM = 2;
    public static final int DOC_REVISION__TIMESTAMP = 3;
    public static final int DOC_REVISION__ADMIN_DATA = 4;
    public static final int DOC_REVISION__REVISION_LABEL = 5;
    public static final int DOC_REVISION__REVISION_LABEL_P1 = 6;
    public static final int DOC_REVISION__REVISION_LABEL_P2 = 7;
    public static final int DOC_REVISION__STATE = 8;
    public static final int DOC_REVISION__ISSUED_BY = 9;
    public static final int DOC_REVISION__DATE = 10;
    public static final int DOC_REVISION__MODIFICATIONS = 11;
    public static final int DOC_REVISION_FEATURE_COUNT = 12;
    public static final int MODIFICATION = 1;
    public static final int MODIFICATION__GCHECKSUM = 0;
    public static final int MODIFICATION__GTIMESTAMP = 1;
    public static final int MODIFICATION__CHECKSUM = 2;
    public static final int MODIFICATION__TIMESTAMP = 3;
    public static final int MODIFICATION__DOC_REVISION = 4;
    public static final int MODIFICATION__CHANGE = 5;
    public static final int MODIFICATION__REASON = 6;
    public static final int MODIFICATION_FEATURE_COUNT = 7;
    public static final int ADMIN_DATA = 2;
    public static final int ADMIN_DATA__GCHECKSUM = 0;
    public static final int ADMIN_DATA__GTIMESTAMP = 1;
    public static final int ADMIN_DATA__CHECKSUM = 2;
    public static final int ADMIN_DATA__TIMESTAMP = 3;
    public static final int ADMIN_DATA__LANGUAGE = 4;
    public static final int ADMIN_DATA__USED_LANGUAGES = 5;
    public static final int ADMIN_DATA__DOC_REVISIONS = 6;
    public static final int ADMIN_DATA__SDGS = 7;
    public static final int ADMIN_DATA_FEATURE_COUNT = 8;
    public static final int MODIFICATION_TYPE_ENUM = 3;

    public EClass getDocRevision();

    public EReference getDocRevision_AdminData();

    public EAttribute getDocRevision_RevisionLabel();

    public EAttribute getDocRevision_RevisionLabelP1();

    public EAttribute getDocRevision_RevisionLabelP2();

    public EAttribute getDocRevision_State();

    public EAttribute getDocRevision_IssuedBy();

    public EAttribute getDocRevision_Date();

    public EReference getDocRevision_Modifications();

    public EClass getModification();

    public EReference getModification_DocRevision();

    public EReference getModification_Change();

    public EReference getModification_Reason();

    public EClass getAdminData();

    public EAttribute getAdminData_Language();

    public EReference getAdminData_UsedLanguages();

    public EReference getAdminData_DocRevisions();

    public EReference getAdminData_Sdgs();

    public EEnum getModificationTypeEnum();

    public AdmindataFactory getAdmindataFactory();

    public static interface Literals {
        public static final EClass DOC_REVISION = eINSTANCE.getDocRevision();
        public static final EReference DOC_REVISION__ADMIN_DATA = eINSTANCE.getDocRevision_AdminData();
        public static final EAttribute DOC_REVISION__REVISION_LABEL = eINSTANCE.getDocRevision_RevisionLabel();
        public static final EAttribute DOC_REVISION__REVISION_LABEL_P1 = eINSTANCE.getDocRevision_RevisionLabelP1();
        public static final EAttribute DOC_REVISION__REVISION_LABEL_P2 = eINSTANCE.getDocRevision_RevisionLabelP2();
        public static final EAttribute DOC_REVISION__STATE = eINSTANCE.getDocRevision_State();
        public static final EAttribute DOC_REVISION__ISSUED_BY = eINSTANCE.getDocRevision_IssuedBy();
        public static final EAttribute DOC_REVISION__DATE = eINSTANCE.getDocRevision_Date();
        public static final EReference DOC_REVISION__MODIFICATIONS = eINSTANCE.getDocRevision_Modifications();
        public static final EClass MODIFICATION = eINSTANCE.getModification();
        public static final EReference MODIFICATION__DOC_REVISION = eINSTANCE.getModification_DocRevision();
        public static final EReference MODIFICATION__CHANGE = eINSTANCE.getModification_Change();
        public static final EReference MODIFICATION__REASON = eINSTANCE.getModification_Reason();
        public static final EClass ADMIN_DATA = eINSTANCE.getAdminData();
        public static final EAttribute ADMIN_DATA__LANGUAGE = eINSTANCE.getAdminData_Language();
        public static final EReference ADMIN_DATA__USED_LANGUAGES = eINSTANCE.getAdminData_UsedLanguages();
        public static final EReference ADMIN_DATA__DOC_REVISIONS = eINSTANCE.getAdminData_DocRevisions();
        public static final EReference ADMIN_DATA__SDGS = eINSTANCE.getAdminData_Sdgs();
        public static final EEnum MODIFICATION_TYPE_ENUM = eINSTANCE.getModificationTypeEnum();
    }
}

