/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import autosar3x.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IPduGroupImpl
extends FibexElementImpl
implements IPduGroup,
IReferringClass {
    protected static final CommunicationDirectionType COMMUNICATION_DIRECTION_EDEFAULT = CommunicationDirectionType.IN;
    protected CommunicationDirectionType communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
    protected boolean communicationDirectionESet;
    protected static final String COMMUNICATION_MODE_EDEFAULT = "";
    protected String communicationMode = "";
    protected boolean communicationModeESet;
    protected EList<IPduGroup> containedIPduGroups;
    protected EList<SignalIPdu> iPdus;

    protected IPduGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU_GROUP;
    }

    @Override
    public CommunicationDirectionType getCommunicationDirection() {
        return this.communicationDirection;
    }

    @Override
    public void setCommunicationDirection(CommunicationDirectionType newCommunicationDirection) {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        this.communicationDirection = newCommunicationDirection == null ? COMMUNICATION_DIRECTION_EDEFAULT : newCommunicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCommunicationDirection, (Object)this.communicationDirection, !oldCommunicationDirectionESet));
        }
    }

    @Override
    public void unsetCommunicationDirection() {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
        this.communicationDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCommunicationDirection, (Object)COMMUNICATION_DIRECTION_EDEFAULT, oldCommunicationDirectionESet));
        }
    }

    @Override
    public boolean isSetCommunicationDirection() {
        return this.communicationDirectionESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldCommunicationMode, (Object)this.communicationMode, !oldCommunicationModeESet));
        }
    }

    @Override
    public void unsetCommunicationMode() {
        String oldCommunicationMode = this.communicationMode;
        boolean oldCommunicationModeESet = this.communicationModeESet;
        this.communicationMode = COMMUNICATION_MODE_EDEFAULT;
        this.communicationModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldCommunicationMode, (Object)COMMUNICATION_MODE_EDEFAULT, oldCommunicationModeESet));
        }
    }

    @Override
    public boolean isSetCommunicationMode() {
        return this.communicationModeESet;
    }

    @Override
    public EList<IPduGroup> getContainedIPduGroups() {
        if (this.containedIPduGroups == null) {
            this.containedIPduGroups = new EObjectResolvingReferringEList(IPduGroup.class, (InternalEObject)this, 21);
        }
        return this.containedIPduGroups;
    }

    @Override
    public EList<SignalIPdu> getIPdus() {
        if (this.iPdus == null) {
            this.iPdus = new EObjectResolvingReferringEList(SignalIPdu.class, (InternalEObject)this, 22);
        }
        return this.iPdus;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCommunicationDirection();
            }
            case 20: {
                return this.getCommunicationMode();
            }
            case 21: {
                return this.getContainedIPduGroups();
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
            case 19: {
                this.setCommunicationDirection((CommunicationDirectionType)((Object)newValue));
                return;
            }
            case 20: {
                this.setCommunicationMode((String)newValue);
                return;
            }
            case 21: {
                this.getContainedIPduGroups().clear();
                this.getContainedIPduGroups().addAll((Collection)newValue);
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
            case 19: {
                this.unsetCommunicationDirection();
                return;
            }
            case 20: {
                this.unsetCommunicationMode();
                return;
            }
            case 21: {
                this.getContainedIPduGroups().clear();
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
            case 19: {
                return this.isSetCommunicationDirection();
            }
            case 20: {
                return this.isSetCommunicationMode();
            }
            case 21: {
                return this.containedIPduGroups != null && !this.containedIPduGroups.isEmpty();
            }
            case 22: {
                return this.iPdus != null && !this.iPdus.isEmpty();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (communicationDirection: ");
        if (this.communicationDirectionESet) {
            result.append((Object)this.communicationDirection);
        } else {
            result.append("<unset>");
        }
        result.append(", communicationMode: ");
        if (this.communicationModeESet) {
            result.append(this.communicationMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

