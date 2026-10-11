/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EGenericType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EValidator
 *  org.eclipse.emf.ecore.EValidator$Descriptor
 *  org.eclipse.emf.ecore.EValidator$Registry
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.emf.ecore.util.EObjectValidator
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.util.EObjectValidator;

public class ChangePackageImpl
extends EPackageImpl
implements ChangePackage {
    private EClass changeDescriptionEClass = null;
    private EClass eObjectToChangesMapEntryEClass = null;
    private EClass featureChangeEClass = null;
    private EClass listChangeEClass = null;
    private EClass resourceChangeEClass = null;
    private EClass featureMapEntryEClass = null;
    private EEnum changeKindEEnum = null;
    private EDataType eObjectToURIMapEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ChangePackageImpl() {
        super("http://www.eclipse.org/emf/2003/Change", (EFactory)ChangeFactory.eINSTANCE);
    }

    public static ChangePackage initGen() {
        if (isInited) {
            return (ChangePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2003/Change");
        }
        ChangePackageImpl theChangePackage = (ChangePackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2003/Change") instanceof ChangePackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2003/Change") : new ChangePackageImpl());
        isInited = true;
        EcorePackage.eINSTANCE.eClass();
        theChangePackage.createPackageContents();
        theChangePackage.initializePackageContents();
        theChangePackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.eclipse.org/emf/2003/Change", (Object)theChangePackage);
        return theChangePackage;
    }

    public static ChangePackage init() {
        final ChangePackage changePackage = ChangePackageImpl.initGen();
        EValidator.Registry.INSTANCE.put((Object)changePackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return new EObjectValidator(){

                    protected EPackage getEPackage() {
                        return changePackage;
                    }

                    protected boolean validate_MultiplicityConforms(EObject eObject, EStructuralFeature eStructuralFeature, DiagnosticChain diagnostics, Map<Object, Object> context) {
                        return eStructuralFeature == ChangePackage.Literals.FEATURE_CHANGE__FEATURE && ((FeatureChange)eObject).getFeature() != null || super.validate_MultiplicityConforms(eObject, eStructuralFeature, diagnostics, context);
                    }
                };
            }
        });
        return changePackage;
    }

    public EClass getChangeDescription() {
        return this.changeDescriptionEClass;
    }

    public EReference getChangeDescription_ObjectChanges() {
        return (EReference)this.changeDescriptionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getChangeDescription_ObjectsToDetach() {
        return (EReference)this.changeDescriptionEClass.getEStructuralFeatures().get(1);
    }

    public EReference getChangeDescription_ObjectsToAttach() {
        return (EReference)this.changeDescriptionEClass.getEStructuralFeatures().get(2);
    }

    public EReference getChangeDescription_ResourceChanges() {
        return (EReference)this.changeDescriptionEClass.getEStructuralFeatures().get(3);
    }

    public EClass getEObjectToChangesMapEntry() {
        return this.eObjectToChangesMapEntryEClass;
    }

    public EReference getEObjectToChangesMapEntry_Key() {
        return (EReference)this.eObjectToChangesMapEntryEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEObjectToChangesMapEntry_Value() {
        return (EReference)this.eObjectToChangesMapEntryEClass.getEStructuralFeatures().get(1);
    }

    public EClass getFeatureChange() {
        return this.featureChangeEClass;
    }

    public EAttribute getFeatureChange_FeatureName() {
        return (EAttribute)this.featureChangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFeatureChange_DataValue() {
        return (EAttribute)this.featureChangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFeatureChange_Set() {
        return (EAttribute)this.featureChangeEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getFeatureChange_Value() {
        return (EAttribute)this.featureChangeEClass.getEStructuralFeatures().get(3);
    }

    public EReference getFeatureChange_Feature() {
        return (EReference)this.featureChangeEClass.getEStructuralFeatures().get(4);
    }

    public EReference getFeatureChange_ReferenceValue() {
        return (EReference)this.featureChangeEClass.getEStructuralFeatures().get(5);
    }

    public EReference getFeatureChange_ListChanges() {
        return (EReference)this.featureChangeEClass.getEStructuralFeatures().get(6);
    }

    public EClass getListChange() {
        return this.listChangeEClass;
    }

    public EAttribute getListChange_Kind() {
        return (EAttribute)this.listChangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getListChange_DataValues() {
        return (EAttribute)this.listChangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getListChange_Index() {
        return (EAttribute)this.listChangeEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getListChange_MoveToIndex() {
        return (EAttribute)this.listChangeEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getListChange_Values() {
        return (EAttribute)this.listChangeEClass.getEStructuralFeatures().get(4);
    }

    public EReference getListChange_ReferenceValues() {
        return (EReference)this.listChangeEClass.getEStructuralFeatures().get(5);
    }

    public EReference getListChange_Feature() {
        return (EReference)this.listChangeEClass.getEStructuralFeatures().get(6);
    }

    public EReference getListChange_FeatureMapEntryValues() {
        return (EReference)this.listChangeEClass.getEStructuralFeatures().get(7);
    }

    public EClass getResourceChange() {
        return this.resourceChangeEClass;
    }

    public EAttribute getResourceChange_ResourceURI() {
        return (EAttribute)this.resourceChangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getResourceChange_Resource() {
        return (EAttribute)this.resourceChangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getResourceChange_Value() {
        return (EAttribute)this.resourceChangeEClass.getEStructuralFeatures().get(2);
    }

    public EReference getResourceChange_ListChanges() {
        return (EReference)this.resourceChangeEClass.getEStructuralFeatures().get(3);
    }

    public EClass getFeatureMapEntry() {
        return this.featureMapEntryEClass;
    }

    public EAttribute getFeatureMapEntry_FeatureName() {
        return (EAttribute)this.featureMapEntryEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFeatureMapEntry_DataValue() {
        return (EAttribute)this.featureMapEntryEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFeatureMapEntry_Value() {
        return (EAttribute)this.featureMapEntryEClass.getEStructuralFeatures().get(2);
    }

    public EReference getFeatureMapEntry_Feature() {
        return (EReference)this.featureMapEntryEClass.getEStructuralFeatures().get(3);
    }

    public EReference getFeatureMapEntry_ReferenceValue() {
        return (EReference)this.featureMapEntryEClass.getEStructuralFeatures().get(4);
    }

    public EEnum getChangeKind() {
        return this.changeKindEEnum;
    }

    public EDataType getEObjectToURIMap() {
        return this.eObjectToURIMapEDataType;
    }

    public ChangeFactory getChangeFactory() {
        return (ChangeFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.changeDescriptionEClass = this.createEClass(0);
        this.createEReference(this.changeDescriptionEClass, 0);
        this.createEReference(this.changeDescriptionEClass, 1);
        this.createEReference(this.changeDescriptionEClass, 2);
        this.createEReference(this.changeDescriptionEClass, 3);
        this.eObjectToChangesMapEntryEClass = this.createEClass(1);
        this.createEReference(this.eObjectToChangesMapEntryEClass, 0);
        this.createEReference(this.eObjectToChangesMapEntryEClass, 1);
        this.featureChangeEClass = this.createEClass(2);
        this.createEAttribute(this.featureChangeEClass, 0);
        this.createEAttribute(this.featureChangeEClass, 1);
        this.createEAttribute(this.featureChangeEClass, 2);
        this.createEAttribute(this.featureChangeEClass, 3);
        this.createEReference(this.featureChangeEClass, 4);
        this.createEReference(this.featureChangeEClass, 5);
        this.createEReference(this.featureChangeEClass, 6);
        this.listChangeEClass = this.createEClass(3);
        this.createEAttribute(this.listChangeEClass, 0);
        this.createEAttribute(this.listChangeEClass, 1);
        this.createEAttribute(this.listChangeEClass, 2);
        this.createEAttribute(this.listChangeEClass, 3);
        this.createEAttribute(this.listChangeEClass, 4);
        this.createEReference(this.listChangeEClass, 5);
        this.createEReference(this.listChangeEClass, 6);
        this.createEReference(this.listChangeEClass, 7);
        this.resourceChangeEClass = this.createEClass(4);
        this.createEAttribute(this.resourceChangeEClass, 0);
        this.createEAttribute(this.resourceChangeEClass, 1);
        this.createEAttribute(this.resourceChangeEClass, 2);
        this.createEReference(this.resourceChangeEClass, 3);
        this.featureMapEntryEClass = this.createEClass(5);
        this.createEAttribute(this.featureMapEntryEClass, 0);
        this.createEAttribute(this.featureMapEntryEClass, 1);
        this.createEAttribute(this.featureMapEntryEClass, 2);
        this.createEReference(this.featureMapEntryEClass, 3);
        this.createEReference(this.featureMapEntryEClass, 4);
        this.changeKindEEnum = this.createEEnum(6);
        this.eObjectToURIMapEDataType = this.createEDataType(7);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("change");
        this.setNsPrefix("change");
        this.setNsURI("http://www.eclipse.org/emf/2003/Change");
        EcorePackage theEcorePackage = (EcorePackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2002/Ecore");
        this.initEClass(this.changeDescriptionEClass, ChangeDescription.class, "ChangeDescription", false, false, true);
        this.initEReference(this.getChangeDescription_ObjectChanges(), (EClassifier)this.getEObjectToChangesMapEntry(), null, "objectChanges", null, 0, -1, ChangeDescription.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getChangeDescription_ObjectsToDetach(), (EClassifier)theEcorePackage.getEObject(), null, "objectsToDetach", null, 0, -1, ChangeDescription.class, true, false, true, false, false, false, true, true, true);
        this.initEReference(this.getChangeDescription_ObjectsToAttach(), (EClassifier)theEcorePackage.getEObject(), null, "objectsToAttach", null, 0, -1, ChangeDescription.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getChangeDescription_ResourceChanges(), (EClassifier)this.getResourceChange(), null, "resourceChanges", null, 0, -1, ChangeDescription.class, false, false, true, true, false, false, true, false, true);
        this.addEOperation(this.changeDescriptionEClass, null, "apply", 0, 1, true, true);
        this.addEOperation(this.changeDescriptionEClass, null, "applyAndReverse", 0, 1, true, true);
        EOperation op = this.addEOperation(this.changeDescriptionEClass, null, "copyAndReverse", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.getEObjectToURIMap(), "eObjectToProxyURIMap", 0, 1, true, true);
        this.initEClass(this.eObjectToChangesMapEntryEClass, Map.Entry.class, "EObjectToChangesMapEntry", false, false, false);
        this.initEReference(this.getEObjectToChangesMapEntry_Key(), (EClassifier)theEcorePackage.getEObject(), null, "key", null, 1, 1, Map.Entry.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEObjectToChangesMapEntry_Value(), (EClassifier)this.getFeatureChange(), null, "value", null, 0, -1, Map.Entry.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.featureChangeEClass, FeatureChange.class, "FeatureChange", false, false, true);
        this.initEAttribute(this.getFeatureChange_FeatureName(), (EClassifier)this.ecorePackage.getEString(), "featureName", null, 0, 1, FeatureChange.class, false, true, true, true, false, true, false, true);
        this.initEAttribute(this.getFeatureChange_DataValue(), (EClassifier)this.ecorePackage.getEString(), "dataValue", null, 0, 1, FeatureChange.class, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFeatureChange_Set(), (EClassifier)this.ecorePackage.getEBoolean(), "set", "true", 0, 1, FeatureChange.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getFeatureChange_Value(), (EClassifier)theEcorePackage.getEJavaObject(), "value", null, 0, 1, FeatureChange.class, true, true, false, false, false, true, true, true);
        this.initEReference(this.getFeatureChange_Feature(), (EClassifier)theEcorePackage.getEStructuralFeature(), null, "feature", null, 1, 1, FeatureChange.class, false, true, true, false, true, true, true, false, true);
        this.initEReference(this.getFeatureChange_ReferenceValue(), (EClassifier)theEcorePackage.getEObject(), null, "referenceValue", null, 0, 1, FeatureChange.class, false, true, true, false, true, false, true, false, true);
        this.initEReference(this.getFeatureChange_ListChanges(), (EClassifier)this.getListChange(), null, "listChanges", null, 0, -1, FeatureChange.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.featureChangeEClass, null, "apply", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theEcorePackage.getEObject(), "originalObject", 0, 1, true, true);
        op = this.addEOperation(this.featureChangeEClass, null, "applyAndReverse", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theEcorePackage.getEObject(), "originalObject", 0, 1, true, true);
        op = this.addEOperation(this.featureChangeEClass, null, "reverse", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theEcorePackage.getEObject(), "originalObject", 0, 1, true, true);
        this.initEClass(this.listChangeEClass, ListChange.class, "ListChange", false, false, true);
        this.initEAttribute(this.getListChange_Kind(), (EClassifier)this.getChangeKind(), "kind", null, 0, 1, ListChange.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getListChange_DataValues(), (EClassifier)this.ecorePackage.getEString(), "dataValues", null, 0, -1, ListChange.class, false, false, true, false, false, false, false, true);
        this.initEAttribute(this.getListChange_Index(), (EClassifier)this.ecorePackage.getEInt(), "index", "-1", 0, 1, ListChange.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getListChange_MoveToIndex(), (EClassifier)this.ecorePackage.getEInt(), "moveToIndex", null, 0, 1, ListChange.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getListChange_Values(), (EClassifier)theEcorePackage.getEJavaObject(), "values", null, 0, -1, ListChange.class, true, true, true, false, false, true, true, true);
        this.initEReference(this.getListChange_ReferenceValues(), (EClassifier)theEcorePackage.getEObject(), null, "referenceValues", null, 0, -1, ListChange.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getListChange_Feature(), (EClassifier)theEcorePackage.getEStructuralFeature(), null, "feature", null, 0, 1, ListChange.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getListChange_FeatureMapEntryValues(), (EClassifier)this.getFeatureMapEntry(), null, "featureMapEntryValues", null, 0, -1, ListChange.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.listChangeEClass, null, "apply", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)theEcorePackage.getEEList());
        EGenericType g2 = this.createEGenericType((EClassifier)theEcorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "originalList", 0, 1, true, true);
        op = this.addEOperation(this.listChangeEClass, null, "applyAndReverse", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)theEcorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)theEcorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "originalList", 0, 1, true, true);
        op = this.addEOperation(this.listChangeEClass, null, "reverse", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)theEcorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)theEcorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "originalList", 0, 1, true, true);
        this.initEClass(this.resourceChangeEClass, ResourceChange.class, "ResourceChange", false, false, true);
        this.initEAttribute(this.getResourceChange_ResourceURI(), (EClassifier)this.ecorePackage.getEString(), "resourceURI", null, 0, 1, ResourceChange.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getResourceChange_Resource(), (EClassifier)theEcorePackage.getEResource(), "resource", null, 0, 1, ResourceChange.class, true, false, true, false, false, true, true, true);
        g1 = this.createEGenericType((EClassifier)theEcorePackage.getEEList());
        g2 = this.createEGenericType();
        g1.getETypeArguments().add((Object)g2);
        this.initEAttribute(this.getResourceChange_Value(), g1, "value", null, 0, 1, ResourceChange.class, true, true, false, false, false, true, true, true);
        this.initEReference(this.getResourceChange_ListChanges(), (EClassifier)this.getListChange(), null, "listChanges", null, 0, -1, ResourceChange.class, false, false, true, true, false, false, true, false, true);
        this.addEOperation(this.resourceChangeEClass, null, "apply", 0, 1, true, true);
        this.addEOperation(this.resourceChangeEClass, null, "applyAndReverse", 0, 1, true, true);
        this.addEOperation(this.resourceChangeEClass, null, "reverse", 0, 1, true, true);
        this.initEClass(this.featureMapEntryEClass, FeatureMapEntry.class, "FeatureMapEntry", false, false, true);
        this.initEAttribute(this.getFeatureMapEntry_FeatureName(), (EClassifier)this.ecorePackage.getEString(), "featureName", null, 0, 1, FeatureMapEntry.class, false, true, true, true, false, true, false, true);
        this.initEAttribute(this.getFeatureMapEntry_DataValue(), (EClassifier)this.ecorePackage.getEString(), "dataValue", null, 0, 1, FeatureMapEntry.class, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFeatureMapEntry_Value(), (EClassifier)theEcorePackage.getEJavaObject(), "value", null, 0, 1, FeatureMapEntry.class, true, true, false, false, false, true, true, true);
        this.initEReference(this.getFeatureMapEntry_Feature(), (EClassifier)theEcorePackage.getEStructuralFeature(), null, "feature", null, 1, 1, FeatureMapEntry.class, false, true, true, false, true, true, true, false, true);
        this.initEReference(this.getFeatureMapEntry_ReferenceValue(), (EClassifier)theEcorePackage.getEObject(), null, "referenceValue", null, 0, 1, FeatureMapEntry.class, false, true, true, false, true, false, true, false, true);
        this.initEEnum(this.changeKindEEnum, ChangeKind.class, "ChangeKind");
        this.addEEnumLiteral(this.changeKindEEnum, ChangeKind.ADD_LITERAL);
        this.addEEnumLiteral(this.changeKindEEnum, ChangeKind.REMOVE_LITERAL);
        this.addEEnumLiteral(this.changeKindEEnum, ChangeKind.MOVE_LITERAL);
        this.initEDataType(this.eObjectToURIMapEDataType, Map.class, "EObjectToURIMap", false, false, "java.util.Map<org.eclipse.emf.ecore.EObject, org.eclipse.emf.common.util.URI>");
        this.createResource("http://www.eclipse.org/emf/2003/Change");
    }
}

