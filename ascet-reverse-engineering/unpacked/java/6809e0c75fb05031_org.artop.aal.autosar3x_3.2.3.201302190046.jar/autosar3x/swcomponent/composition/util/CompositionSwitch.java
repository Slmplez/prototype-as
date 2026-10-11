/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 *  gautosar.gswcomponents.gcomposition.GSwConnector
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.composition.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.swcomponent.composition.ConnectorPrototype;
import autosar3x.swcomponent.composition.DelegationConnectorPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositionSwitch<T> {
    protected static CompositionPackage modelPackage;

    public CompositionSwitch() {
        if (modelPackage == null) {
            modelPackage = CompositionPackage.eINSTANCE;
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
                ServiceConnectorPrototype serviceConnectorPrototype = (ServiceConnectorPrototype)theEObject;
                T result = this.caseServiceConnectorPrototype(serviceConnectorPrototype);
                if (result == null) {
                    result = this.caseConnectorPrototype(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGSwConnector(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceConnectorPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ConnectorPrototype connectorPrototype = (ConnectorPrototype)theEObject;
                T result = this.caseConnectorPrototype(connectorPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(connectorPrototype);
                }
                if (result == null) {
                    result = this.caseGSwConnector(connectorPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(connectorPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(connectorPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)connectorPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(connectorPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CompositionType compositionType = (CompositionType)theEObject;
                T result = this.caseCompositionType(compositionType);
                if (result == null) {
                    result = this.caseComponentType(compositionType);
                }
                if (result == null) {
                    result = this.caseGCompositionSwComponentType(compositionType);
                }
                if (result == null) {
                    result = this.caseARElement(compositionType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(compositionType);
                }
                if (result == null) {
                    result = this.casePackageableElement(compositionType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(compositionType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(compositionType);
                }
                if (result == null) {
                    result = this.caseARObject(compositionType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compositionType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)compositionType);
                }
                if (result == null) {
                    result = this.caseGARObject(compositionType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AssemblyConnectorPrototype assemblyConnectorPrototype = (AssemblyConnectorPrototype)theEObject;
                T result = this.caseAssemblyConnectorPrototype(assemblyConnectorPrototype);
                if (result == null) {
                    result = this.caseConnectorPrototype(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGAssemblySwConnector(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGSwConnector(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(assemblyConnectorPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DelegationConnectorPrototype delegationConnectorPrototype = (DelegationConnectorPrototype)theEObject;
                T result = this.caseDelegationConnectorPrototype(delegationConnectorPrototype);
                if (result == null) {
                    result = this.caseConnectorPrototype(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGSwConnector(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(delegationConnectorPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ComponentPrototype componentPrototype = (ComponentPrototype)theEObject;
                T result = this.caseComponentPrototype(componentPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(componentPrototype);
                }
                if (result == null) {
                    result = this.caseGSwComponentPrototype(componentPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(componentPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(componentPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)componentPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(componentPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseServiceConnectorPrototype(ServiceConnectorPrototype object) {
        return null;
    }

    public T caseConnectorPrototype(ConnectorPrototype object) {
        return null;
    }

    public T caseCompositionType(CompositionType object) {
        return null;
    }

    public T caseAssemblyConnectorPrototype(AssemblyConnectorPrototype object) {
        return null;
    }

    public T caseDelegationConnectorPrototype(DelegationConnectorPrototype object) {
        return null;
    }

    public T caseComponentPrototype(ComponentPrototype object) {
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

    public T caseGSwConnector(GSwConnector object) {
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

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T caseComponentType(ComponentType object) {
        return null;
    }

    public T caseGCompositionSwComponentType(GCompositionSwComponentType object) {
        return null;
    }

    public T caseGAssemblySwConnector(GAssemblySwConnector object) {
        return null;
    }

    public T caseGSwComponentPrototype(GSwComponentPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

