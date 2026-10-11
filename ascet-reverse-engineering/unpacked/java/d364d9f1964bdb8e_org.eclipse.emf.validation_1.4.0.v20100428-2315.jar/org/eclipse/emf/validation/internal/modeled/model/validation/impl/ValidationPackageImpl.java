/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Map;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.Binding;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintBindingsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.CustomEvent;
import org.eclipse.emf.validation.internal.modeled.model.validation.Enablement;
import org.eclipse.emf.validation.internal.modeled.model.validation.Event;
import org.eclipse.emf.validation.internal.modeled.model.validation.EventTypesEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Feature;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.OclConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.Selector;
import org.eclipse.emf.validation.internal.modeled.model.validation.SeverityEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;
import org.eclipse.emf.validation.internal.modeled.model.validation.TraversalStrategy;
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationFactory;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

public class ValidationPackageImpl
extends EPackageImpl
implements ValidationPackage {
    private EClass categoryEClass = null;
    private EClass constraintProviderEClass = null;
    private EClass targetEClass = null;
    private EClass eventEClass = null;
    private EClass customEventEClass = null;
    private EClass featureEClass = null;
    private EClass constraintEClass = null;
    private EClass parameterEClass = null;
    private EClass constraintsEClass = null;
    private EClass constraintsBundleEClass = null;
    private EClass unparsedConstraintEClass = null;
    private EClass oclConstraintEClass = null;
    private EClass parserEClass = null;
    private EClass traversalStrategyEClass = null;
    private EClass constraintBindingsBundleEClass = null;
    private EClass clientContextEClass = null;
    private EClass bindingEClass = null;
    private EClass enablementEClass = null;
    private EClass selectorEClass = null;
    private EEnum eventTypesEnumEEnum = null;
    private EEnum modeEnumEEnum = null;
    private EEnum severityEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ValidationPackageImpl() {
        super("http://www.eclipse.org/emf/2009/Validation", (EFactory)ValidationFactory.eINSTANCE);
    }

    public static ValidationPackage init() {
        if (isInited) {
            return (ValidationPackage)EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/emf/2009/Validation");
        }
        ValidationPackageImpl theValidationPackage = (ValidationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2009/Validation") instanceof ValidationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://www.eclipse.org/emf/2009/Validation") : new ValidationPackageImpl());
        isInited = true;
        EcorePackage.eINSTANCE.eClass();
        theValidationPackage.createPackageContents();
        theValidationPackage.initializePackageContents();
        theValidationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://www.eclipse.org/emf/2009/Validation", (Object)theValidationPackage);
        return theValidationPackage;
    }

    public EClass getCategory() {
        return this.categoryEClass;
    }

    public EReference getCategory_SubCategories() {
        return (EReference)this.categoryEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCategory_Id() {
        return (EAttribute)this.categoryEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCategory_Mandatory() {
        return (EAttribute)this.categoryEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getCategory_Name() {
        return (EAttribute)this.categoryEClass.getEStructuralFeatures().get(3);
    }

    public EReference getCategory_ParentCategory() {
        return (EReference)this.categoryEClass.getEStructuralFeatures().get(4);
    }

    public EClass getConstraintProvider() {
        return this.constraintProviderEClass;
    }

    public EAttribute getConstraintProvider_Cache() {
        return (EAttribute)this.constraintProviderEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getConstraintProvider_Description() {
        return (EAttribute)this.constraintProviderEClass.getEStructuralFeatures().get(1);
    }

    public EReference getConstraintProvider_Target() {
        return (EReference)this.constraintProviderEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getConstraintProvider_Mode() {
        return (EAttribute)this.constraintProviderEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getConstraintProvider_ClassName() {
        return (EAttribute)this.constraintProviderEClass.getEStructuralFeatures().get(4);
    }

    public EReference getConstraintProvider_Constraints() {
        return (EReference)this.constraintProviderEClass.getEStructuralFeatures().get(5);
    }

    public EReference getConstraintProvider_Package() {
        return (EReference)this.constraintProviderEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getConstraintProvider_PluginId() {
        return (EAttribute)this.constraintProviderEClass.getEStructuralFeatures().get(7);
    }

    public EClass getTarget() {
        return this.targetEClass;
    }

    public EReference getTarget_Feature() {
        return (EReference)this.targetEClass.getEStructuralFeatures().get(0);
    }

    public EReference getTarget_EClass() {
        return (EReference)this.targetEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEvent() {
        return this.eventEClass;
    }

    public EAttribute getEvent_Name() {
        return (EAttribute)this.eventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCustomEvent() {
        return this.customEventEClass;
    }

    public EAttribute getCustomEvent_Name() {
        return (EAttribute)this.customEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFeature() {
        return this.featureEClass;
    }

    public EClass getConstraint() {
        return this.constraintEClass;
    }

    public EAttribute getConstraint_Id() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getConstraint_Name() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getConstraint_Severity() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getConstraint_StatusCode() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getConstraint_ClassName() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getConstraint_Mode() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getConstraint_IsEnabledByDefault() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getConstraint_Description() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getConstraint_Message() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(8);
    }

    public EReference getConstraint_Parameters() {
        return (EReference)this.constraintEClass.getEStructuralFeatures().get(9);
    }

    public EReference getConstraint_Target() {
        return (EReference)this.constraintEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getConstraint_Lang() {
        return (EAttribute)this.constraintEClass.getEStructuralFeatures().get(11);
    }

    public EClass getParameter() {
        return this.parameterEClass;
    }

    public EAttribute getParameter_Key() {
        return (EAttribute)this.parameterEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getParameter_Value() {
        return (EAttribute)this.parameterEClass.getEStructuralFeatures().get(1);
    }

    public EClass getConstraints() {
        return this.constraintsEClass;
    }

    public EReference getConstraints_Constraints() {
        return (EReference)this.constraintsEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getConstraints_Include() {
        return (EAttribute)this.constraintsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getConstraints_Categories() {
        return (EReference)this.constraintsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getConstraintsBundle() {
        return this.constraintsBundleEClass;
    }

    public EReference getConstraintsBundle_Providers() {
        return (EReference)this.constraintsBundleEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConstraintsBundle_Categories() {
        return (EReference)this.constraintsBundleEClass.getEStructuralFeatures().get(1);
    }

    public EReference getConstraintsBundle_ConstraintBindingsBundles() {
        return (EReference)this.constraintsBundleEClass.getEStructuralFeatures().get(2);
    }

    public EReference getConstraintsBundle_Parsers() {
        return (EReference)this.constraintsBundleEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getConstraintsBundle_MessageBundlePath() {
        return (EAttribute)this.constraintsBundleEClass.getEStructuralFeatures().get(4);
    }

    public EClass getUnparsedConstraint() {
        return this.unparsedConstraintEClass;
    }

    public EAttribute getUnparsedConstraint_Body() {
        return (EAttribute)this.unparsedConstraintEClass.getEStructuralFeatures().get(0);
    }

    public EClass getOclConstraint() {
        return this.oclConstraintEClass;
    }

    public EClass getParser() {
        return this.parserEClass;
    }

    public EAttribute getParser_Language() {
        return (EAttribute)this.parserEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getParser_ClassName() {
        return (EAttribute)this.parserEClass.getEStructuralFeatures().get(1);
    }

    public EClass getTraversalStrategy() {
        return this.traversalStrategyEClass;
    }

    public EAttribute getTraversalStrategy_Class() {
        return (EAttribute)this.traversalStrategyEClass.getEStructuralFeatures().get(0);
    }

    public EReference getTraversalStrategy_Package() {
        return (EReference)this.traversalStrategyEClass.getEStructuralFeatures().get(1);
    }

    public EClass getConstraintBindingsBundle() {
        return this.constraintBindingsBundleEClass;
    }

    public EReference getConstraintBindingsBundle_ClientContexts() {
        return (EReference)this.constraintBindingsBundleEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConstraintBindingsBundle_Bindings() {
        return (EReference)this.constraintBindingsBundleEClass.getEStructuralFeatures().get(1);
    }

    public EClass getClientContext() {
        return this.clientContextEClass;
    }

    public EAttribute getClientContext_Id() {
        return (EAttribute)this.clientContextEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getClientContext_Default() {
        return (EAttribute)this.clientContextEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBinding() {
        return this.bindingEClass;
    }

    public EReference getBinding_ClientContexts() {
        return (EReference)this.bindingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getBinding_Constraints() {
        return (EReference)this.bindingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getBinding_ExcludedConstraints() {
        return (EReference)this.bindingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getBinding_Categories() {
        return (EReference)this.bindingEClass.getEStructuralFeatures().get(3);
    }

    public EReference getBinding_ExcludedCategories() {
        return (EReference)this.bindingEClass.getEStructuralFeatures().get(4);
    }

    public EClass getEnablement() {
        return this.enablementEClass;
    }

    public EAttribute getEnablement_DomExpression() {
        return (EAttribute)this.enablementEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSelector() {
        return this.selectorEClass;
    }

    public EAttribute getSelector_ClassName() {
        return (EAttribute)this.selectorEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getEventTypesEnum() {
        return this.eventTypesEnumEEnum;
    }

    public EEnum getModeEnum() {
        return this.modeEnumEEnum;
    }

    public EEnum getSeverityEnum() {
        return this.severityEnumEEnum;
    }

    public ValidationFactory getValidationFactory() {
        return (ValidationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.categoryEClass = this.createEClass(0);
        this.createEReference(this.categoryEClass, 0);
        this.createEAttribute(this.categoryEClass, 1);
        this.createEAttribute(this.categoryEClass, 2);
        this.createEAttribute(this.categoryEClass, 3);
        this.createEReference(this.categoryEClass, 4);
        this.constraintProviderEClass = this.createEClass(1);
        this.createEAttribute(this.constraintProviderEClass, 0);
        this.createEAttribute(this.constraintProviderEClass, 1);
        this.createEReference(this.constraintProviderEClass, 2);
        this.createEAttribute(this.constraintProviderEClass, 3);
        this.createEAttribute(this.constraintProviderEClass, 4);
        this.createEReference(this.constraintProviderEClass, 5);
        this.createEReference(this.constraintProviderEClass, 6);
        this.createEAttribute(this.constraintProviderEClass, 7);
        this.targetEClass = this.createEClass(2);
        this.createEReference(this.targetEClass, 0);
        this.createEReference(this.targetEClass, 1);
        this.eventEClass = this.createEClass(3);
        this.createEAttribute(this.eventEClass, 2);
        this.customEventEClass = this.createEClass(4);
        this.createEAttribute(this.customEventEClass, 2);
        this.featureEClass = this.createEClass(5);
        this.constraintEClass = this.createEClass(6);
        this.createEAttribute(this.constraintEClass, 0);
        this.createEAttribute(this.constraintEClass, 1);
        this.createEAttribute(this.constraintEClass, 2);
        this.createEAttribute(this.constraintEClass, 3);
        this.createEAttribute(this.constraintEClass, 4);
        this.createEAttribute(this.constraintEClass, 5);
        this.createEAttribute(this.constraintEClass, 6);
        this.createEAttribute(this.constraintEClass, 7);
        this.createEAttribute(this.constraintEClass, 8);
        this.createEReference(this.constraintEClass, 9);
        this.createEReference(this.constraintEClass, 10);
        this.createEAttribute(this.constraintEClass, 11);
        this.parameterEClass = this.createEClass(7);
        this.createEAttribute(this.parameterEClass, 0);
        this.createEAttribute(this.parameterEClass, 1);
        this.constraintsEClass = this.createEClass(8);
        this.createEReference(this.constraintsEClass, 0);
        this.createEAttribute(this.constraintsEClass, 1);
        this.createEReference(this.constraintsEClass, 2);
        this.constraintsBundleEClass = this.createEClass(9);
        this.createEReference(this.constraintsBundleEClass, 0);
        this.createEReference(this.constraintsBundleEClass, 1);
        this.createEReference(this.constraintsBundleEClass, 2);
        this.createEReference(this.constraintsBundleEClass, 3);
        this.createEAttribute(this.constraintsBundleEClass, 4);
        this.unparsedConstraintEClass = this.createEClass(10);
        this.createEAttribute(this.unparsedConstraintEClass, 12);
        this.oclConstraintEClass = this.createEClass(11);
        this.parserEClass = this.createEClass(12);
        this.createEAttribute(this.parserEClass, 0);
        this.createEAttribute(this.parserEClass, 1);
        this.traversalStrategyEClass = this.createEClass(13);
        this.createEAttribute(this.traversalStrategyEClass, 0);
        this.createEReference(this.traversalStrategyEClass, 1);
        this.constraintBindingsBundleEClass = this.createEClass(14);
        this.createEReference(this.constraintBindingsBundleEClass, 0);
        this.createEReference(this.constraintBindingsBundleEClass, 1);
        this.clientContextEClass = this.createEClass(15);
        this.createEAttribute(this.clientContextEClass, 0);
        this.createEAttribute(this.clientContextEClass, 1);
        this.bindingEClass = this.createEClass(16);
        this.createEReference(this.bindingEClass, 0);
        this.createEReference(this.bindingEClass, 1);
        this.createEReference(this.bindingEClass, 2);
        this.createEReference(this.bindingEClass, 3);
        this.createEReference(this.bindingEClass, 4);
        this.enablementEClass = this.createEClass(17);
        this.createEAttribute(this.enablementEClass, 2);
        this.selectorEClass = this.createEClass(18);
        this.createEAttribute(this.selectorEClass, 2);
        this.eventTypesEnumEEnum = this.createEEnum(19);
        this.modeEnumEEnum = this.createEEnum(20);
        this.severityEnumEEnum = this.createEEnum(21);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("validation");
        this.setNsPrefix("validation");
        this.setNsURI("http://www.eclipse.org/emf/2009/Validation");
        this.eventEClass.getESuperTypes().add((Object)this.getTarget());
        this.customEventEClass.getESuperTypes().add((Object)this.getTarget());
        this.unparsedConstraintEClass.getESuperTypes().add((Object)this.getConstraint());
        this.enablementEClass.getESuperTypes().add((Object)this.getClientContext());
        this.selectorEClass.getESuperTypes().add((Object)this.getClientContext());
        this.initEClass(this.categoryEClass, Category.class, "Category", false, false, true);
        this.initEReference(this.getCategory_SubCategories(), (EClassifier)this.getCategory(), this.getCategory_ParentCategory(), "subCategories", null, 0, -1, Category.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCategory_Id(), (EClassifier)this.ecorePackage.getEString(), "id", null, 0, 1, Category.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getCategory_Mandatory(), (EClassifier)this.ecorePackage.getEBoolean(), "mandatory", null, 0, 1, Category.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getCategory_Name(), (EClassifier)this.ecorePackage.getEString(), "name", null, 0, 1, Category.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getCategory_ParentCategory(), (EClassifier)this.getCategory(), this.getCategory_SubCategories(), "parentCategory", null, 0, 1, Category.class, false, false, true, false, false, false, true, false, true);
        this.addEOperation(this.categoryEClass, (EClassifier)this.ecorePackage.getEString(), "getPath", 0, 1, true, true);
        this.initEClass(this.constraintProviderEClass, ConstraintProvider.class, "ConstraintProvider", false, false, true);
        this.initEAttribute(this.getConstraintProvider_Cache(), (EClassifier)this.ecorePackage.getEBoolean(), "cache", null, 0, 1, ConstraintProvider.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraintProvider_Description(), (EClassifier)this.ecorePackage.getEString(), "description", null, 0, 1, ConstraintProvider.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getConstraintProvider_Target(), (EClassifier)this.getTarget(), null, "target", null, 0, -1, ConstraintProvider.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraintProvider_Mode(), (EClassifier)this.getModeEnum(), "mode", null, 0, 1, ConstraintProvider.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraintProvider_ClassName(), (EClassifier)this.ecorePackage.getEString(), "className", null, 0, 1, ConstraintProvider.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getConstraintProvider_Constraints(), (EClassifier)this.getConstraints(), null, "constraints", null, 0, -1, ConstraintProvider.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraintProvider_Package(), (EClassifier)this.ecorePackage.getEPackage(), null, "package", null, 1, -1, ConstraintProvider.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getConstraintProvider_PluginId(), (EClassifier)this.ecorePackage.getEString(), "pluginId", null, 1, 1, ConstraintProvider.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.targetEClass, Target.class, "Target", true, false, true);
        this.initEReference(this.getTarget_Feature(), (EClassifier)this.ecorePackage.getEStructuralFeature(), null, "feature", null, 0, -1, Target.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getTarget_EClass(), (EClassifier)this.ecorePackage.getEClassifier(), null, "eClass", null, 1, 1, Target.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.eventEClass, Event.class, "Event", false, false, true);
        this.initEAttribute(this.getEvent_Name(), (EClassifier)this.getEventTypesEnum(), "name", null, 0, 1, Event.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.customEventEClass, CustomEvent.class, "CustomEvent", false, false, true);
        this.initEAttribute(this.getCustomEvent_Name(), (EClassifier)this.ecorePackage.getEString(), "name", null, 0, 1, CustomEvent.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.featureEClass, Feature.class, "Feature", false, false, true);
        this.initEClass(this.constraintEClass, Constraint.class, "Constraint", true, false, true);
        this.initEAttribute(this.getConstraint_Id(), (EClassifier)this.ecorePackage.getEString(), "id", null, 1, 1, Constraint.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getConstraint_Name(), (EClassifier)this.ecorePackage.getEString(), "name", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_Severity(), (EClassifier)this.getSeverityEnum(), "severity", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_StatusCode(), (EClassifier)this.ecorePackage.getEInt(), "statusCode", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_ClassName(), (EClassifier)this.ecorePackage.getEString(), "className", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_Mode(), (EClassifier)this.getModeEnum(), "mode", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_IsEnabledByDefault(), (EClassifier)this.ecorePackage.getEBoolean(), "isEnabledByDefault", "true", 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_Description(), (EClassifier)this.ecorePackage.getEString(), "description", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraint_Message(), (EClassifier)this.ecorePackage.getEString(), "message", null, 1, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getConstraint_Parameters(), (EClassifier)this.getParameter(), null, "parameters", null, 0, -1, Constraint.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraint_Target(), (EClassifier)this.getTarget(), null, "target", null, 1, 1, Constraint.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getConstraint_Lang(), (EClassifier)this.ecorePackage.getEString(), "lang", null, 0, 1, Constraint.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.parameterEClass, Map.Entry.class, "Parameter", false, false, false);
        this.initEAttribute(this.getParameter_Key(), (EClassifier)this.ecorePackage.getEString(), "key", null, 1, 1, Map.Entry.class, false, false, true, false, false, true, false, true);
        this.initEAttribute(this.getParameter_Value(), (EClassifier)this.ecorePackage.getEString(), "value", null, 1, 1, Map.Entry.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.constraintsEClass, Constraints.class, "Constraints", false, false, true);
        this.initEReference(this.getConstraints_Constraints(), (EClassifier)this.getConstraint(), null, "constraints", null, 0, -1, Constraints.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraints_Include(), (EClassifier)this.ecorePackage.getEString(), "include", null, 0, -1, Constraints.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getConstraints_Categories(), (EClassifier)this.getCategory(), null, "categories", null, 0, -1, Constraints.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.constraintsBundleEClass, ConstraintsBundle.class, "ConstraintsBundle", false, false, true);
        this.initEReference(this.getConstraintsBundle_Providers(), (EClassifier)this.getConstraintProvider(), null, "providers", null, 0, -1, ConstraintsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraintsBundle_Categories(), (EClassifier)this.getCategory(), null, "categories", null, 0, -1, ConstraintsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraintsBundle_ConstraintBindingsBundles(), (EClassifier)this.getConstraintBindingsBundle(), null, "constraintBindingsBundles", null, 0, -1, ConstraintsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraintsBundle_Parsers(), (EClassifier)this.getParser(), null, "parsers", null, 0, -1, ConstraintsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getConstraintsBundle_MessageBundlePath(), (EClassifier)this.ecorePackage.getEString(), "messageBundlePath", null, 0, 1, ConstraintsBundle.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.unparsedConstraintEClass, UnparsedConstraint.class, "UnparsedConstraint", false, false, true);
        this.initEAttribute(this.getUnparsedConstraint_Body(), (EClassifier)this.ecorePackage.getEString(), "body", null, 0, 1, UnparsedConstraint.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.oclConstraintEClass, OclConstraint.class, "OclConstraint", false, false, true);
        this.initEClass(this.parserEClass, Parser.class, "Parser", false, false, true);
        this.initEAttribute(this.getParser_Language(), (EClassifier)this.ecorePackage.getEString(), "language", null, 1, 1, Parser.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getParser_ClassName(), (EClassifier)this.ecorePackage.getEString(), "className", null, 1, 1, Parser.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.traversalStrategyEClass, TraversalStrategy.class, "TraversalStrategy", false, false, true);
        this.initEAttribute(this.getTraversalStrategy_Class(), (EClassifier)this.ecorePackage.getEString(), "class", null, 1, 1, TraversalStrategy.class, false, false, true, false, false, true, false, true);
        this.initEReference(this.getTraversalStrategy_Package(), (EClassifier)this.ecorePackage.getEPackage(), null, "package", null, 0, -1, TraversalStrategy.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.constraintBindingsBundleEClass, ConstraintBindingsBundle.class, "ConstraintBindingsBundle", false, false, true);
        this.initEReference(this.getConstraintBindingsBundle_ClientContexts(), (EClassifier)this.getClientContext(), null, "clientContexts", null, 0, -1, ConstraintBindingsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getConstraintBindingsBundle_Bindings(), (EClassifier)this.getBinding(), null, "bindings", null, 0, -1, ConstraintBindingsBundle.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.clientContextEClass, ClientContext.class, "ClientContext", false, false, true);
        this.initEAttribute(this.getClientContext_Id(), (EClassifier)this.ecorePackage.getEString(), "id", null, 1, 1, ClientContext.class, false, false, true, false, true, true, false, true);
        this.initEAttribute(this.getClientContext_Default(), (EClassifier)this.ecorePackage.getEBoolean(), "default", null, 0, 1, ClientContext.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.bindingEClass, Binding.class, "Binding", false, false, true);
        this.initEReference(this.getBinding_ClientContexts(), (EClassifier)this.getClientContext(), null, "clientContexts", null, 0, -1, Binding.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBinding_Constraints(), (EClassifier)this.getConstraint(), null, "constraints", null, 0, -1, Binding.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBinding_ExcludedConstraints(), (EClassifier)this.getConstraint(), null, "excludedConstraints", null, 0, -1, Binding.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBinding_Categories(), (EClassifier)this.getCategory(), null, "categories", null, 0, -1, Binding.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getBinding_ExcludedCategories(), (EClassifier)this.getCategory(), null, "excludedCategories", null, 0, -1, Binding.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.enablementEClass, Enablement.class, "Enablement", false, false, true);
        this.initEAttribute(this.getEnablement_DomExpression(), (EClassifier)this.ecorePackage.getEString(), "domExpression", null, 0, 1, Enablement.class, false, false, true, false, false, true, false, true);
        this.initEClass(this.selectorEClass, Selector.class, "Selector", false, false, true);
        this.initEAttribute(this.getSelector_ClassName(), (EClassifier)this.ecorePackage.getEString(), "className", null, 1, 1, Selector.class, false, false, true, false, false, true, false, true);
        this.initEEnum(this.eventTypesEnumEEnum, EventTypesEnum.class, "EventTypesEnum");
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.ADD);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.ADD_MANY);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.CREATE);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.MOVE);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.REMOVE);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.REMOVE_MANY);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.REMOVING_ADAPTER);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.RESOLVE);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.SET);
        this.addEEnumLiteral(this.eventTypesEnumEEnum, EventTypesEnum.UNSET);
        this.initEEnum(this.modeEnumEEnum, ModeEnum.class, "ModeEnum");
        this.addEEnumLiteral(this.modeEnumEEnum, ModeEnum.BATCH);
        this.addEEnumLiteral(this.modeEnumEEnum, ModeEnum.LIVE);
        this.initEEnum(this.severityEnumEEnum, SeverityEnum.class, "SeverityEnum");
        this.addEEnumLiteral(this.severityEnumEEnum, SeverityEnum.INFO);
        this.addEEnumLiteral(this.severityEnumEEnum, SeverityEnum.WARNING);
        this.addEEnumLiteral(this.severityEnumEEnum, SeverityEnum.ERROR);
        this.addEEnumLiteral(this.severityEnumEEnum, SeverityEnum.CANCEL);
        this.createResource("http://www.eclipse.org/emf/2009/Validation");
    }
}

