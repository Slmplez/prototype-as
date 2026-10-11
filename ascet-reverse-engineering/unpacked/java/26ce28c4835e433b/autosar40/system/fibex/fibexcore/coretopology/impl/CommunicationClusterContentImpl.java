/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class CommunicationClusterContentImpl
extends ARObjectImpl
implements CommunicationClusterContent {
    protected EList<PhysicalChannel> physicalChannels;
    protected static final String PROTOCOL_NAME_EDEFAULT = "";
    protected String protocolName = "";
    protected boolean protocolNameESet;
    protected static final String PROTOCOL_VERSION_EDEFAULT = "";
    protected String protocolVersion = "";
    protected boolean protocolVersionESet;
    protected static final IntegerDatatype SPEED_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype speed = SPEED_EDEFAULT.clone();
    protected boolean speedESet;

    protected CommunicationClusterContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CLUSTER_CONTENT;
    }

    @Override
    public EList<PhysicalChannel> getPhysicalChannels() {
        if (this.physicalChannels == null) {
            this.physicalChannels = new EObjectContainmentWithInverseEList(PhysicalChannel.class, (InternalEObject)this, 4, 18);
        }
        return this.physicalChannels;
    }

    @Override
    public String getProtocolName() {
        return this.protocolName;
    }

    @Override
    public void setProtocolName(String newProtocolName) {
        String oldProtocolName = this.protocolName;
        this.protocolName = newProtocolName;
        boolean oldProtocolNameESet = this.protocolNameESet;
        this.protocolNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldProtocolName, (Object)this.protocolName, !oldProtocolNameESet));
        }
    }

    @Override
    public void unsetProtocolName() {
        String oldProtocolName = this.protocolName;
        boolean oldProtocolNameESet = this.protocolNameESet;
        this.protocolName = "";
        this.protocolNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldProtocolName, (Object)"", oldProtocolNameESet));
        }
    }

    @Override
    public boolean isSetProtocolName() {
        return this.protocolNameESet;
    }

    @Override
    public String getProtocolVersion() {
        return this.protocolVersion;
    }

    @Override
    public void setProtocolVersion(String newProtocolVersion) {
        String oldProtocolVersion = this.protocolVersion;
        this.protocolVersion = newProtocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    @Override
    public void unsetProtocolVersion() {
        String oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = "";
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldProtocolVersion, (Object)"", oldProtocolVersionESet));
        }
    }

    @Override
    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    @Override
    public Integer getSpeed() {
        return (Integer)this.speed.basicGetValue();
    }

    @Override
    public void setSpeed(Integer newSpeed) {
        Integer oldSpeed = (Integer)this.speed.basicGetValue();
        this.speed.basicSetValue((Object)newSpeed);
        boolean oldSpeedESet = this.speedESet;
        this.speedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSpeed, (Object)newSpeed, !oldSpeedESet));
        }
    }

    @Override
    public void unsetSpeed() {
        Integer oldSpeed = (Integer)this.speed.basicGetValue();
        boolean oldSpeedESet = this.speedESet;
        this.speed = SPEED_EDEFAULT.clone();
        this.speedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSpeed, (Object)SPEED_EDEFAULT, oldSpeedESet));
        }
    }

    @Override
    public boolean isSetSpeed() {
        return this.speedESet;
    }

    @Override
    public IntegerDatatype getSpeedData() {
        return this.speed.clone();
    }

    @Override
    public void setSpeedData(IntegerDatatype newSpeed) {
        this.speed.setRadix((int)newSpeed.getRadix());
        this.speed.setNoOfDigits((int)newSpeed.getNoOfDigits());
        this.setSpeed(newSpeed.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getPhysicalChannels()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getPhysicalChannels()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPhysicalChannels();
            }
            case 5: {
                return this.getProtocolName();
            }
            case 6: {
                return this.getProtocolVersion();
            }
            case 7: {
                return this.getSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getPhysicalChannels().clear();
                this.getPhysicalChannels().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.setProtocolName((String)newValue);
                return;
            }
            case 6: {
                this.setProtocolVersion((String)newValue);
                return;
            }
            case 7: {
                this.setSpeed((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getPhysicalChannels().clear();
                return;
            }
            case 5: {
                this.unsetProtocolName();
                return;
            }
            case 6: {
                this.unsetProtocolVersion();
                return;
            }
            case 7: {
                this.unsetSpeed();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.physicalChannels != null && !this.physicalChannels.isEmpty();
            }
            case 5: {
                return this.isSetProtocolName();
            }
            case 6: {
                return this.isSetProtocolVersion();
            }
            case 7: {
                return this.isSetSpeed();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (protocolName: ");
        if (this.protocolNameESet) {
            result.append(this.protocolName);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolVersion: ");
        if (this.protocolVersionESet) {
            result.append(this.protocolVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", speed: ");
        if (this.speedESet) {
            result.append(this.speed);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

