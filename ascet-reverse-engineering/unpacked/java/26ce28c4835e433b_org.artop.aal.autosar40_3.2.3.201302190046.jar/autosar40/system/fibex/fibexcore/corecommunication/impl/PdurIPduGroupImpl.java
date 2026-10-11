/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PdurIPduGroupImpl
extends FibexElementImpl
implements PdurIPduGroup {
    protected static final String COMMUNICATION_MODE_EDEFAULT = "";
    protected String communicationMode = "";
    protected boolean communicationModeESet;
    protected EList<PduTriggeringRefConditional> iPdus;

    protected PdurIPduGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.PDUR_IPDU_GROUP;
    }

    @Override
    public String getCommunicationMode() {
        return this.communicationMode;
    }

    @Override
    public void setCommunicationMode(String newCommunicationMode) {
        String oldCommunicationMode = this.communicationMode;
        this.communicationMode = newCommunicationMode;
        boolean oldCommunicationModeESet = this.communicationModeESet;
        this.communicationModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCommunicationMode, (Object)this.communicationMode, !oldCommunicationModeESet));
        }
    }

    @Override
    public void unsetCommunicationMode() {
        String oldCommunicationMode = this.communicationMode;
        boolean oldCommunicationModeESet = this.communicationModeESet;
        this.communicationMode = COMMUNICATION_MODE_EDEFAULT;
        this.communicationModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCommunicationMode, (Object)COMMUNICATION_MODE_EDEFAULT, oldCommunicationModeESet));
        }
    }

    @Override
    public boolean isSetCommunicationMode() {
        return this.communicationModeESet;
    }

    @Override
    public EList<PduTriggeringRefConditional> getIPdus() {
        if (this.iPdus == null) {
            this.iPdus = new EObjectContainmentEList(PduTriggeringRefConditional.class, (InternalEObject)this, 22);
        }
        return this.iPdus;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getIPdus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getCommunicationMode();
            }
            case 22: {
                return this.getIPdus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCommunicationMode((String)newValue);
                return;
            }
            case 22: {
                this.getIPdus().clear();
                this.getIPdus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetCommunicationMode();
                return;
            }
            case 22: {
                this.getIPdus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetCommunicationMode();
            }
            case 22: {
                return this.iPdus != null && !this.iPdus.isEmpty();
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
        result.append(" (communicationMode: ");
        if (this.communicationModeESet) {
            result.append(this.communicationMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

