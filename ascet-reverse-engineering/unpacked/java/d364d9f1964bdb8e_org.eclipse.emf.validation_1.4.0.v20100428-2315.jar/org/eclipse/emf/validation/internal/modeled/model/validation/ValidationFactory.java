/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.ecore.EFactory;
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
import org.eclipse.emf.validation.internal.modeled.model.validation.Feature;
import org.eclipse.emf.validation.internal.modeled.model.validation.OclConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.Selector;
import org.eclipse.emf.validation.internal.modeled.model.validation.TraversalStrategy;
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ValidationFactoryImpl;

public interface ValidationFactory
extends EFactory {
    public static final ValidationFactory eINSTANCE = ValidationFactoryImpl.init();

    public Category createCategory();

    public ConstraintProvider createConstraintProvider();

    public Event createEvent();

    public CustomEvent createCustomEvent();

    public Feature createFeature();

    public Constraints createConstraints();

    public ConstraintsBundle createConstraintsBundle();

    public UnparsedConstraint createUnparsedConstraint();

    public OclConstraint createOclConstraint();

    public Parser createParser();

    public TraversalStrategy createTraversalStrategy();

    public ConstraintBindingsBundle createConstraintBindingsBundle();

    public ClientContext createClientContext();

    public Binding createBinding();

    public Enablement createEnablement();

    public Selector createSelector();

    public ValidationPackage getValidationPackage();
}

