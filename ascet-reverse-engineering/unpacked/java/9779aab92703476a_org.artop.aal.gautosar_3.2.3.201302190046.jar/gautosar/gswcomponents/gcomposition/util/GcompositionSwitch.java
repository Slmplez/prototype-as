/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomposition.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GcompositionSwitch<T> {
    protected static GcompositionPackage modelPackage;

    public GcompositionSwitch() {
        if (modelPackage == null) {
            modelPackage = GcompositionPackage.eINSTANCE;
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
                GSwComponentPrototype gSwComponentPrototype = (GSwComponentPrototype)theEObject;
                T result = this.caseGSwComponentPrototype(gSwComponentPrototype);
                if (result == null) {
                    result = this.caseGIdentifiable(gSwComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwComponentPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GCompositionSwComponentType gCompositionSwComponentType = (GCompositionSwComponentType)theEObject;
                T result = this.caseGCompositionSwComponentType(gCompositionSwComponentType);
                if (result == null) {
                    result = this.caseGSwComponentType(gCompositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gCompositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gCompositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gCompositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gCompositionSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GSwConnector gSwConnector = (GSwConnector)theEObject;
                T result = this.caseGSwConnector(gSwConnector);
                if (result == null) {
                    result = this.caseGIdentifiable(gSwConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GAssemblySwConnector gAssemblySwConnector = (GAssemblySwConnector)theEObject;
                T result = this.caseGAssemblySwConnector(gAssemblySwConnector);
                if (result == null) {
                    result = this.caseGSwConnector(gAssemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAssemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAssemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(gAssemblySwConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGSwComponentPrototype(GSwComponentPrototype object) {
        return null;
    }

    public T caseGCompositionSwComponentType(GCompositionSwComponentType object) {
        return null;
    }

    public T caseGSwConnector(GSwConnector object) {
        return null;
    }

    public T caseGAssemblySwConnector(GAssemblySwConnector object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

