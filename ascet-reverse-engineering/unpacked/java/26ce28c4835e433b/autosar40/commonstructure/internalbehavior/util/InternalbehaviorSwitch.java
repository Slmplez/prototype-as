/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.internalbehavior.util;

import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InternalbehaviorSwitch<T> {
    protected static InternalbehaviorPackage modelPackage;

    public InternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = InternalbehaviorPackage.eINSTANCE;
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
                ExclusiveArea exclusiveArea = (ExclusiveArea)theEObject;
                T result = this.caseExclusiveArea(exclusiveArea);
                if (result == null) {
                    result = this.caseIdentifiable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGExclusiveArea(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseReferrable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseARObject(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGReferrable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGARObject(exclusiveArea);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                InternalBehavior internalBehavior = (InternalBehavior)theEObject;
                T result = this.caseInternalBehavior(internalBehavior);
                if (result == null) {
                    result = this.caseAtpStructureElement(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGInternalBehavior(internalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(internalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpFeature(internalBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseReferrable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(internalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(internalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ExecutableEntity executableEntity = (ExecutableEntity)theEObject;
                T result = this.caseExecutableEntity(executableEntity);
                if (result == null) {
                    result = this.caseIdentifiable(executableEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(executableEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(executableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(executableEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(executableEntity);
                }
                if (result == null) {
                    result = this.caseARObject(executableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(executableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(executableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseExclusiveArea(ExclusiveArea object) {
        return null;
    }

    public T caseInternalBehavior(InternalBehavior object) {
        return null;
    }

    public T caseExecutableEntity(ExecutableEntity object) {
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

    public T caseGExclusiveArea(GExclusiveArea object) {
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

    public T caseGInternalBehavior(GInternalBehavior object) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

