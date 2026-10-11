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
package autosar40.system.fibex.fibexcore.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.FibexElementRefConditional;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
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
public class FibexcoreSwitch<T> {
    protected static FibexcorePackage modelPackage;

    public FibexcoreSwitch() {
        if (modelPackage == null) {
            modelPackage = FibexcorePackage.eINSTANCE;
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
                FibexElement fibexElement = (FibexElement)theEObject;
                T result = this.caseFibexElement(fibexElement);
                if (result == null) {
                    result = this.casePackageableElement(fibexElement);
                }
                if (result == null) {
                    result = this.caseCollectableElement(fibexElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(fibexElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(fibexElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(fibexElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(fibexElement);
                }
                if (result == null) {
                    result = this.caseReferrable(fibexElement);
                }
                if (result == null) {
                    result = this.caseARObject(fibexElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(fibexElement);
                }
                if (result == null) {
                    result = this.caseGARObject(fibexElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FibexElementRefConditional fibexElementRefConditional = (FibexElementRefConditional)theEObject;
                T result = this.caseFibexElementRefConditional(fibexElementRefConditional);
                if (result == null) {
                    result = this.caseARObject(fibexElementRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(fibexElementRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T caseFibexElementRefConditional(FibexElementRefConditional object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

