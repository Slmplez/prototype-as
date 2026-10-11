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
package autosar40.genericstructure.abstractstructure.util;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
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
public class AbstractstructureSwitch<T> {
    protected static AbstractstructurePackage modelPackage;

    public AbstractstructureSwitch() {
        if (modelPackage == null) {
            modelPackage = AbstractstructurePackage.eINSTANCE;
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
                AtpClassifier atpClassifier = (AtpClassifier)theEObject;
                T result = this.caseAtpClassifier(atpClassifier);
                if (result == null) {
                    result = this.caseIdentifiable(atpClassifier);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpClassifier);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpClassifier);
                }
                if (result == null) {
                    result = this.caseReferrable(atpClassifier);
                }
                if (result == null) {
                    result = this.caseARObject(atpClassifier);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpClassifier);
                }
                if (result == null) {
                    result = this.caseGARObject(atpClassifier);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AtpInstanceRef atpInstanceRef = (AtpInstanceRef)theEObject;
                T result = this.caseAtpInstanceRef(atpInstanceRef);
                if (result == null) {
                    result = this.caseARObject(atpInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(atpInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AtpPrototype atpPrototype = (AtpPrototype)theEObject;
                T result = this.caseAtpPrototype(atpPrototype);
                if (result == null) {
                    result = this.caseAtpFeature(atpPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(atpPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(atpPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(atpPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(atpPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AtpFeature atpFeature = (AtpFeature)theEObject;
                T result = this.caseAtpFeature(atpFeature);
                if (result == null) {
                    result = this.caseIdentifiable(atpFeature);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpFeature);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpFeature);
                }
                if (result == null) {
                    result = this.caseReferrable(atpFeature);
                }
                if (result == null) {
                    result = this.caseARObject(atpFeature);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpFeature);
                }
                if (result == null) {
                    result = this.caseGARObject(atpFeature);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AtpType atpType = (AtpType)theEObject;
                T result = this.caseAtpType(atpType);
                if (result == null) {
                    result = this.caseAtpClassifier(atpType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(atpType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpType);
                }
                if (result == null) {
                    result = this.caseReferrable(atpType);
                }
                if (result == null) {
                    result = this.caseARObject(atpType);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpType);
                }
                if (result == null) {
                    result = this.caseGARObject(atpType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                AtpStructureElement atpStructureElement = (AtpStructureElement)theEObject;
                T result = this.caseAtpStructureElement(atpStructureElement);
                if (result == null) {
                    result = this.caseAtpClassifier(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseAtpFeature(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseReferrable(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseARObject(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpStructureElement);
                }
                if (result == null) {
                    result = this.caseGARObject(atpStructureElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpInstanceRef(AtpInstanceRef object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

