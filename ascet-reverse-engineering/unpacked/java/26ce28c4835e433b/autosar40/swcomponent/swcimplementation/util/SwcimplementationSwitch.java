/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcimplementation.util;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcimplementationSwitch<T> {
    protected static SwcimplementationPackage modelPackage;

    public SwcimplementationSwitch() {
        if (modelPackage == null) {
            modelPackage = SwcimplementationPackage.eINSTANCE;
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
                PerInstanceMemorySize perInstanceMemorySize = (PerInstanceMemorySize)theEObject;
                T result = this.casePerInstanceMemorySize(perInstanceMemorySize);
                if (result == null) {
                    result = this.caseARObject(perInstanceMemorySize);
                }
                if (result == null) {
                    result = this.caseGARObject(perInstanceMemorySize);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwcImplementation swcImplementation = (SwcImplementation)theEObject;
                T result = this.caseSwcImplementation(swcImplementation);
                if (result == null) {
                    result = this.caseImplementation(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGSwcImplementation(swcImplementation);
                }
                if (result == null) {
                    result = this.caseARElement(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGImplementation(swcImplementation);
                }
                if (result == null) {
                    result = this.casePackageableElement(swcImplementation);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swcImplementation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcImplementation);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcImplementation);
                }
                if (result == null) {
                    result = this.caseReferrable(swcImplementation);
                }
                if (result == null) {
                    result = this.caseARObject(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcImplementation);
                }
                if (result == null) {
                    result = this.caseGARObject(swcImplementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePerInstanceMemorySize(PerInstanceMemorySize object) {
        return null;
    }

    public T caseSwcImplementation(SwcImplementation object) {
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

    public T caseGImplementation(GImplementation object) {
        return null;
    }

    public T caseImplementation(Implementation object) {
        return null;
    }

    public T caseGSwcImplementation(GSwcImplementation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

