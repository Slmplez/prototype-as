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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.endtoendprotection.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EndToEndProtectionDataElementPrototypeImpl
extends ARObjectImpl
implements EndToEndProtectionDataElementPrototype {
    protected EList<EndToEndProtectionDataElementPrototype_dataElement> receivers;
    protected EndToEndProtectionDataElementPrototype_dataElement sender;

    protected EndToEndProtectionDataElementPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EndtoendprotectionPackage.Literals.END_TO_END_PROTECTION_DATA_ELEMENT_PROTOTYPE;
    }

    @Override
    public EndToEndProtection getEndToEndProtection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EndToEndProtection)this.eContainer();
    }

    public NotificationChain basicSetEndToEndProtection(EndToEndProtection newEndToEndProtection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEndToEndProtection, 4, msgs);
        return msgs;
    }

    @Override
    public void setEndToEndProtection(EndToEndProtection newEndToEndProtection) {
        if (newEndToEndProtection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEndToEndProtection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEndToEndProtection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEndToEndProtection != null) {
                msgs = ((InternalEObject)newEndToEndProtection).eInverseAdd((InternalEObject)this, 19, EndToEndProtection.class, msgs);
            }
            if ((msgs = this.basicSetEndToEndProtection(newEndToEndProtection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEndToEndProtection, (Object)newEndToEndProtection));
        }
    }

    @Override
    public EList<EndToEndProtectionDataElementPrototype_dataElement> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectContainmentEList(EndToEndProtectionDataElementPrototype_dataElement.class, (InternalEObject)this, 5);
        }
        return this.receivers;
    }

    @Override
    public EndToEndProtectionDataElementPrototype_dataElement getSender() {
        return this.sender;
    }

    public NotificationChain basicSetSender(EndToEndProtectionDataElementPrototype_dataElement newSender, NotificationChain msgs) {
        EndToEndProtectionDataElementPrototype_dataElement oldSender = this.sender;
        this.sender = newSender;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSender, (Object)newSender);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSender(EndToEndProtectionDataElementPrototype_dataElement newSender) {
        if (newSender != this.sender) {
            NotificationChain msgs = null;
            if (this.sender != null) {
                msgs = ((InternalEObject)this.sender).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSender != null) {
                msgs = ((InternalEObject)newSender).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSender(newSender, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSender, (Object)newSender));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEndToEndProtection((EndToEndProtection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEndToEndProtection(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getReceivers()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return this.basicSetSender(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, EndToEndProtection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection();
            }
            case 5: {
                return this.getReceivers();
            }
            case 6: {
                return this.getSender();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection((EndToEndProtection)newValue);
                return;
            }
            case 5: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setSender((EndToEndProtectionDataElementPrototype_dataElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEndToEndProtection(null);
                return;
            }
            case 5: {
                this.getReceivers().clear();
                return;
            }
            case 6: {
                this.setSender(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEndToEndProtection() != null;
            }
            case 5: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 6: {
                return this.sender != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

