/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.filter.util;

import autosar3x.commonstructure.filter.Always;
import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.MaskedNewDiffersMaskedOld;
import autosar3x.commonstructure.filter.MaskedNewDiffersX;
import autosar3x.commonstructure.filter.MaskedNewEqualsX;
import autosar3x.commonstructure.filter.Never;
import autosar3x.commonstructure.filter.NewIsOutside;
import autosar3x.commonstructure.filter.NewIsWithin;
import autosar3x.commonstructure.filter.OneEveryN;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FilterSwitch<T> {
    protected static FilterPackage modelPackage;

    public FilterSwitch() {
        if (modelPackage == null) {
            modelPackage = FilterPackage.eINSTANCE;
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
                Always always = (Always)theEObject;
                T result = this.caseAlways(always);
                if (result == null) {
                    result = this.caseDataFilter(always);
                }
                if (result == null) {
                    result = this.caseARObject(always);
                }
                if (result == null) {
                    result = this.caseGARObject(always);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                DataFilter dataFilter = (DataFilter)theEObject;
                T result = this.caseDataFilter(dataFilter);
                if (result == null) {
                    result = this.caseARObject(dataFilter);
                }
                if (result == null) {
                    result = this.caseGARObject(dataFilter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MaskedNewDiffersMaskedOld maskedNewDiffersMaskedOld = (MaskedNewDiffersMaskedOld)theEObject;
                T result = this.caseMaskedNewDiffersMaskedOld(maskedNewDiffersMaskedOld);
                if (result == null) {
                    result = this.caseDataFilter(maskedNewDiffersMaskedOld);
                }
                if (result == null) {
                    result = this.caseARObject(maskedNewDiffersMaskedOld);
                }
                if (result == null) {
                    result = this.caseGARObject(maskedNewDiffersMaskedOld);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MaskedNewDiffersX maskedNewDiffersX = (MaskedNewDiffersX)theEObject;
                T result = this.caseMaskedNewDiffersX(maskedNewDiffersX);
                if (result == null) {
                    result = this.caseDataFilter(maskedNewDiffersX);
                }
                if (result == null) {
                    result = this.caseARObject(maskedNewDiffersX);
                }
                if (result == null) {
                    result = this.caseGARObject(maskedNewDiffersX);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MaskedNewEqualsX maskedNewEqualsX = (MaskedNewEqualsX)theEObject;
                T result = this.caseMaskedNewEqualsX(maskedNewEqualsX);
                if (result == null) {
                    result = this.caseDataFilter(maskedNewEqualsX);
                }
                if (result == null) {
                    result = this.caseARObject(maskedNewEqualsX);
                }
                if (result == null) {
                    result = this.caseGARObject(maskedNewEqualsX);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                Never never = (Never)theEObject;
                T result = this.caseNever(never);
                if (result == null) {
                    result = this.caseDataFilter(never);
                }
                if (result == null) {
                    result = this.caseARObject(never);
                }
                if (result == null) {
                    result = this.caseGARObject(never);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                NewIsOutside newIsOutside = (NewIsOutside)theEObject;
                T result = this.caseNewIsOutside(newIsOutside);
                if (result == null) {
                    result = this.caseDataFilter(newIsOutside);
                }
                if (result == null) {
                    result = this.caseARObject(newIsOutside);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsOutside);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                NewIsWithin newIsWithin = (NewIsWithin)theEObject;
                T result = this.caseNewIsWithin(newIsWithin);
                if (result == null) {
                    result = this.caseDataFilter(newIsWithin);
                }
                if (result == null) {
                    result = this.caseARObject(newIsWithin);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsWithin);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                OneEveryN oneEveryN = (OneEveryN)theEObject;
                T result = this.caseOneEveryN(oneEveryN);
                if (result == null) {
                    result = this.caseDataFilter(oneEveryN);
                }
                if (result == null) {
                    result = this.caseARObject(oneEveryN);
                }
                if (result == null) {
                    result = this.caseGARObject(oneEveryN);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAlways(Always object) {
        return null;
    }

    public T caseDataFilter(DataFilter object) {
        return null;
    }

    public T caseMaskedNewDiffersMaskedOld(MaskedNewDiffersMaskedOld object) {
        return null;
    }

    public T caseMaskedNewDiffersX(MaskedNewDiffersX object) {
        return null;
    }

    public T caseMaskedNewEqualsX(MaskedNewEqualsX object) {
        return null;
    }

    public T caseNever(Never object) {
        return null;
    }

    public T caseNewIsOutside(NewIsOutside object) {
        return null;
    }

    public T caseNewIsWithin(NewIsWithin object) {
        return null;
    }

    public T caseOneEveryN(OneEveryN object) {
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

