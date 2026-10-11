/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.specialdata.util;

import autosar3x.genericstructure.commonpatterns.specialdata.Sd;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdg;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgCaption;
import autosar3x.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar3x.genericstructure.commonpatterns.specialdata.Sdx;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
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
                    result = this.caseIdentifiable(sdgCaption);
                }
                if (result == null) {
                    result = this.caseARObject(sdgCaption);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sdgCaption);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)sdgCaption);
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
                Sdx sdx = (Sdx)theEObject;
                T result = this.caseSdx(sdx);
                if (result == null) {
                    result = this.caseARObject(sdx);
                }
                if (result == null) {
                    result = this.caseGARObject(sdx);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
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

    public T caseSdx(Sdx object) {
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

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

