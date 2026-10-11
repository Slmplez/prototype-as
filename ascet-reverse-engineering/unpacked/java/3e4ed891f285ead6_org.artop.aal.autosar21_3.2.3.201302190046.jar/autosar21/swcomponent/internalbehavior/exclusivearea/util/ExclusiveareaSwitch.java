/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.exclusivearea.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityRunsInExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExclusiveareaSwitch<T> {
    protected static ExclusiveareaPackage modelPackage;

    public ExclusiveareaSwitch() {
        if (modelPackage == null) {
            modelPackage = ExclusiveareaPackage.eINSTANCE;
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
                RunnableEntityCanEnterExclusiveArea runnableEntityCanEnterExclusiveArea = (RunnableEntityCanEnterExclusiveArea)theEObject;
                T result = this.caseRunnableEntityCanEnterExclusiveArea(runnableEntityCanEnterExclusiveArea);
                if (result == null) {
                    result = this.caseARObject(runnableEntityCanEnterExclusiveArea);
                }
                if (result == null) {
                    result = this.caseGARObject(runnableEntityCanEnterExclusiveArea);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RunnableEntityRunsInExclusiveArea runnableEntityRunsInExclusiveArea = (RunnableEntityRunsInExclusiveArea)theEObject;
                T result = this.caseRunnableEntityRunsInExclusiveArea(runnableEntityRunsInExclusiveArea);
                if (result == null) {
                    result = this.caseARObject(runnableEntityRunsInExclusiveArea);
                }
                if (result == null) {
                    result = this.caseGARObject(runnableEntityRunsInExclusiveArea);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ExclusiveArea exclusiveArea = (ExclusiveArea)theEObject;
                T result = this.caseExclusiveArea(exclusiveArea);
                if (result == null) {
                    result = this.caseIdentifiable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGExclusiveArea(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseARObject(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)exclusiveArea);
                }
                if (result == null) {
                    result = this.caseGARObject(exclusiveArea);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseRunnableEntityCanEnterExclusiveArea(RunnableEntityCanEnterExclusiveArea object) {
        return null;
    }

    public T caseRunnableEntityRunsInExclusiveArea(RunnableEntityRunsInExclusiveArea object) {
        return null;
    }

    public T caseExclusiveArea(ExclusiveArea object) {
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

    public T caseGExclusiveArea(GExclusiveArea object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

