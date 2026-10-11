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
package autosar21.swcomponent.services.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.services.EcuSwComposition;
import autosar21.swcomponent.services.ServiceComponentPrototype;
import autosar21.swcomponent.services.ServicesPackage;
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
public class ServicesSwitch<T> {
    protected static ServicesPackage modelPackage;

    public ServicesSwitch() {
        if (modelPackage == null) {
            modelPackage = ServicesPackage.eINSTANCE;
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
                EcuSwComposition ecuSwComposition = (EcuSwComposition)theEObject;
                T result = this.caseEcuSwComposition(ecuSwComposition);
                if (result == null) {
                    result = this.caseARElement(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(ecuSwComposition);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseARObject(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuSwComposition);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuSwComposition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ServiceComponentPrototype serviceComponentPrototype = (ServiceComponentPrototype)theEObject;
                T result = this.caseServiceComponentPrototype(serviceComponentPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(serviceComponentPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(serviceComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)serviceComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceComponentPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEcuSwComposition(EcuSwComposition object) {
        return null;
    }

    public T caseServiceComponentPrototype(ServiceComponentPrototype object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

