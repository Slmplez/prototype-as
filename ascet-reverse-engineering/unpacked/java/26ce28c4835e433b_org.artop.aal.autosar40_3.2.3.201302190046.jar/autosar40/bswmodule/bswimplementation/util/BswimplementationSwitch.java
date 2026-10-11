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
package autosar40.bswmodule.bswimplementation.util;

import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
                BswDebugInfo bswDebugInfo = (BswDebugInfo)theEObject;
                T result = this.caseBswDebugInfo(bswDebugInfo);
                if (result == null) {
                    result = this.caseIdentifiable(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseReferrable(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseARObject(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswDebugInfo);
                }
                if (result == null) {
                    result = this.caseGARObject(bswDebugInfo);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
                    result = this.caseCollectableElement(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswImplementation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseReferrable(bswImplementation);
                }
                if (result == null) {
                    result = this.caseARObject(bswImplementation);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswImplementation);
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

    public T caseBswDebugInfo(BswDebugInfo object) {
        return null;
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

    public T defaultCase(EObject object) {
        return null;
    }
}

