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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl;

import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TDEventVfbImpl
extends TimingDescriptionEventImpl
implements TDEventVfb,
IReferringClass {
    protected ComponentInCompositionInstanceRef component;
    protected static final Boolean IS_EXTERNAL_EDEFAULT = Boolean.FALSE;
    protected Boolean isExternal = IS_EXTERNAL_EDEFAULT;
    protected boolean isExternalESet;
    protected PortPrototype port;

    protected TDEventVfbImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventvfbPackage.Literals.TD_EVENT_VFB;
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

    public Boolean getIsExternal() {
        return this.isExternal;
    }

    public void setIsExternal(Boolean newIsExternal) {
        Boolean oldIsExternal = this.isExternal;
        this.isExternal = newIsExternal;
        boolean oldIsExternalESet = this.isExternalESet;
        this.isExternalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldIsExternal, (Object)this.isExternal, !oldIsExternalESet));
        }
    }

    public void unsetIsExternal() {
        Boolean oldIsExternal = this.isExternal;
        boolean oldIsExternalESet = this.isExternalESet;
        this.isExternal = IS_EXTERNAL_EDEFAULT;
        this.isExternalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldIsExternal, (Object)IS_EXTERNAL_EDEFAULT, oldIsExternalESet));
        }
    }

    public boolean isSetIsExternal() {
        return this.isExternalESet;
    }

    public PortPrototype getPort() {
        if (this.port != null && this.port.eIsProxy()) {
            InternalEObject oldPort = (InternalEObject)this.port;
            this.port = (PortPrototype)this.eResolveProxy(oldPort);
            if (this.port != oldPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldPort, (Object)this.port));
            }
        }
        return this.port;
    }

    public PortPrototype basicGetPort() {
        return this.port;
    }

    public void setPort(PortPrototype newPort) {
        PortPrototype oldPort = this.port;
        this.port = newPort;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPort, (Object)this.port));
        }
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
                return this.getIsExternal();
            }
            case 23: {
                if (resolve) {
                    return this.getPort();
                }
                return this.basicGetPort();
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
                this.setIsExternal((Boolean)newValue);
                return;
            }
            case 23: {
                this.setPort((PortPrototype)newValue);
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
                this.unsetIsExternal();
                return;
            }
            case 23: {
                this.setPort(null);
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
                return this.isSetIsExternal();
            }
            case 23: {
                return this.port != null;
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
        result.append(" (isExternal: ");
        if (this.isExternalESet) {
            result.append(this.isExternal);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

