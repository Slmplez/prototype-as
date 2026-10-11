/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.communication.filter.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.filter.Always;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersX;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsX;
import autosar21.swcomponent.communication.filter.Never;
import autosar21.swcomponent.communication.filter.NewIsDifferent;
import autosar21.swcomponent.communication.filter.NewIsEqual;
import autosar21.swcomponent.communication.filter.NewIsGreater;
import autosar21.swcomponent.communication.filter.NewIsGreaterOrEqual;
import autosar21.swcomponent.communication.filter.NewIsLess;
import autosar21.swcomponent.communication.filter.NewIsLessOrEqual;
import autosar21.swcomponent.communication.filter.NewIsOutside;
import autosar21.swcomponent.communication.filter.NewIsWithin;
import autosar21.swcomponent.communication.filter.OneEveryN;
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
            case 2: {
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
            case 3: {
                MaskedNewEqualsMaskedOld maskedNewEqualsMaskedOld = (MaskedNewEqualsMaskedOld)theEObject;
                T result = this.caseMaskedNewEqualsMaskedOld(maskedNewEqualsMaskedOld);
                if (result == null) {
                    result = this.caseDataFilter(maskedNewEqualsMaskedOld);
                }
                if (result == null) {
                    result = this.caseARObject(maskedNewEqualsMaskedOld);
                }
                if (result == null) {
                    result = this.caseGARObject(maskedNewEqualsMaskedOld);
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
                NewIsDifferent newIsDifferent = (NewIsDifferent)theEObject;
                T result = this.caseNewIsDifferent(newIsDifferent);
                if (result == null) {
                    result = this.caseDataFilter(newIsDifferent);
                }
                if (result == null) {
                    result = this.caseARObject(newIsDifferent);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsDifferent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                NewIsEqual newIsEqual = (NewIsEqual)theEObject;
                T result = this.caseNewIsEqual(newIsEqual);
                if (result == null) {
                    result = this.caseDataFilter(newIsEqual);
                }
                if (result == null) {
                    result = this.caseARObject(newIsEqual);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsEqual);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                NewIsGreater newIsGreater = (NewIsGreater)theEObject;
                T result = this.caseNewIsGreater(newIsGreater);
                if (result == null) {
                    result = this.caseDataFilter(newIsGreater);
                }
                if (result == null) {
                    result = this.caseARObject(newIsGreater);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsGreater);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                NewIsGreaterOrEqual newIsGreaterOrEqual = (NewIsGreaterOrEqual)theEObject;
                T result = this.caseNewIsGreaterOrEqual(newIsGreaterOrEqual);
                if (result == null) {
                    result = this.caseDataFilter(newIsGreaterOrEqual);
                }
                if (result == null) {
                    result = this.caseARObject(newIsGreaterOrEqual);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsGreaterOrEqual);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                NewIsLess newIsLess = (NewIsLess)theEObject;
                T result = this.caseNewIsLess(newIsLess);
                if (result == null) {
                    result = this.caseDataFilter(newIsLess);
                }
                if (result == null) {
                    result = this.caseARObject(newIsLess);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsLess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                NewIsLessOrEqual newIsLessOrEqual = (NewIsLessOrEqual)theEObject;
                T result = this.caseNewIsLessOrEqual(newIsLessOrEqual);
                if (result == null) {
                    result = this.caseDataFilter(newIsLessOrEqual);
                }
                if (result == null) {
                    result = this.caseARObject(newIsLessOrEqual);
                }
                if (result == null) {
                    result = this.caseGARObject(newIsLessOrEqual);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
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
            case 13: {
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
            case 14: {
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
            case 15: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseAlways(Always object) {
        return null;
    }

    public T caseMaskedNewDiffersMaskedOld(MaskedNewDiffersMaskedOld object) {
        return null;
    }

    public T caseMaskedNewDiffersX(MaskedNewDiffersX object) {
        return null;
    }

    public T caseMaskedNewEqualsMaskedOld(MaskedNewEqualsMaskedOld object) {
        return null;
    }

    public T caseMaskedNewEqualsX(MaskedNewEqualsX object) {
        return null;
    }

    public T caseNever(Never object) {
        return null;
    }

    public T caseNewIsDifferent(NewIsDifferent object) {
        return null;
    }

    public T caseNewIsEqual(NewIsEqual object) {
        return null;
    }

    public T caseNewIsGreater(NewIsGreater object) {
        return null;
    }

    public T caseNewIsGreaterOrEqual(NewIsGreaterOrEqual object) {
        return null;
    }

    public T caseNewIsLess(NewIsLess object) {
        return null;
    }

    public T caseNewIsLessOrEqual(NewIsLessOrEqual object) {
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

    public T caseDataFilter(DataFilter object) {
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

