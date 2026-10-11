/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.admindata.util;

import autosar3x.genericstructure.commonpatterns.admindata.AdminData;
import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar3x.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar3x.genericstructure.commonpatterns.admindata.DocRevision;
import autosar3x.genericstructure.commonpatterns.admindata.Modification;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdmindataSwitch<T> {
    protected static AdmindataPackage modelPackage;

    public AdmindataSwitch() {
        if (modelPackage == null) {
            modelPackage = AdmindataPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                CompanyRevisionInfo companyRevisionInfo = (CompanyRevisionInfo)theEObject;
                T result = this.caseCompanyRevisionInfo(companyRevisionInfo);
                if (result == null) {
                    result = this.caseARObject(companyRevisionInfo);
                }
                if (result == null) {
                    result = this.caseGARObject(companyRevisionInfo);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CompanySpecificInfo companySpecificInfo = (CompanySpecificInfo)theEObject;
                T result = this.caseCompanySpecificInfo(companySpecificInfo);
                if (result == null) {
                    result = this.caseARObject(companySpecificInfo);
                }
                if (result == null) {
                    result = this.caseGARObject(companySpecificInfo);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DocRevision docRevision = (DocRevision)theEObject;
                T result = this.caseDocRevision(docRevision);
                if (result == null) {
                    result = this.caseARObject(docRevision);
                }
                if (result == null) {
                    result = this.caseGARObject(docRevision);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Modification modification = (Modification)theEObject;
                T result = this.caseModification(modification);
                if (result == null) {
                    result = this.caseARObject(modification);
                }
                if (result == null) {
                    result = this.caseGARObject(modification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AdminData adminData = (AdminData)theEObject;
                T result = this.caseAdminData(adminData);
                if (result == null) {
                    result = this.caseARObject(adminData);
                }
                if (result == null) {
                    result = this.caseGARObject(adminData);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCompanyRevisionInfo(CompanyRevisionInfo object) {
        return null;
    }

    public T caseCompanySpecificInfo(CompanySpecificInfo object) {
        return null;
    }

    public T caseDocRevision(DocRevision object) {
        return null;
    }

    public T caseModification(Modification object) {
        return null;
    }

    public T caseAdminData(AdminData object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

