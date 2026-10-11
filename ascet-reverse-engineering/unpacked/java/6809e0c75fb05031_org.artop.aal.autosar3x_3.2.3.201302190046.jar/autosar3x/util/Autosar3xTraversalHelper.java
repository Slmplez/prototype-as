/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.sphinx.emf.ecore.DefaultEcoreTraversalHelper
 */
package autosar3x.util;

import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import autosar3x.util.Autosar3xSwitch;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.sphinx.emf.ecore.DefaultEcoreTraversalHelper;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Autosar3xTraversalHelper
extends DefaultEcoreTraversalHelper {
    public List<EStructuralFeature> getFeaturesToTraverseFor(EObject object, EClassifier type) {
        Autosar3xTraveralSwitch traversalSwitch = new Autosar3xTraveralSwitch(type);
        List features = (List)traversalSwitch.doSwitch(object);
        if (features != null) {
            return features;
        }
        return super.getFeaturesToTraverseFor(object, type);
    }

    public boolean collectReachableObjectsOfTypeUnderObject(Collection<EObject> result, EObject object, EClassifier type) {
        if (type instanceof EClass && object instanceof AUTOSAR) {
            AUTOSAR autosar = (AUTOSAR)object;
            if (IdentifiablePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)type)) {
                result.addAll(this.getAllElementsOfTypeUnderAUTOSAR(autosar, type));
                return true;
            }
            if (ComponentsPackage.eINSTANCE.getPortPrototype().isSuperTypeOf((EClass)type)) {
                Collection<EObject> componentTypes = this.getAllElementsOfTypeUnderAUTOSAR(autosar, (EClassifier)ComponentsPackage.eINSTANCE.getComponentType());
                for (EObject componentType : componentTypes) {
                    for (PortPrototype port : ((ComponentType)componentType).getPorts()) {
                        if (!type.isInstance((Object)port)) continue;
                        result.add((EObject)port);
                    }
                }
                return true;
            }
            if (type == PortinterfacePackage.eINSTANCE.getDataElementPrototype()) {
                Collection<EObject> senderReceiverInterfaces = this.getAllElementsOfTypeUnderAUTOSAR(autosar, (EClassifier)PortinterfacePackage.eINSTANCE.getSenderReceiverInterface());
                for (EObject senderReceiverInterface : senderReceiverInterfaces) {
                    result.addAll((Collection<EObject>)((SenderReceiverInterface)senderReceiverInterface).getDataElements());
                }
                return true;
            }
        }
        return false;
    }

    private Collection<EObject> getAllElementsOfTypeUnderAUTOSAR(AUTOSAR autosar, EClassifier type) {
        ArrayList<EObject> result = new ArrayList<EObject>();
        for (ARPackage arPackage : autosar.getTopLevelPackages()) {
            result.addAll(this.getAllElementsOfTypeInPackage(arPackage, type));
        }
        return result;
    }

    private Collection<EObject> getAllElementsOfTypeInPackage(ARPackage arPackage, EClassifier type) {
        ArrayList<EObject> result = new ArrayList<EObject>();
        for (PackageableElement packageableElement : arPackage.getElements()) {
            if (!type.isInstance((Object)packageableElement)) continue;
            result.add((EObject)packageableElement);
        }
        for (ARPackage subPackage : arPackage.getSubPackages()) {
            result.addAll(this.getAllElementsOfTypeInPackage(subPackage, type));
        }
        return result;
    }

    public Collection<EObject> getReachableEObjects(EObject referenceSource, EReference reference) {
        if (this.areSubContainerDefinitionsRequested(referenceSource, reference)) {
            Container parentContainer = (Container)referenceSource.eContainer();
            ContainerDef parentDef = parentContainer.getDefinition();
            return this.getReachableSubDefinitions(parentDef);
        }
        return super.getReachableEObjects(referenceSource, reference);
    }

    private boolean areSubContainerDefinitionsRequested(EObject referenceSource, EReference reference) {
        return this.isSubContainer(referenceSource) && this.isDefinitionReference(reference);
    }

    private boolean isDefinitionReference(EReference ref) {
        return ref.getEContainingClass().getEPackage() instanceof EcucdescriptionPackage && ref.getFeatureID() == 17;
    }

    private boolean isSubContainer(EObject eObject) {
        return eObject instanceof Container && eObject.eContainer() instanceof Container;
    }

    private Collection<EObject> getReachableSubDefinitions(ContainerDef parentDef) {
        ArrayList<EObject> subDefs = new ArrayList<EObject>();
        if (parentDef instanceof ChoiceContainerDef) {
            subDefs.addAll((Collection<EObject>)((ChoiceContainerDef)parentDef).getChoices());
        } else if (parentDef instanceof ParamConfContainerDef) {
            subDefs.addAll((Collection<EObject>)((ParamConfContainerDef)parentDef).getSubContainers());
        }
        return subDefs;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class Autosar3xTraveralSwitch
    extends Autosar3xSwitch<List<EStructuralFeature>> {
        protected EClassifier type;

        public Autosar3xTraveralSwitch(EClassifier type) {
            Assert.isNotNull((Object)type);
            this.type = type;
        }

        @Override
        public List<EStructuralFeature> caseARObject(ARObject anARObject) {
            if (this.type instanceof EClass && anARObject.eClass() == this.type) {
                return Collections.emptyList();
            }
            return null;
        }

        @Override
        public List<EStructuralFeature> caseAUTOSAR(AUTOSAR anAUTOSAR) {
            if (this.type instanceof EClass) {
                if (AutosarPackage.eINSTANCE.getARPackage().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(AutosarPackage.Literals.AUTOSAR__TOP_LEVEL_PACKAGES);
                }
                if (IdentifiablePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(AutosarPackage.Literals.AUTOSAR__TOP_LEVEL_PACKAGES);
                }
            }
            return null;
        }

        @Override
        public List<EStructuralFeature> caseARPackage(ARPackage anARPackage) {
            if (this.type instanceof EClass) {
                if (AutosarPackage.eINSTANCE.getARPackage().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(AutosarPackage.Literals.AR_PACKAGE__SUB_PACKAGES);
                }
                if (IdentifiablePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                    ArrayList<EStructuralFeature> relevantStructuralFeatures = new ArrayList<EStructuralFeature>(2);
                    relevantStructuralFeatures.add((EStructuralFeature)AutosarPackage.Literals.AR_PACKAGE__ELEMENTS);
                    relevantStructuralFeatures.add((EStructuralFeature)AutosarPackage.Literals.AR_PACKAGE__SUB_PACKAGES);
                    return relevantStructuralFeatures;
                }
            }
            return null;
        }

        @Override
        public List<EStructuralFeature> casePackageableElement(PackageableElement packageableElement) {
            if (this.type instanceof EClass && IdentifiablePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                return Collections.emptyList();
            }
            return null;
        }
    }
}

