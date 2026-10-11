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
package autosar40.commonstructure.swcbswmapping.util;

import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
public class SwcbswmappingSwitch<T> {
    protected static SwcbswmappingPackage modelPackage;

    public SwcbswmappingSwitch() {
        if (modelPackage == null) {
            modelPackage = SwcbswmappingPackage.eINSTANCE;
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
                SwcBswRunnableMapping swcBswRunnableMapping = (SwcBswRunnableMapping)theEObject;
                T result = this.caseSwcBswRunnableMapping(swcBswRunnableMapping);
                if (result == null) {
                    result = this.caseARObject(swcBswRunnableMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swcBswRunnableMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwcBswSynchronizedModeGroupPrototype swcBswSynchronizedModeGroupPrototype = (SwcBswSynchronizedModeGroupPrototype)theEObject;
                T result = this.caseSwcBswSynchronizedModeGroupPrototype(swcBswSynchronizedModeGroupPrototype);
                if (result == null) {
                    result = this.caseARObject(swcBswSynchronizedModeGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swcBswSynchronizedModeGroupPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwcBswSynchronizedTrigger swcBswSynchronizedTrigger = (SwcBswSynchronizedTrigger)theEObject;
                T result = this.caseSwcBswSynchronizedTrigger(swcBswSynchronizedTrigger);
                if (result == null) {
                    result = this.caseARObject(swcBswSynchronizedTrigger);
                }
                if (result == null) {
                    result = this.caseGARObject(swcBswSynchronizedTrigger);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwcBswMapping swcBswMapping = (SwcBswMapping)theEObject;
                T result = this.caseSwcBswMapping(swcBswMapping);
                if (result == null) {
                    result = this.caseARElement(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(swcBswMapping);
                }
                if (result == null) {
                    result = this.casePackageableElement(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseARObject(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcBswMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swcBswMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwcBswRunnableMapping(SwcBswRunnableMapping object) {
        return null;
    }

    public T caseSwcBswSynchronizedModeGroupPrototype(SwcBswSynchronizedModeGroupPrototype object) {
        return null;
    }

    public T caseSwcBswSynchronizedTrigger(SwcBswSynchronizedTrigger object) {
        return null;
    }

    public T caseSwcBswMapping(SwcBswMapping object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

