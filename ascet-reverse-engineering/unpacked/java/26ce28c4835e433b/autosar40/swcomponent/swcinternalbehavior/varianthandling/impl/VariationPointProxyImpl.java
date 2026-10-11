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
package autosar40.swcomponent.swcinternalbehavior.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.AttributeValueVariationPoint;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
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
public class VariationPointProxyImpl
extends IdentifiableImpl
implements VariationPointProxy {
    protected ConditionByFormula conditionAccess;
    protected AttributeValueVariationPoint valueAccess;

    protected VariationPointProxyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.VARIATION_POINT_PROXY;
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 18, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 46, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public ConditionByFormula getConditionAccess() {
        return this.conditionAccess;
    }

    public NotificationChain basicSetConditionAccess(ConditionByFormula newConditionAccess, NotificationChain msgs) {
        ConditionByFormula oldConditionAccess = this.conditionAccess;
        this.conditionAccess = newConditionAccess;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldConditionAccess, (Object)newConditionAccess);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConditionAccess(ConditionByFormula newConditionAccess) {
        if (newConditionAccess != this.conditionAccess) {
            NotificationChain msgs = null;
            if (this.conditionAccess != null) {
                msgs = ((InternalEObject)this.conditionAccess).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newConditionAccess != null) {
                msgs = ((InternalEObject)newConditionAccess).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetConditionAccess(newConditionAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newConditionAccess, (Object)newConditionAccess));
        }
    }

    @Override
    public AttributeValueVariationPoint getValueAccess() {
        return this.valueAccess;
    }

    public NotificationChain basicSetValueAccess(AttributeValueVariationPoint newValueAccess, NotificationChain msgs) {
        AttributeValueVariationPoint oldValueAccess = this.valueAccess;
        this.valueAccess = newValueAccess;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldValueAccess, (Object)newValueAccess);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setValueAccess(AttributeValueVariationPoint newValueAccess) {
        if (newValueAccess != this.valueAccess) {
            NotificationChain msgs = null;
            if (this.valueAccess != null) {
                msgs = ((InternalEObject)this.valueAccess).eInverseRemove((InternalEObject)this, 7, AttributeValueVariationPoint.class, msgs);
            }
            if (newValueAccess != null) {
                msgs = ((InternalEObject)newValueAccess).eInverseAdd((InternalEObject)this, 7, AttributeValueVariationPoint.class, msgs);
            }
            if ((msgs = this.basicSetValueAccess(newValueAccess, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newValueAccess, (Object)newValueAccess));
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
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
            case 20: {
                if (this.valueAccess != null) {
                    msgs = ((InternalEObject)this.valueAccess).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetValueAccess((AttributeValueVariationPoint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 19: {
                return this.basicSetConditionAccess(null, msgs);
            }
            case 20: {
                return this.basicSetValueAccess(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 46, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSwcInternalBehavior();
            }
            case 19: {
                return this.getConditionAccess();
            }
            case 20: {
                return this.getValueAccess();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 19: {
                this.setConditionAccess((ConditionByFormula)newValue);
                return;
            }
            case 20: {
                this.setValueAccess((AttributeValueVariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 19: {
                this.setConditionAccess(null);
                return;
            }
            case 20: {
                this.setValueAccess(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getSwcInternalBehavior() != null;
            }
            case 19: {
                return this.conditionAccess != null;
            }
            case 20: {
                return this.valueAccess != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

