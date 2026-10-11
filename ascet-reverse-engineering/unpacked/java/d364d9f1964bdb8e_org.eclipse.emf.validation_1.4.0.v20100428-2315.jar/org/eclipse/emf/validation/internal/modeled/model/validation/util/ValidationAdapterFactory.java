/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.util;

import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;
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
import org.eclipse.emf.validation.internal.modeled.model.validation.Feature;
import org.eclipse.emf.validation.internal.modeled.model.validation.OclConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.Selector;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;
import org.eclipse.emf.validation.internal.modeled.model.validation.TraversalStrategy;
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.util.ValidationSwitch;

public class ValidationAdapterFactory
extends AdapterFactoryImpl {
    protected static ValidationPackage modelPackage;
    protected ValidationSwitch<Adapter> modelSwitch = new ValidationSwitch<Adapter>(){

        @Override
        public Adapter caseCategory(Category object) {
            return ValidationAdapterFactory.this.createCategoryAdapter();
        }

        @Override
        public Adapter caseConstraintProvider(ConstraintProvider object) {
            return ValidationAdapterFactory.this.createConstraintProviderAdapter();
        }

        @Override
        public Adapter caseTarget(Target object) {
            return ValidationAdapterFactory.this.createTargetAdapter();
        }

        @Override
        public Adapter caseEvent(Event object) {
            return ValidationAdapterFactory.this.createEventAdapter();
        }

        @Override
        public Adapter caseCustomEvent(CustomEvent object) {
            return ValidationAdapterFactory.this.createCustomEventAdapter();
        }

        @Override
        public Adapter caseFeature(Feature object) {
            return ValidationAdapterFactory.this.createFeatureAdapter();
        }

        @Override
        public Adapter caseConstraint(Constraint object) {
            return ValidationAdapterFactory.this.createConstraintAdapter();
        }

        @Override
        public Adapter caseParameter(Map.Entry<String, String> object) {
            return ValidationAdapterFactory.this.createParameterAdapter();
        }

        @Override
        public Adapter caseConstraints(Constraints object) {
            return ValidationAdapterFactory.this.createConstraintsAdapter();
        }

        @Override
        public Adapter caseConstraintsBundle(ConstraintsBundle object) {
            return ValidationAdapterFactory.this.createConstraintsBundleAdapter();
        }

        @Override
        public Adapter caseUnparsedConstraint(UnparsedConstraint object) {
            return ValidationAdapterFactory.this.createUnparsedConstraintAdapter();
        }

        @Override
        public Adapter caseOclConstraint(OclConstraint object) {
            return ValidationAdapterFactory.this.createOclConstraintAdapter();
        }

        @Override
        public Adapter caseParser(Parser object) {
            return ValidationAdapterFactory.this.createParserAdapter();
        }

        @Override
        public Adapter caseTraversalStrategy(TraversalStrategy object) {
            return ValidationAdapterFactory.this.createTraversalStrategyAdapter();
        }

        @Override
        public Adapter caseConstraintBindingsBundle(ConstraintBindingsBundle object) {
            return ValidationAdapterFactory.this.createConstraintBindingsBundleAdapter();
        }

        @Override
        public Adapter caseClientContext(ClientContext object) {
            return ValidationAdapterFactory.this.createClientContextAdapter();
        }

        @Override
        public Adapter caseBinding(Binding object) {
            return ValidationAdapterFactory.this.createBindingAdapter();
        }

        @Override
        public Adapter caseEnablement(Enablement object) {
            return ValidationAdapterFactory.this.createEnablementAdapter();
        }

        @Override
        public Adapter caseSelector(Selector object) {
            return ValidationAdapterFactory.this.createSelectorAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ValidationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ValidationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ValidationPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createCategoryAdapter() {
        return null;
    }

    public Adapter createConstraintProviderAdapter() {
        return null;
    }

    public Adapter createTargetAdapter() {
        return null;
    }

    public Adapter createEventAdapter() {
        return null;
    }

    public Adapter createCustomEventAdapter() {
        return null;
    }

    public Adapter createFeatureAdapter() {
        return null;
    }

    public Adapter createConstraintAdapter() {
        return null;
    }

    public Adapter createParameterAdapter() {
        return null;
    }

    public Adapter createConstraintsAdapter() {
        return null;
    }

    public Adapter createConstraintsBundleAdapter() {
        return null;
    }

    public Adapter createUnparsedConstraintAdapter() {
        return null;
    }

    public Adapter createOclConstraintAdapter() {
        return null;
    }

    public Adapter createParserAdapter() {
        return null;
    }

    public Adapter createTraversalStrategyAdapter() {
        return null;
    }

    public Adapter createConstraintBindingsBundleAdapter() {
        return null;
    }

    public Adapter createClientContextAdapter() {
        return null;
    }

    public Adapter createBindingAdapter() {
        return null;
    }

    public Adapter createEnablementAdapter() {
        return null;
    }

    public Adapter createSelectorAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

