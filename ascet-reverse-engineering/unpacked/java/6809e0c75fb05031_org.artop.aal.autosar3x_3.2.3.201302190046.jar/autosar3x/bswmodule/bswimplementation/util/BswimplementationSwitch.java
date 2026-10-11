/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.bswmodule.bswimplementation.util;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.gcommonstructure.gimplementation.GImplementation;
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
public class BswimplementationSwitch<T> {
    protected static BswimplementationPackage modelPackage;

    public BswimplementationSwitch() {
        if (modelPackage == null) {
            modelPackage = BswimplementationPackage.eINSTANCE;
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
                BswImplementation bswImplementation = (BswImplementation)theEObject;
                T result = this.caseBswImplementation(bswImplementation);
                if (result == null) {
                    result = this.caseImplementation(bswImplementation);
                }
                if (result == null) {
                    result = this.caseARElement(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGImplementation(bswImplementation);
                }
                if (result == null) {
                    result = this.casePackageableElement(bswImplementation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswImplementation);
                }
                if (result == null) {
                    result = this.caseARObject(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswImplementation);
                }
                if (result == null) {
                    result = this.caseGARObject(bswImplementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswImplementation(BswImplementation object) {
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

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseGImplementation(GImplementation object) {
        return null;
    }

    public T caseImplementation(Implementation object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

