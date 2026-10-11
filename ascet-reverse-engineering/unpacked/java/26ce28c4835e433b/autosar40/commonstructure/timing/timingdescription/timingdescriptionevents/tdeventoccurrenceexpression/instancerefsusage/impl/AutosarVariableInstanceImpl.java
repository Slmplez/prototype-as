/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.VariableInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class AutosarVariableInstanceImpl
extends IdentifiableImpl
implements AutosarVariableInstance {
    protected VariableInComponentInstanceRef variableInstance;

    protected AutosarVariableInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsusagePackage.Literals.AUTOSAR_VARIABLE_INSTANCE;
    }

    public TDEventOccurrenceExpression getTDEventOccurrenceExpression() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (TDEventOccurrenceExpression)this.eContainer();
    }

    public NotificationChain basicSetTDEventOccurrenceExpression(TDEventOccurrenceExpression newTDEventOccurrenceExpression, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTDEventOccurrenceExpression, 18, msgs);
        return msgs;
    }

    public void setTDEventOccurrenceExpression(TDEventOccurrenceExpression newTDEventOccurrenceExpression) {
        if (newTDEventOccurrenceExpression != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newTDEventOccurrenceExpression != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTDEventOccurrenceExpression)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTDEventOccurrenceExpression != null) {
                msgs = ((InternalEObject)newTDEventOccurrenceExpression).eInverseAdd((InternalEObject)this, 7, TDEventOccurrenceExpression.class, msgs);
            }
            if ((msgs = this.basicSetTDEventOccurrenceExpression(newTDEventOccurrenceExpression, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newTDEventOccurrenceExpression, (Object)newTDEventOccurrenceExpression));
        }
    }

    public VariableInComponentInstanceRef getVariableInstance() {
        return this.variableInstance;
    }

    public NotificationChain basicSetVariableInstance(VariableInComponentInstanceRef newVariableInstance, NotificationChain msgs) {
        VariableInComponentInstanceRef oldVariableInstance = this.variableInstance;
        this.variableInstance = newVariableInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldVariableInstance, (Object)newVariableInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariableInstance(VariableInComponentInstanceRef newVariableInstance) {
        if (newVariableInstance != this.variableInstance) {
            NotificationChain msgs = null;
            if (this.variableInstance != null) {
                msgs = ((InternalEObject)this.variableInstance).eInverseRemove((InternalEObject)this, 4, VariableInComponentInstanceRef.class, msgs);
            }
            if (newVariableInstance != null) {
                msgs = ((InternalEObject)newVariableInstance).eInverseAdd((InternalEObject)this, 4, VariableInComponentInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetVariableInstance(newVariableInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newVariableInstance, (Object)newVariableInstance));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTDEventOccurrenceExpression((TDEventOccurrenceExpression)otherEnd, msgs);
            }
            case 19: {
                if (this.variableInstance != null) {
                    msgs = ((InternalEObject)this.variableInstance).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetVariableInstance((VariableInComponentInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetTDEventOccurrenceExpression(null, msgs);
            }
            case 19: {
                return this.basicSetVariableInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, TDEventOccurrenceExpression.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getTDEventOccurrenceExpression();
            }
            case 19: {
                return this.getVariableInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setTDEventOccurrenceExpression((TDEventOccurrenceExpression)newValue);
                return;
            }
            case 19: {
                this.setVariableInstance((VariableInComponentInstanceRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setTDEventOccurrenceExpression(null);
                return;
            }
            case 19: {
                this.setVariableInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getTDEventOccurrenceExpression() != null;
            }
            case 19: {
                return this.variableInstance != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

