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
package autosar40.util;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.util.Autosar40Switch;
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
public class Autosar40TraversalHelper
extends DefaultEcoreTraversalHelper {
    public List<EStructuralFeature> getFeaturesToTraverseFor(EObject object, EClassifier type) {
        Autosar40TraveralSwitch traversalSwitch = new Autosar40TraveralSwitch(type);
        List features = (List)traversalSwitch.doSwitch(object);
        if (features != null) {
            return features;
        }
        return super.getFeaturesToTraverseFor(object, type);
    }

    public boolean collectReachableObjectsOfTypeUnderObject(Collection<EObject> result, EObject object, EClassifier type) {
        if (type instanceof EClass && object instanceof AUTOSAR) {
            AUTOSAR autosar = (AUTOSAR)object;
            if (ArpackagePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)type)) {
                result.addAll(this.getAllElementsOfTypeUnderAUTOSAR(autosar, type));
                return true;
            }
        }
        return false;
    }

    private Collection<EObject> getAllElementsOfTypeUnderAUTOSAR(AUTOSAR autosar, EClassifier type) {
        ArrayList<EObject> result = new ArrayList<EObject>();
        for (ARPackage arPackage : autosar.getArPackages()) {
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
        for (ARPackage subPackage : arPackage.getArPackages()) {
            result.addAll(this.getAllElementsOfTypeInPackage(subPackage, type));
        }
        return result;
    }

    public Collection<EObject> getReachableEObjects(EObject referenceSource, EReference reference) {
        if (this.areSubContainerDefinitionsRequested(referenceSource, reference)) {
            EcucContainerValue parentContainer = (EcucContainerValue)referenceSource.eContainer();
            EcucContainerDef parentDef = parentContainer.getDefinition();
            return this.getReachableSubDefinitions(parentDef);
        }
        return super.getReachableEObjects(referenceSource, reference);
    }

    private boolean areSubContainerDefinitionsRequested(EObject referenceSource, EReference reference) {
        return this.isSubContainer(referenceSource) && this.isDefinitionReference(reference);
    }

    private boolean isDefinitionReference(EReference ref) {
        return ref.getEContainingClass().getEPackage() instanceof EcucdescriptionPackage && ref.getFeatureID() == 18;
    }

    private boolean isSubContainer(EObject eObject) {
        return eObject instanceof EcucContainerValue && eObject.eContainer() instanceof EcucContainerValue;
    }

    private Collection<EObject> getReachableSubDefinitions(EcucContainerDef parentDef) {
        ArrayList<EObject> subDefs = new ArrayList<EObject>();
        if (parentDef instanceof EcucChoiceContainerDef) {
            subDefs.addAll((Collection<EObject>)((EcucChoiceContainerDef)parentDef).getChoices());
        } else if (parentDef instanceof EcucParamConfContainerDef) {
            subDefs.addAll((Collection<EObject>)((EcucParamConfContainerDef)parentDef).getSubContainers());
        }
        return subDefs;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class Autosar40TraveralSwitch
    extends Autosar40Switch<List<EStructuralFeature>> {
        protected EClassifier type;

        public Autosar40TraveralSwitch(EClassifier type) {
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
                if (ArpackagePackage.eINSTANCE.getARPackage().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(AutosartoplevelstructurePackage.Literals.AUTOSAR__AR_PACKAGES);
                }
                if (ArpackagePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(AutosartoplevelstructurePackage.Literals.AUTOSAR__AR_PACKAGES);
                }
            }
            return null;
        }

        @Override
        public List<EStructuralFeature> caseARPackage(ARPackage anARPackage) {
            if (this.type instanceof EClass) {
                if (ArpackagePackage.eINSTANCE.getARPackage().isSuperTypeOf((EClass)this.type)) {
                    return Arrays.asList(ArpackagePackage.Literals.AR_PACKAGE__AR_PACKAGES);
                }
                if (ArpackagePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                    ArrayList<EStructuralFeature> relevantStructuralFeatures = new ArrayList<EStructuralFeature>(2);
                    relevantStructuralFeatures.add((EStructuralFeature)ArpackagePackage.Literals.AR_PACKAGE__ELEMENTS);
                    relevantStructuralFeatures.add((EStructuralFeature)ArpackagePackage.Literals.AR_PACKAGE__AR_PACKAGES);
                    return relevantStructuralFeatures;
                }
            }
            return null;
        }

        @Override
        public List<EStructuralFeature> casePackageableElement(PackageableElement packageableElement) {
            if (this.type instanceof EClass && ArpackagePackage.eINSTANCE.getPackageableElement().isSuperTypeOf((EClass)this.type)) {
                return Collections.emptyList();
            }
            return null;
        }
    }
}

