/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.impl;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TDEventOccurrenceExpressionImpl
extends ARObjectImpl
implements TDEventOccurrenceExpression {
    protected EList<AutosarOperationArgumentInstance> arguments;
    protected TDEventOccurrenceExpressionFormula formula;
    protected EList<AutosarVariableInstance> variables;

    protected TDEventOccurrenceExpressionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TdeventoccurrenceexpressionPackage.Literals.TD_EVENT_OCCURRENCE_EXPRESSION;
    }

    @Override
    public TimingDescriptionEvent getTimingDescriptionEvent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TimingDescriptionEvent)this.eContainer();
    }

    public NotificationChain basicSetTimingDescriptionEvent(TimingDescriptionEvent newTimingDescriptionEvent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTimingDescriptionEvent, 4, msgs);
        return msgs;
    }

    @Override
    public void setTimingDescriptionEvent(TimingDescriptionEvent newTimingDescriptionEvent) {
        if (newTimingDescriptionEvent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTimingDescriptionEvent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTimingDescriptionEvent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTimingDescriptionEvent != null) {
                msgs = ((InternalEObject)newTimingDescriptionEvent).eInverseAdd((InternalEObject)this, 20, TimingDescriptionEvent.class, msgs);
            }
            if ((msgs = this.basicSetTimingDescriptionEvent(newTimingDescriptionEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTimingDescriptionEvent, (Object)newTimingDescriptionEvent));
        }
    }

    @Override
    public EList<AutosarOperationArgumentInstance> getArguments() {
        if (this.arguments == null) {
            this.arguments = new EObjectContainmentWithInverseEList(AutosarOperationArgumentInstance.class, (InternalEObject)this, 5, 18);
        }
        return this.arguments;
    }

    @Override
    public TDEventOccurrenceExpressionFormula getFormula() {
        return this.formula;
    }

    public NotificationChain basicSetFormula(TDEventOccurrenceExpressionFormula newFormula, NotificationChain msgs) {
        TDEventOccurrenceExpressionFormula oldFormula = this.formula;
        this.formula = newFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFormula, (Object)newFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFormula(TDEventOccurrenceExpressionFormula newFormula) {
        if (newFormula != this.formula) {
            NotificationChain msgs = null;
            if (this.formula != null) {
                msgs = ((InternalEObject)this.formula).eInverseRemove((InternalEObject)this, 5, TDEventOccurrenceExpressionFormula.class, msgs);
            }
            if (newFormula != null) {
                msgs = ((InternalEObject)newFormula).eInverseAdd((InternalEObject)this, 5, TDEventOccurrenceExpressionFormula.class, msgs);
            }
            if ((msgs = this.basicSetFormula(newFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newFormula, (Object)newFormula));
        }
    }

    @Override
    public EList<AutosarVariableInstance> getVariables() {
        if (this.variables == null) {
            this.variables = new EObjectContainmentWithInverseEList(AutosarVariableInstance.class, (InternalEObject)this, 7, 18);
        }
        return this.variables;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTimingDescriptionEvent((TimingDescriptionEvent)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getArguments()).basicAdd((Object)otherEnd, msgs);
            }
            case 6: {
                if (this.formula != null) {
                    msgs = ((InternalEObject)this.formula).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetFormula((TDEventOccurrenceExpressionFormula)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVariables()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTimingDescriptionEvent(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getArguments()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return this.basicSetFormula(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVariables()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, TimingDescriptionEvent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTimingDescriptionEvent();
            }
            case 5: {
                return this.getArguments();
            }
            case 6: {
                return this.getFormula();
            }
            case 7: {
                return this.getVariables();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTimingDescriptionEvent((TimingDescriptionEvent)newValue);
                return;
            }
            case 5: {
                this.getArguments().clear();
                this.getArguments().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setFormula((TDEventOccurrenceExpressionFormula)newValue);
                return;
            }
            case 7: {
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
            case 4: {
                this.setTimingDescriptionEvent(null);
                return;
            }
            case 5: {
                this.getArguments().clear();
                return;
            }
            case 6: {
                this.setFormula(null);
                return;
            }
            case 7: {
                this.getVariables().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTimingDescriptionEvent() != null;
            }
            case 5: {
                return this.arguments != null && !this.arguments.isEmpty();
            }
            case 6: {
                return this.formula != null;
            }
            case 7: {
                return this.variables != null && !this.variables.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

