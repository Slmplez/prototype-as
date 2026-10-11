/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.util;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
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

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValidationSwitch<T> {
    protected static ValidationPackage modelPackage;

    public ValidationSwitch() {
        if (modelPackage == null) {
            modelPackage = ValidationPackage.eINSTANCE;
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
                Category category = (Category)theEObject;
                T result = this.caseCategory(category);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ConstraintProvider constraintProvider = (ConstraintProvider)theEObject;
                T result = this.caseConstraintProvider(constraintProvider);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Target target = (Target)theEObject;
                T result = this.caseTarget(target);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Event event = (Event)theEObject;
                T result = this.caseEvent(event);
                if (result == null) {
                    result = this.caseTarget(event);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CustomEvent customEvent = (CustomEvent)theEObject;
                T result = this.caseCustomEvent(customEvent);
                if (result == null) {
                    result = this.caseTarget(customEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                Feature feature = (Feature)theEObject;
                T result = this.caseFeature(feature);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                Constraint constraint = (Constraint)theEObject;
                T result = this.caseConstraint(constraint);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                Map.Entry parameter = (Map.Entry)theEObject;
                T result = this.caseParameter(parameter);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                Constraints constraints = (Constraints)theEObject;
                T result = this.caseConstraints(constraints);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ConstraintsBundle constraintsBundle = (ConstraintsBundle)theEObject;
                T result = this.caseConstraintsBundle(constraintsBundle);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                UnparsedConstraint unparsedConstraint = (UnparsedConstraint)theEObject;
                T result = this.caseUnparsedConstraint(unparsedConstraint);
                if (result == null) {
                    result = this.caseConstraint(unparsedConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                OclConstraint oclConstraint = (OclConstraint)theEObject;
                T result = this.caseOclConstraint(oclConstraint);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                Parser parser = (Parser)theEObject;
                T result = this.caseParser(parser);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                TraversalStrategy traversalStrategy = (TraversalStrategy)theEObject;
                T result = this.caseTraversalStrategy(traversalStrategy);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                ConstraintBindingsBundle constraintBindingsBundle = (ConstraintBindingsBundle)theEObject;
                T result = this.caseConstraintBindingsBundle(constraintBindingsBundle);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                ClientContext clientContext = (ClientContext)theEObject;
                T result = this.caseClientContext(clientContext);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                Binding binding = (Binding)theEObject;
                T result = this.caseBinding(binding);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                Enablement enablement = (Enablement)theEObject;
                T result = this.caseEnablement(enablement);
                if (result == null) {
                    result = this.caseClientContext(enablement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                Selector selector = (Selector)theEObject;
                T result = this.caseSelector(selector);
                if (result == null) {
                    result = this.caseClientContext(selector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCategory(Category object) {
        return null;
    }

    public T caseConstraintProvider(ConstraintProvider object) {
        return null;
    }

    public T caseTarget(Target object) {
        return null;
    }

    public T caseEvent(Event object) {
        return null;
    }

    public T caseCustomEvent(CustomEvent object) {
        return null;
    }

    public T caseFeature(Feature object) {
        return null;
    }

    public T caseConstraint(Constraint object) {
        return null;
    }

    public T caseParameter(Map.Entry<String, String> object) {
        return null;
    }

    public T caseConstraints(Constraints object) {
        return null;
    }

    public T caseConstraintsBundle(ConstraintsBundle object) {
        return null;
    }

    public T caseUnparsedConstraint(UnparsedConstraint object) {
        return null;
    }

    public T caseOclConstraint(OclConstraint object) {
        return null;
    }

    public T caseParser(Parser object) {
        return null;
    }

    public T caseTraversalStrategy(TraversalStrategy object) {
        return null;
    }

    public T caseConstraintBindingsBundle(ConstraintBindingsBundle object) {
        return null;
    }

    public T caseClientContext(ClientContext object) {
        return null;
    }

    public T caseBinding(Binding object) {
        return null;
    }

    public T caseEnablement(Enablement object) {
        return null;
    }

    public T caseSelector(Selector object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

