/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.validation.internal.modeled.model.validation.Binding;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext;
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
import org.eclipse.emf.validation.internal.modeled.model.validation.TraversalStrategy;
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationFactory;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.BindingImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.CategoryImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ClientContextImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ConstraintBindingsBundleImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ConstraintProviderImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ConstraintsBundleImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ConstraintsImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.CustomEventImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.EnablementImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.EventImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.FeatureImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.OclConstraintImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ParameterImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ParserImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.SelectorImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.TraversalStrategyImpl;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.UnparsedConstraintImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValidationFactoryImpl
extends EFactoryImpl
implements ValidationFactory {
    public static ValidationFactory init() {
        try {
            ValidationFactory theValidationFactory = (ValidationFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.eclipse.org/emf/2009/Validation");
            if (theValidationFactory != null) {
                return theValidationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ValidationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCategory();
            }
            case 1: {
                return this.createConstraintProvider();
            }
            case 3: {
                return this.createEvent();
            }
            case 4: {
                return this.createCustomEvent();
            }
            case 5: {
                return this.createFeature();
            }
            case 7: {
                return (EObject)this.createParameter();
            }
            case 8: {
                return this.createConstraints();
            }
            case 9: {
                return this.createConstraintsBundle();
            }
            case 10: {
                return this.createUnparsedConstraint();
            }
            case 11: {
                return this.createOclConstraint();
            }
            case 12: {
                return this.createParser();
            }
            case 13: {
                return this.createTraversalStrategy();
            }
            case 14: {
                return this.createConstraintBindingsBundle();
            }
            case 15: {
                return this.createClientContext();
            }
            case 16: {
                return this.createBinding();
            }
            case 17: {
                return this.createEnablement();
            }
            case 18: {
                return this.createSelector();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 19: {
                return this.createEventTypesEnumFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createModeEnumFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createSeverityEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 19: {
                return this.convertEventTypesEnumToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertModeEnumToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertSeverityEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public Category createCategory() {
        CategoryImpl category = new CategoryImpl();
        return category;
    }

    @Override
    public ConstraintProvider createConstraintProvider() {
        ConstraintProviderImpl constraintProvider = new ConstraintProviderImpl();
        return constraintProvider;
    }

    @Override
    public Event createEvent() {
        EventImpl event = new EventImpl();
        return event;
    }

    @Override
    public CustomEvent createCustomEvent() {
        CustomEventImpl customEvent = new CustomEventImpl();
        return customEvent;
    }

    @Override
    public Feature createFeature() {
        FeatureImpl feature = new FeatureImpl();
        return feature;
    }

    public Map.Entry<String, String> createParameter() {
        ParameterImpl parameter = new ParameterImpl();
        return parameter;
    }

    @Override
    public Constraints createConstraints() {
        ConstraintsImpl constraints = new ConstraintsImpl();
        return constraints;
    }

    @Override
    public ConstraintsBundle createConstraintsBundle() {
        ConstraintsBundleImpl constraintsBundle = new ConstraintsBundleImpl();
        return constraintsBundle;
    }

    @Override
    public UnparsedConstraint createUnparsedConstraint() {
        UnparsedConstraintImpl unparsedConstraint = new UnparsedConstraintImpl();
        return unparsedConstraint;
    }

    @Override
    public OclConstraint createOclConstraint() {
        OclConstraintImpl oclConstraint = new OclConstraintImpl();
        return oclConstraint;
    }

    @Override
    public Parser createParser() {
        ParserImpl parser = new ParserImpl();
        return parser;
    }

    @Override
    public TraversalStrategy createTraversalStrategy() {
        TraversalStrategyImpl traversalStrategy = new TraversalStrategyImpl();
        return traversalStrategy;
    }

    @Override
    public ConstraintBindingsBundle createConstraintBindingsBundle() {
        ConstraintBindingsBundleImpl constraintBindingsBundle = new ConstraintBindingsBundleImpl();
        return constraintBindingsBundle;
    }

    @Override
    public ClientContext createClientContext() {
        ClientContextImpl clientContext = new ClientContextImpl();
        return clientContext;
    }

    @Override
    public Binding createBinding() {
        BindingImpl binding = new BindingImpl();
        return binding;
    }

    @Override
    public Enablement createEnablement() {
        EnablementImpl enablement = new EnablementImpl();
        return enablement;
    }

    @Override
    public Selector createSelector() {
        SelectorImpl selector = new SelectorImpl();
        return selector;
    }

    public EventTypesEnum createEventTypesEnumFromString(EDataType eDataType, String initialValue) {
        EventTypesEnum result = EventTypesEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEventTypesEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ModeEnum createModeEnumFromString(EDataType eDataType, String initialValue) {
        ModeEnum result = ModeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertModeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SeverityEnum createSeverityEnumFromString(EDataType eDataType, String initialValue) {
        SeverityEnum result = SeverityEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSeverityEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public ValidationPackage getValidationPackage() {
        return (ValidationPackage)this.getEPackage();
    }

    @Deprecated
    public static ValidationPackage getPackage() {
        return ValidationPackage.eINSTANCE;
    }
}

