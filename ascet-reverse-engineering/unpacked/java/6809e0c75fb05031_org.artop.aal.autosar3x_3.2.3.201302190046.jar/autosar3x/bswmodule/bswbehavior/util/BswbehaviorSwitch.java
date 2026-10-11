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
package autosar3x.bswmodule.bswbehavior.util;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswCyclicEvent;
import autosar3x.bswmodule.bswbehavior.BswEvent;
import autosar3x.bswmodule.bswbehavior.BswInterruptEntity;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
public class BswbehaviorSwitch<T> {
    protected static BswbehaviorPackage modelPackage;

    public BswbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = BswbehaviorPackage.eINSTANCE;
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
                BswBehavior bswBehavior = (BswBehavior)theEObject;
                T result = this.caseBswBehavior(bswBehavior);
                if (result == null) {
                    result = this.caseARElement(bswBehavior);
                }
                if (result == null) {
                    result = this.casePackageableElement(bswBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswBehavior);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(bswBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(bswBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(bswBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                BswEvent bswEvent = (BswEvent)theEObject;
                T result = this.caseBswEvent(bswEvent);
                if (result == null) {
                    result = this.caseIdentifiable(bswEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BswSchedulableEntity bswSchedulableEntity = (BswSchedulableEntity)theEObject;
                T result = this.caseBswSchedulableEntity(bswSchedulableEntity);
                if (result == null) {
                    result = this.caseBswModuleEntity(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswSchedulableEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BswCyclicEvent bswCyclicEvent = (BswCyclicEvent)theEObject;
                T result = this.caseBswCyclicEvent(bswCyclicEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswCyclicEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswCyclicEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswCyclicEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswCyclicEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswCyclicEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswCyclicEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                BswInterruptEntity bswInterruptEntity = (BswInterruptEntity)theEObject;
                T result = this.caseBswInterruptEntity(bswInterruptEntity);
                if (result == null) {
                    result = this.caseBswModuleEntity(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseExecutableEntity(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswInterruptEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswInterruptEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                BswSporadicEvent bswSporadicEvent = (BswSporadicEvent)theEObject;
                T result = this.caseBswSporadicEvent(bswSporadicEvent);
                if (result == null) {
                    result = this.caseBswEvent(bswSporadicEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswSporadicEvent);
                }
                if (result == null) {
                    result = this.caseARObject(bswSporadicEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswSporadicEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswSporadicEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(bswSporadicEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                BswModuleEntity bswModuleEntity = (BswModuleEntity)theEObject;
                T result = this.caseBswModuleEntity(bswModuleEntity);
                if (result == null) {
                    result = this.caseExecutableEntity(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseARObject(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)bswModuleEntity);
                }
                if (result == null) {
                    result = this.caseGARObject(bswModuleEntity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswBehavior(BswBehavior object) {
        return null;
    }

    public T caseBswEvent(BswEvent object) {
        return null;
    }

    public T caseBswSchedulableEntity(BswSchedulableEntity object) {
        return null;
    }

    public T caseBswCyclicEvent(BswCyclicEvent object) {
        return null;
    }

    public T caseBswInterruptEntity(BswInterruptEntity object) {
        return null;
    }

    public T caseBswSporadicEvent(BswSporadicEvent object) {
        return null;
    }

    public T caseBswModuleEntity(BswModuleEntity object) {
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

    public T caseExecutableEntity(ExecutableEntity object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

