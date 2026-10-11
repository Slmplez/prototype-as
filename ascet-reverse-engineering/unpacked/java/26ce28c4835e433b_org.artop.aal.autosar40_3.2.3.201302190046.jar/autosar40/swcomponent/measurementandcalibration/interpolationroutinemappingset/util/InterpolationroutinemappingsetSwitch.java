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
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMappingSet;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
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
public class InterpolationroutinemappingsetSwitch<T> {
    protected static InterpolationroutinemappingsetPackage modelPackage;

    public InterpolationroutinemappingsetSwitch() {
        if (modelPackage == null) {
            modelPackage = InterpolationroutinemappingsetPackage.eINSTANCE;
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
                InterpolationRoutine interpolationRoutine = (InterpolationRoutine)theEObject;
                T result = this.caseInterpolationRoutine(interpolationRoutine);
                if (result == null) {
                    result = this.caseARObject(interpolationRoutine);
                }
                if (result == null) {
                    result = this.caseGARObject(interpolationRoutine);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                InterpolationRoutineMapping interpolationRoutineMapping = (InterpolationRoutineMapping)theEObject;
                T result = this.caseInterpolationRoutineMapping(interpolationRoutineMapping);
                if (result == null) {
                    result = this.caseARObject(interpolationRoutineMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(interpolationRoutineMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                InterpolationRoutineMappingSet interpolationRoutineMappingSet = (InterpolationRoutineMappingSet)theEObject;
                T result = this.caseInterpolationRoutineMappingSet(interpolationRoutineMappingSet);
                if (result == null) {
                    result = this.caseARElement(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseReferrable(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseARObject(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.caseGARObject(interpolationRoutineMappingSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseInterpolationRoutine(InterpolationRoutine object) {
        return null;
    }

    public T caseInterpolationRoutineMapping(InterpolationRoutineMapping object) {
        return null;
    }

    public T caseInterpolationRoutineMappingSet(InterpolationRoutineMappingSet object) {
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

