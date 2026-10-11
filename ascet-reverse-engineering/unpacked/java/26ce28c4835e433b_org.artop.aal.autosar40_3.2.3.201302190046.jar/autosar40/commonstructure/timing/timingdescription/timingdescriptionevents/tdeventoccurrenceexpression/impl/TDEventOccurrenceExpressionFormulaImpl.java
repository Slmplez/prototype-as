/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.formulalanguage.impl.FormulaExpressionImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TDEventOccurrenceExpressionFormulaImpl
extends FormulaExpressionImpl
implements TDEventOccurrenceExpressionFormula {
    protected TDEventOccurrenceExpressionFormulaImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA;
    }

    @Override
    public TDEventOccurrenceExpression getTDEventOccurrenceExpression() {
        return (TDEventOccurrenceExpression)this.getMixed().get((EStructuralFeature)TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__TD_EVENT_OCCURRENCE_EXPRESSION, true);
    }

    @Override
    public void setTDEventOccurrenceExpression(TDEventOccurrenceExpression newTDEventOccurrenceExpression) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__TD_EVENT_OCCURRENCE_EXPRESSION, (Object)newTDEventOccurrenceExpression);
    }

    @Override
    public EList<AutosarOperationArgumentInstance> getArguments() {
        return this.getMixed().list((EStructuralFeature)TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__ARGUMENTS);
    }

    @Override
    public EList<TimingDescriptionEvent> getEvents() {
        return this.getMixed().list((EStructuralFeature)TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__EVENTS);
    }

    @Override
    public EList<AutosarVariableInstance> getVariables() {
        return this.getMixed().list((EStructuralFeature)TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION_FORMULA__VARIABLES);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, TDEventOccurrenceExpression.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getTDEventOccurrenceExpression();
            }
            case 6: {
                return this.getArguments();
            }
            case 7: {
                return this.getEvents();
            }
            case 8: {
                return this.getVariables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setTDEventOccurrenceExpression((TDEventOccurrenceExpression)newValue);
                return;
            }
            case 6: {
                this.getArguments().clear();
                this.getArguments().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getEvents().clear();
                this.getEvents().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getVariables().clear();
                this.getVariables().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setTDEventOccurrenceExpression(null);
                return;
            }
            case 6: {
                this.getArguments().clear();
                return;
            }
            case 7: {
                this.getEvents().clear();
                return;
            }
            case 8: {
                this.getVariables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getTDEventOccurrenceExpression() != null;
            }
            case 6: {
                return !this.getArguments().isEmpty();
            }
            case 7: {
                return !this.getEvents().isEmpty();
            }
            case 8: {
                return !this.getVariables().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

