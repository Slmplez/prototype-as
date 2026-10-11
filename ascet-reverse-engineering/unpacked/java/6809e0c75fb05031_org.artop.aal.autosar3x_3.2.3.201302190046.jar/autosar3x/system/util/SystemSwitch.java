/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gsystem.GSystem
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.System;
import autosar3x.system.SystemMapping;
import autosar3x.system.SystemPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gsystem.GSystem;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemSwitch<T> {
    protected static SystemPackage modelPackage;

    public SystemSwitch() {
        if (modelPackage == null) {
            modelPackage = SystemPackage.eINSTANCE;
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
                SoftwareComposition softwareComposition = (SoftwareComposition)theEObject;
                T result = this.caseSoftwareComposition(softwareComposition);
                if (result == null) {
                    result = this.caseIdentifiable(softwareComposition);
                }
                if (result == null) {
                    result = this.caseARObject(softwareComposition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(softwareComposition);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)softwareComposition);
                }
                if (result == null) {
                    result = this.caseGARObject(softwareComposition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SystemMapping systemMapping = (SystemMapping)theEObject;
                T result = this.caseSystemMapping(systemMapping);
                if (result == null) {
                    result = this.caseIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseARObject(systemMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(systemMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                System system = (System)theEObject;
                T result = this.caseSystem(system);
                if (result == null) {
                    result = this.caseARElement(system);
                }
                if (result == null) {
                    result = this.caseGSystem(system);
                }
                if (result == null) {
                    result = this.casePackageableElement(system);
                }
                if (result == null) {
                    result = this.caseIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(system);
                }
                if (result == null) {
                    result = this.caseARObject(system);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)system);
                }
                if (result == null) {
                    result = this.caseGARObject(system);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSoftwareComposition(SoftwareComposition object) {
        return null;
    }

    public T caseSystemMapping(SystemMapping object) {
        return null;
    }

    public T caseSystem(System object) {
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

    public T caseGSystem(GSystem object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

