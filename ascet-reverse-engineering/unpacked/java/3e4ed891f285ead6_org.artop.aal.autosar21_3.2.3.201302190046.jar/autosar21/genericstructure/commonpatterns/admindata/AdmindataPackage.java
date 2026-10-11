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
package autosar21.genericstructure.commonpatterns.admindata;

import autosar21.genericstructure.commonpatterns.admindata.AdmindataFactory;
import autosar21.genericstructure.commonpatterns.admindata.impl.AdmindataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AdmindataPackage
extends EPackage {
    public static final String eNAME = "admindata";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/cp/ad";
    public static final String eNS_PREFIX = "";
    public static final AdmindataPackage eINSTANCE = AdmindataPackageImpl.init();
    public static final int ADMIN_DATA = 0;
    public static final int ADMIN_DATA__GCHECKSUM = 0;
    public static final int ADMIN_DATA__GTIMESTAMP = 1;
    public static final int ADMIN_DATA__CHECKSUM = 2;
    public static final int ADMIN_DATA__TIMESTAMP = 3;
    public static final int ADMIN_DATA__LANGUAGE = 4;
    public static final int ADMIN_DATA__USED_LANGUAGES = 5;
    public static final int ADMIN_DATA__DOC_REVISIONS = 6;
    public static final int ADMIN_DATA__SDGS = 7;
    public static final int ADMIN_DATA_FEATURE_COUNT = 8;
    public static final int DOC_REVISION = 1;
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
    public static final int MODIFICATION = 2;
    public static final int MODIFICATION__GCHECKSUM = 0;
    public static final int MODIFICATION__GTIMESTAMP = 1;
    public static final int MODIFICATION__CHECKSUM = 2;
    public static final int MODIFICATION__TIMESTAMP = 3;
    public static final int MODIFICATION__DOC_REVISION = 4;
    public static final int MODIFICATION__CHANGE = 5;
    public static final int MODIFICATION__REASON = 6;
    public static final int MODIFICATION_FEATURE_COUNT = 7;
    public static final int COMPANY_REVISION_INFO = 3;
    public static final int COMPANY_REVISION_INFO__GCHECKSUM = 0;
    public static final int COMPANY_REVISION_INFO__GTIMESTAMP = 1;
    public static final int COMPANY_REVISION_INFO__CHECKSUM = 2;
    public static final int COMPANY_REVISION_INFO__TIMESTAMP = 3;
    public static final int COMPANY_REVISION_INFO_FEATURE_COUNT = 4;
    public static final int COMPANY_SPECIFIC_INFO = 4;
    public static final int COMPANY_SPECIFIC_INFO__GCHECKSUM = 0;
    public static final int COMPANY_SPECIFIC_INFO__GTIMESTAMP = 1;
    public static final int COMPANY_SPECIFIC_INFO__CHECKSUM = 2;
    public static final int COMPANY_SPECIFIC_INFO__TIMESTAMP = 3;
    public static final int COMPANY_SPECIFIC_INFO_FEATURE_COUNT = 4;
    public static final int TYPE_ENUM = 5;

    public EClass getAdminData();

    public EAttribute getAdminData_Language();

    public EReference getAdminData_UsedLanguages();

    public EReference getAdminData_DocRevisions();

    public EReference getAdminData_Sdgs();

    public EClass getDocRevision();

    public EReference getDocRevision_AdminData();

    public EReference getDocRevision_RevisionLabel();

    public EAttribute getDocRevision_RevisionLabelP1();

    public EAttribute getDocRevision_RevisionLabelP2();

    public EReference getDocRevision_State();

    public EReference getDocRevision_IssuedBy();

    public EReference getDocRevision_Date();

    public EReference getDocRevision_Modifications();

    public EClass getModification();

    public EReference getModification_DocRevision();

    public EReference getModification_Change();

    public EReference getModification_Reason();

    public EClass getCompanyRevisionInfo();

    public EClass getCompanySpecificInfo();

    public EEnum getTypeEnum();

    public AdmindataFactory getAdmindataFactory();

    public static interface Literals {
        public static final EClass ADMIN_DATA = eINSTANCE.getAdminData();
        public static final EAttribute ADMIN_DATA__LANGUAGE = eINSTANCE.getAdminData_Language();
        public static final EReference ADMIN_DATA__USED_LANGUAGES = eINSTANCE.getAdminData_UsedLanguages();
        public static final EReference ADMIN_DATA__DOC_REVISIONS = eINSTANCE.getAdminData_DocRevisions();
        public static final EReference ADMIN_DATA__SDGS = eINSTANCE.getAdminData_Sdgs();
        public static final EClass DOC_REVISION = eINSTANCE.getDocRevision();
        public static final EReference DOC_REVISION__ADMIN_DATA = eINSTANCE.getDocRevision_AdminData();
        public static final EReference DOC_REVISION__REVISION_LABEL = eINSTANCE.getDocRevision_RevisionLabel();
        public static final EAttribute DOC_REVISION__REVISION_LABEL_P1 = eINSTANCE.getDocRevision_RevisionLabelP1();
        public static final EAttribute DOC_REVISION__REVISION_LABEL_P2 = eINSTANCE.getDocRevision_RevisionLabelP2();
        public static final EReference DOC_REVISION__STATE = eINSTANCE.getDocRevision_State();
        public static final EReference DOC_REVISION__ISSUED_BY = eINSTANCE.getDocRevision_IssuedBy();
        public static final EReference DOC_REVISION__DATE = eINSTANCE.getDocRevision_Date();
        public static final EReference DOC_REVISION__MODIFICATIONS = eINSTANCE.getDocRevision_Modifications();
        public static final EClass MODIFICATION = eINSTANCE.getModification();
        public static final EReference MODIFICATION__DOC_REVISION = eINSTANCE.getModification_DocRevision();
        public static final EReference MODIFICATION__CHANGE = eINSTANCE.getModification_Change();
        public static final EReference MODIFICATION__REASON = eINSTANCE.getModification_Reason();
        public static final EClass COMPANY_REVISION_INFO = eINSTANCE.getCompanyRevisionInfo();
        public static final EClass COMPANY_SPECIFIC_INFO = eINSTANCE.getCompanySpecificInfo();
        public static final EEnum TYPE_ENUM = eINSTANCE.getTypeEnum();
    }
}

