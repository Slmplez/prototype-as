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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibex4multiplatform.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.IPduMapping;
import autosar3x.system.fibex.fibex4multiplatform.PduMappingDefaultValue;
import autosar3x.system.fibex.fibex4multiplatform.SourceIPduRef;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SourceIPduRefImpl
extends ARObjectImpl
implements SourceIPduRef,
IReferringClass {
    protected PduMappingDefaultValue defaultValue;
    protected IPduTriggering sourceIPdu;

    protected SourceIPduRefImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.SOURCE_IPDU_REF;
    }

    public IPduMapping getIPduMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (IPduMapping)this.eContainer();
    }

    public NotificationChain basicSetIPduMapping(IPduMapping newIPduMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIPduMapping, 4, msgs);
        return msgs;
    }

    public void setIPduMapping(IPduMapping newIPduMapping) {
        if (newIPduMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIPduMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIPduMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIPduMapping != null) {
                msgs = ((InternalEObject)newIPduMapping).eInverseAdd((InternalEObject)this, 6, IPduMapping.class, msgs);
            }
            if ((msgs = this.basicSetIPduMapping(newIPduMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIPduMapping, (Object)newIPduMapping));
        }
    }

    public PduMappingDefaultValue getDefaultValue() {
        return this.defaultValue;
    }

    public NotificationChain basicSetDefaultValue(PduMappingDefaultValue newDefaultValue, NotificationChain msgs) {
        PduMappingDefaultValue oldDefaultValue = this.defaultValue;
        this.defaultValue = newDefaultValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDefaultValue, (Object)newDefaultValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDefaultValue(PduMappingDefaultValue newDefaultValue) {
        if (newDefaultValue != this.defaultValue) {
            NotificationChain msgs = null;
            if (this.defaultValue != null) {
                msgs = ((InternalEObject)this.defaultValue).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newDefaultValue != null) {
                msgs = ((InternalEObject)newDefaultValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetDefaultValue(newDefaultValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDefaultValue, (Object)newDefaultValue));
        }
    }

    public IPduTriggering getSourceIPdu() {
        if (this.sourceIPdu != null && this.sourceIPdu.eIsProxy()) {
            InternalEObject oldSourceIPdu = (InternalEObject)this.sourceIPdu;
            this.sourceIPdu = (IPduTriggering)this.eResolveProxy(oldSourceIPdu);
            if (this.sourceIPdu != oldSourceIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSourceIPdu, (Object)this.sourceIPdu));
            }
        }
        return this.sourceIPdu;
    }

    public IPduTriggering basicGetSourceIPdu() {
        return this.sourceIPdu;
    }

    public void setSourceIPdu(IPduTriggering newSourceIPdu) {
        IPduTriggering oldSourceIPdu = this.sourceIPdu;
        this.sourceIPdu = newSourceIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSourceIPdu, (Object)this.sourceIPdu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIPduMapping((IPduMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIPduMapping(null, msgs);
            }
            case 5: {
                return this.basicSetDefaultValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, IPduMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIPduMapping();
            }
            case 5: {
                return this.getDefaultValue();
            }
            case 6: {
                if (resolve) {
                    return this.getSourceIPdu();
                }
                return this.basicGetSourceIPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIPduMapping((IPduMapping)newValue);
                return;
            }
            case 5: {
                this.setDefaultValue((PduMappingDefaultValue)newValue);
                return;
            }
            case 6: {
                this.setSourceIPdu((IPduTriggering)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIPduMapping(null);
                return;
            }
            case 5: {
                this.setDefaultValue(null);
                return;
            }
            case 6: {
                this.setSourceIPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIPduMapping() != null;
            }
            case 5: {
                return this.defaultValue != null;
            }
            case 6: {
                return this.sourceIPdu != null;
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
}

