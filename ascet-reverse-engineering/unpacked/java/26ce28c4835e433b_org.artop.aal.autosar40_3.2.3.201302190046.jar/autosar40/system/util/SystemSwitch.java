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
package autosar40.system.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
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
                RootSwCompositionPrototype rootSwCompositionPrototype = (RootSwCompositionPrototype)theEObject;
                T result = this.caseRootSwCompositionPrototype(rootSwCompositionPrototype);
                if (result == null) {
                    result = this.caseAtpPrototype(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(rootSwCompositionPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                System system = (System)theEObject;
                T result = this.caseSystem(system);
                if (result == null) {
                    result = this.caseARElement(system);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(system);
                }
                if (result == null) {
                    result = this.caseGSystem(system);
                }
                if (result == null) {
                    result = this.casePackageableElement(system);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(system);
                }
                if (result == null) {
                    result = this.caseAtpFeature(system);
                }
                if (result == null) {
                    result = this.caseCollectableElement(system);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(system);
                }
                if (result == null) {
                    result = this.caseIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(system);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(system);
                }
                if (result == null) {
                    result = this.caseReferrable(system);
                }
                if (result == null) {
                    result = this.caseARObject(system);
                }
                if (result == null) {
                    result = this.caseGReferrable(system);
                }
                if (result == null) {
                    result = this.caseGARObject(system);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SystemMapping systemMapping = (SystemMapping)theEObject;
                T result = this.caseSystemMapping(systemMapping);
                if (result == null) {
                    result = this.caseIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(systemMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(systemMapping);
                }
                if (result == null) {
                    result = this.caseARObject(systemMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(systemMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(systemMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseRootSwCompositionPrototype(RootSwCompositionPrototype object) {
        return null;
    }

    public T caseSystem(System object) {
        return null;
    }

    public T caseSystemMapping(SystemMapping object) {
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

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T caseGSystem(GSystem object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

