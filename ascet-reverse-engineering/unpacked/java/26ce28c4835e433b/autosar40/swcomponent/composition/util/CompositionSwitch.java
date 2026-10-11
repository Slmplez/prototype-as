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
package autosar40.swcomponent.composition.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.SwConnector;
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
                AssemblySwConnector assemblySwConnector = (AssemblySwConnector)theEObject;
                T result = this.caseAssemblySwConnector(assemblySwConnector);
                if (result == null) {
                    result = this.caseSwConnector(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGAssemblySwConnector(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGSwConnector(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseAtpFeature(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseARObject(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(assemblySwConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(assemblySwConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwConnector swConnector = (SwConnector)theEObject;
                T result = this.caseSwConnector(swConnector);
                if (result == null) {
                    result = this.caseAtpStructureElement(swConnector);
                }
                if (result == null) {
                    result = this.caseGSwConnector(swConnector);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(swConnector);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(swConnector);
                }
                if (result == null) {
                    result = this.caseARObject(swConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(swConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(swConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwComponentPrototype swComponentPrototype = (SwComponentPrototype)theEObject;
                T result = this.caseSwComponentPrototype(swComponentPrototype);
                if (result == null) {
                    result = this.caseAtpPrototype(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGSwComponentPrototype(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseAtpFeature(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(swComponentPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(swComponentPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DelegationSwConnector delegationSwConnector = (DelegationSwConnector)theEObject;
                T result = this.caseDelegationSwConnector(delegationSwConnector);
                if (result == null) {
                    result = this.caseSwConnector(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseAtpStructureElement(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseGSwConnector(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseAtpFeature(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseARObject(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(delegationSwConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(delegationSwConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CompositionSwComponentType compositionSwComponentType = (CompositionSwComponentType)theEObject;
                T result = this.caseCompositionSwComponentType(compositionSwComponentType);
                if (result == null) {
                    result = this.caseSwComponentType(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGCompositionSwComponentType(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpType(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseReferrable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(compositionSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAssemblySwConnector(AssemblySwConnector object) {
        return null;
    }

    public T caseSwConnector(SwConnector object) {
        return null;
    }

    public T caseSwComponentPrototype(SwComponentPrototype object) {
        return null;
    }

    public T caseDelegationSwConnector(DelegationSwConnector object) {
        return null;
    }

    public T caseCompositionSwComponentType(CompositionSwComponentType object) {
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

    public T caseGSwConnector(GSwConnector object) {
        return null;
    }

    public T caseGAssemblySwConnector(GAssemblySwConnector object) {
        return null;
    }

    public T caseAtpPrototype(AtpPrototype object) {
        return null;
    }

    public T caseGSwComponentPrototype(GSwComponentPrototype object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseAtpType(AtpType object) {
        return null;
    }

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T caseSwComponentType(SwComponentType object) {
        return null;
    }

    public T caseGCompositionSwComponentType(GCompositionSwComponentType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

