/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sd;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgCaption;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SpecialdataSwitch<T> {
    protected static SpecialdataPackage modelPackage;

    public SpecialdataSwitch() {
        if (modelPackage == null) {
            modelPackage = SpecialdataPackage.eINSTANCE;
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
                Sd sd = (Sd)theEObject;
                T result = this.caseSd(sd);
                if (result == null) {
                    result = this.caseARObject(sd);
                }
                if (result == null) {
                    result = this.caseGARObject(sd);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SdgCaption sdgCaption = (SdgCaption)theEObject;
                T result = this.caseSdgCaption(sdgCaption);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(sdgCaption);
                }
                if (result == null) {
                    result = this.caseReferrable(sdgCaption);
                }
                if (result == null) {
                    result = this.caseARObject(sdgCaption);
                }
                if (result == null) {
                    result = this.caseGReferrable(sdgCaption);
                }
                if (result == null) {
                    result = this.caseGARObject(sdgCaption);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SdgContents sdgContents = (SdgContents)theEObject;
                T result = this.caseSdgContents(sdgContents);
                if (result == null) {
                    result = this.caseARObject(sdgContents);
                }
                if (result == null) {
                    result = this.caseGARObject(sdgContents);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Sdg sdg = (Sdg)theEObject;
                T result = this.caseSdg(sdg);
                if (result == null) {
                    result = this.caseARObject(sdg);
                }
                if (result == null) {
                    result = this.caseGARObject(sdg);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSd(Sd object) {
        return null;
    }

    public T caseSdgCaption(SdgCaption object) {
        return null;
    }

    public T caseSdgContents(SdgContents object) {
        return null;
    }

    public T caseSdg(Sdg object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

