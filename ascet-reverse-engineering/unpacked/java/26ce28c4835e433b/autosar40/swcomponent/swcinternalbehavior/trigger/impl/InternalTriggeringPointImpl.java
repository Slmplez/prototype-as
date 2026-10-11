/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.swcinternalbehavior.trigger.impl;

import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InternalTriggeringPointImpl
extends IdentifiableImpl
implements InternalTriggeringPoint {
    protected static final SwImplPolicyEnum SW_IMPL_POLICY_EDEFAULT = SwImplPolicyEnum.CONST;
    protected SwImplPolicyEnum swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
    protected boolean swImplPolicyESet;
    protected VariationPoint variationPoint;

    protected InternalTriggeringPointImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TriggerPackage.Literals.INTERNAL_TRIGGERING_POINT;
    }

    @Override
    public RunnableEntity getRunnableEntity() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (RunnableEntity)this.eContainer();
    }

    public NotificationChain basicSetRunnableEntity(RunnableEntity newRunnableEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRunnableEntity, 18, msgs);
        return msgs;
    }

    @Override
    public void setRunnableEntity(RunnableEntity newRunnableEntity) {
        if (newRunnableEntity != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newRunnableEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRunnableEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRunnableEntity != null) {
                msgs = ((InternalEObject)newRunnableEntity).eInverseAdd((InternalEObject)this, 44, RunnableEntity.class, msgs);
            }
            if ((msgs = this.basicSetRunnableEntity(newRunnableEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newRunnableEntity, (Object)newRunnableEntity));
        }
    }

    @Override
    public SwImplPolicyEnum getSwImplPolicy() {
        return this.swImplPolicy;
    }

    @Override
    public void setSwImplPolicy(SwImplPolicyEnum newSwImplPolicy) {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        this.swImplPolicy = newSwImplPolicy == null ? SW_IMPL_POLICY_EDEFAULT : newSwImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSwImplPolicy, (Object)this.swImplPolicy, !oldSwImplPolicyESet));
        }
    }

    @Override
    public void unsetSwImplPolicy() {
        SwImplPolicyEnum oldSwImplPolicy = this.swImplPolicy;
        boolean oldSwImplPolicyESet = this.swImplPolicyESet;
        this.swImplPolicy = SW_IMPL_POLICY_EDEFAULT;
        this.swImplPolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldSwImplPolicy, (Object)SW_IMPL_POLICY_EDEFAULT, oldSwImplPolicyESet));
        }
    }

    @Override
    public boolean isSetSwImplPolicy() {
        return this.swImplPolicyESet;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRunnableEntity((RunnableEntity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetRunnableEntity(null, msgs);
            }
            case 20: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 44, RunnableEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getRunnableEntity();
            }
            case 19: {
                return this.getSwImplPolicy();
            }
            case 20: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setRunnableEntity((RunnableEntity)newValue);
                return;
            }
            case 19: {
                this.setSwImplPolicy((SwImplPolicyEnum)((Object)newValue));
                return;
            }
            case 20: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setRunnableEntity(null);
                return;
            }
            case 19: {
                this.unsetSwImplPolicy();
                return;
            }
            case 20: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getRunnableEntity() != null;
            }
            case 19: {
                return this.isSetSwImplPolicy();
            }
            case 20: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swImplPolicy: ");
        if (this.swImplPolicyESet) {
            result.append((Object)this.swImplPolicy);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

