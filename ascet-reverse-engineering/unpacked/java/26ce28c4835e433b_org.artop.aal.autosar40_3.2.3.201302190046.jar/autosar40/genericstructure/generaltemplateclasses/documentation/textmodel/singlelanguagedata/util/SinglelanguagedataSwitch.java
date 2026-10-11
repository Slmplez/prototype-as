/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SinglelanguagedataSwitch<T> {
    protected static SinglelanguagedataPackage modelPackage;

    public SinglelanguagedataSwitch() {
        if (modelPackage == null) {
            modelPackage = SinglelanguagedataPackage.eINSTANCE;
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
                SingleLanguageUnitNames singleLanguageUnitNames = (SingleLanguageUnitNames)theEObject;
                T result = this.caseSingleLanguageUnitNames(singleLanguageUnitNames);
                if (result == null) {
                    result = this.caseMixedContentForUnitNames(singleLanguageUnitNames);
                }
                if (result == null) {
                    result = this.caseARObject(singleLanguageUnitNames);
                }
                if (result == null) {
                    result = this.caseGARObject(singleLanguageUnitNames);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SingleLanguageLongName singleLanguageLongName = (SingleLanguageLongName)theEObject;
                T result = this.caseSingleLanguageLongName(singleLanguageLongName);
                if (result == null) {
                    result = this.caseMixedContentForLongName(singleLanguageLongName);
                }
                if (result == null) {
                    result = this.caseARObject(singleLanguageLongName);
                }
                if (result == null) {
                    result = this.caseGARObject(singleLanguageLongName);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSingleLanguageUnitNames(SingleLanguageUnitNames object) {
        return null;
    }

    public T caseSingleLanguageLongName(SingleLanguageLongName object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseMixedContentForUnitNames(MixedContentForUnitNames object) {
        return null;
    }

    public T caseMixedContentForLongName(MixedContentForLongName object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

