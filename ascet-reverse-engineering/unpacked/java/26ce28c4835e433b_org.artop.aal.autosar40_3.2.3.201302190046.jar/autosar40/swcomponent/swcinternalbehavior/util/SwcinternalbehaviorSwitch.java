/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.util;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcinternalbehaviorSwitch<T> {
    protected static SwcinternalbehaviorPackage modelPackage;

    public SwcinternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = SwcinternalbehaviorPackage.eINSTANCE;
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
                SwcInternalBehavior swcInternalBehavior = (SwcInternalBehavior)theEObject;
                T result = this.caseSwcInternalBehavior(swcInternalBehavior);
                if (result == null) {
                    result = this.caseInternalBehavior(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGSwcInternalBehavior(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGInternalBehavior(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseReferrable(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(swcInternalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RunnableEntity runnableEntity = (RunnableEntity)theEObject;
                T result = this.caseRunnableEntity(runnableEntity);
                if (result == null) {
                    result = this.caseAtpStructureElement(runnableEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGRunnableEntity(runnableEntity);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(runnableEntity);
                }
                if (result == null) {
                    result = this.caseAtpFeature(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGExecutableEntity(runnableEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseReferrable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseARObject(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable(runnableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(runnableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwcInternalBehavior(SwcInternalBehavior object) {
        return null;
    }

    public T caseRunnableEntity(RunnableEntity object) {
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

    public T caseInternalBehavior(InternalBehavior object) {
        return null;
    }

    public T caseGSwcInternalBehavior(GSwcInternalBehavior object) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity object) {
        return null;
    }

    public T caseExecutableEntity(ExecutableEntity object) {
        return null;
    }

    public T caseGRunnableEntity(GRunnableEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

