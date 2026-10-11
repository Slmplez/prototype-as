/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.impl;

import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehaviorTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventSwcInternalBehaviorImpl
extends TimingDescriptionEventImpl
implements TDEventSwcInternalBehavior,
IReferringClass {
    protected ComponentInCompositionInstanceRef component;
    protected RunnableEntity runnable;
    protected static final TDEventSwcInternalBehaviorTypeEnum TD_EVENT_SWC_INTERNAL_BEHAVIOR_TYPE_EDEFAULT = TDEventSwcInternalBehaviorTypeEnum.RUNNABLE_ENTITY_ACTIVATED;
    protected TDEventSwcInternalBehaviorTypeEnum tdEventSwcInternalBehaviorType = TD_EVENT_SWC_INTERNAL_BEHAVIOR_TYPE_EDEFAULT;
    protected boolean tdEventSwcInternalBehaviorTypeESet;

    protected TDEventSwcInternalBehaviorImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventswcinternalbehaviorPackage.Literals.TD_EVENT_SWC_INTERNAL_BEHAVIOR;
    }

    public ComponentInCompositionInstanceRef getComponent() {
        return this.component;
    }

    public NotificationChain basicSetComponent(ComponentInCompositionInstanceRef newComponent, NotificationChain msgs) {
        ComponentInCompositionInstanceRef oldComponent = this.component;
        this.component = newComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldComponent, (Object)newComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setComponent(ComponentInCompositionInstanceRef newComponent) {
        if (newComponent != this.component) {
            NotificationChain msgs = null;
            if (this.component != null) {
                msgs = ((InternalEObject)this.component).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newComponent != null) {
                msgs = ((InternalEObject)newComponent).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetComponent(newComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newComponent, (Object)newComponent));
        }
    }

    public RunnableEntity getRunnable() {
        if (this.runnable != null && this.runnable.eIsProxy()) {
            InternalEObject oldRunnable = (InternalEObject)this.runnable;
            this.runnable = (RunnableEntity)this.eResolveProxy(oldRunnable);
            if (this.runnable != oldRunnable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldRunnable, (Object)this.runnable));
            }
        }
        return this.runnable;
    }

    public RunnableEntity basicGetRunnable() {
        return this.runnable;
    }

    public void setRunnable(RunnableEntity newRunnable) {
        RunnableEntity oldRunnable = this.runnable;
        this.runnable = newRunnable;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldRunnable, (Object)this.runnable));
        }
    }

    public TDEventSwcInternalBehaviorTypeEnum getTdEventSwcInternalBehaviorType() {
        return this.tdEventSwcInternalBehaviorType;
    }

    public void setTdEventSwcInternalBehaviorType(TDEventSwcInternalBehaviorTypeEnum newTdEventSwcInternalBehaviorType) {
        TDEventSwcInternalBehaviorTypeEnum oldTdEventSwcInternalBehaviorType = this.tdEventSwcInternalBehaviorType;
        this.tdEventSwcInternalBehaviorType = newTdEventSwcInternalBehaviorType == null ? TD_EVENT_SWC_INTERNAL_BEHAVIOR_TYPE_EDEFAULT : newTdEventSwcInternalBehaviorType;
        boolean oldTdEventSwcInternalBehaviorTypeESet = this.tdEventSwcInternalBehaviorTypeESet;
        this.tdEventSwcInternalBehaviorTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTdEventSwcInternalBehaviorType, (Object)this.tdEventSwcInternalBehaviorType, !oldTdEventSwcInternalBehaviorTypeESet));
        }
    }

    public void unsetTdEventSwcInternalBehaviorType() {
        TDEventSwcInternalBehaviorTypeEnum oldTdEventSwcInternalBehaviorType = this.tdEventSwcInternalBehaviorType;
        boolean oldTdEventSwcInternalBehaviorTypeESet = this.tdEventSwcInternalBehaviorTypeESet;
        this.tdEventSwcInternalBehaviorType = TD_EVENT_SWC_INTERNAL_BEHAVIOR_TYPE_EDEFAULT;
        this.tdEventSwcInternalBehaviorTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldTdEventSwcInternalBehaviorType, (Object)TD_EVENT_SWC_INTERNAL_BEHAVIOR_TYPE_EDEFAULT, oldTdEventSwcInternalBehaviorTypeESet));
        }
    }

    public boolean isSetTdEventSwcInternalBehaviorType() {
        return this.tdEventSwcInternalBehaviorTypeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetComponent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getComponent();
            }
            case 22: {
                if (resolve) {
                    return this.getRunnable();
                }
                return this.basicGetRunnable();
            }
            case 23: {
                return this.getTdEventSwcInternalBehaviorType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setComponent((ComponentInCompositionInstanceRef)newValue);
                return;
            }
            case 22: {
                this.setRunnable((RunnableEntity)newValue);
                return;
            }
            case 23: {
                this.setTdEventSwcInternalBehaviorType((TDEventSwcInternalBehaviorTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setComponent(null);
                return;
            }
            case 22: {
                this.setRunnable(null);
                return;
            }
            case 23: {
                this.unsetTdEventSwcInternalBehaviorType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.component != null;
            }
            case 22: {
                return this.runnable != null;
            }
            case 23: {
                return this.isSetTdEventSwcInternalBehaviorType();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (tdEventSwcInternalBehaviorType: ");
        if (this.tdEventSwcInternalBehaviorTypeESet) {
            result.append((Object)this.tdEventSwcInternalBehaviorType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

