/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.standardization.keyword.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.keyword.Keyword;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.KeywordSet;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class KeywordSwitch<T> {
    protected static KeywordPackage modelPackage;

    public KeywordSwitch() {
        if (modelPackage == null) {
            modelPackage = KeywordPackage.eINSTANCE;
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
                Keyword keyword = (Keyword)theEObject;
                T result = this.caseKeyword(keyword);
                if (result == null) {
                    result = this.caseIdentifiable(keyword);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(keyword);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(keyword);
                }
                if (result == null) {
                    result = this.caseReferrable(keyword);
                }
                if (result == null) {
                    result = this.caseARObject(keyword);
                }
                if (result == null) {
                    result = this.caseGReferrable(keyword);
                }
                if (result == null) {
                    result = this.caseGARObject(keyword);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                KeywordSet keywordSet = (KeywordSet)theEObject;
                T result = this.caseKeywordSet(keywordSet);
                if (result == null) {
                    result = this.caseARElement(keywordSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(keywordSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(keywordSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(keywordSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(keywordSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(keywordSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(keywordSet);
                }
                if (result == null) {
                    result = this.caseReferrable(keywordSet);
                }
                if (result == null) {
                    result = this.caseARObject(keywordSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(keywordSet);
                }
                if (result == null) {
                    result = this.caseGARObject(keywordSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseKeyword(Keyword object) {
        return null;
    }

    public T caseKeywordSet(KeywordSet object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

