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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBsw;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModule;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TdeventbswSwitch<T> {
    protected static TdeventbswPackage modelPackage;

    public TdeventbswSwitch() {
        if (modelPackage == null) {
            modelPackage = TdeventbswPackage.eINSTANCE;
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
                TDEventBsw tdEventBsw = (TDEventBsw)theEObject;
                T result = this.caseTDEventBsw(tdEventBsw);
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventBsw);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventBsw);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TDEventBswModeDeclaration tdEventBswModeDeclaration = (TDEventBswModeDeclaration)theEObject;
                T result = this.caseTDEventBswModeDeclaration(tdEventBswModeDeclaration);
                if (result == null) {
                    result = this.caseTDEventBsw(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventBswModeDeclaration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TDEventBswModule tdEventBswModule = (TDEventBswModule)theEObject;
                T result = this.caseTDEventBswModule(tdEventBswModule);
                if (result == null) {
                    result = this.caseTDEventBsw(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventBswModule);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventBswModule);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTDEventBsw(TDEventBsw object) {
        return null;
    }

    public T caseTDEventBswModeDeclaration(TDEventBswModeDeclaration object) {
        return null;
    }

    public T caseTDEventBswModule(TDEventBswModule object) {
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

    public T caseTimingDescription(TimingDescription object) {
        return null;
    }

    public T caseTimingDescriptionEvent(TimingDescriptionEvent object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

