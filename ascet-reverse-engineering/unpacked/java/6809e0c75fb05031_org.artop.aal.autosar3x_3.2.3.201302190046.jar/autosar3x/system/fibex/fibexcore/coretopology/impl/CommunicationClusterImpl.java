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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
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
public class CommunicationClusterImpl
extends FibexElementImpl
implements CommunicationCluster {
    protected static final Integer MAX_FRAME_LENGTH_EDEFAULT = new Integer(0);
    protected Integer maxFrameLength = MAX_FRAME_LENGTH_EDEFAULT;
    protected boolean maxFrameLengthESet;
    protected static final Boolean NM_NODE_DETECTION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
    protected boolean nmNodeDetectionEnabledESet;
    protected static final Boolean NM_NODE_ID_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmNodeIdEnabled = NM_NODE_ID_ENABLED_EDEFAULT;
    protected boolean nmNodeIdEnabledESet;
    protected static final Boolean NM_REPEAT_MESSAGE_SUPPORT_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRepeatMessageSupport = NM_REPEAT_MESSAGE_SUPPORT_EDEFAULT;
    protected boolean nmRepeatMessageSupportESet;
    protected EList<PhysicalChannel> physicalChannels;
    protected static final String PROTOCOL_NAME_EDEFAULT = "";
    protected String protocolName = "";
    protected boolean protocolNameESet;
    protected static final String PROTOCOL_VERSION_EDEFAULT = "";
    protected String protocolVersion = "";
    protected boolean protocolVersionESet;
    protected static final Integer SPEED_EDEFAULT = new Integer(0);
    protected Integer speed = SPEED_EDEFAULT;
    protected boolean speedESet;

    protected CommunicationClusterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CLUSTER;
    }

    @Override
    public Integer getMaxFrameLength() {
        return this.maxFrameLength;
    }

    @Override
    public void setMaxFrameLength(Integer newMaxFrameLength) {
        Integer oldMaxFrameLength = this.maxFrameLength;
        this.maxFrameLength = newMaxFrameLength;
        boolean oldMaxFrameLengthESet = this.maxFrameLengthESet;
        this.maxFrameLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldMaxFrameLength, (Object)this.maxFrameLength, !oldMaxFrameLengthESet));
        }
    }

    @Override
    public void unsetMaxFrameLength() {
        Integer oldMaxFrameLength = this.maxFrameLength;
        boolean oldMaxFrameLengthESet = this.maxFrameLengthESet;
        this.maxFrameLength = MAX_FRAME_LENGTH_EDEFAULT;
        this.maxFrameLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldMaxFrameLength, (Object)MAX_FRAME_LENGTH_EDEFAULT, oldMaxFrameLengthESet));
        }
    }

    @Override
    public boolean isSetMaxFrameLength() {
        return this.maxFrameLengthESet;
    }

    @Override
    public Boolean getNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabled;
    }

    @Override
    public void setNmNodeDetectionEnabled(Boolean newNmNodeDetectionEnabled) {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        this.nmNodeDetectionEnabled = newNmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNmNodeDetectionEnabled, (Object)this.nmNodeDetectionEnabled, !oldNmNodeDetectionEnabledESet));
        }
    }

    @Override
    public void unsetNmNodeDetectionEnabled() {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
        this.nmNodeDetectionEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldNmNodeDetectionEnabled, (Object)NM_NODE_DETECTION_ENABLED_EDEFAULT, oldNmNodeDetectionEnabledESet));
        }
    }

    @Override
    public boolean isSetNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabledESet;
    }

    @Override
    public Boolean getNmNodeIdEnabled() {
        return this.nmNodeIdEnabled;
    }

    @Override
    public void setNmNodeIdEnabled(Boolean newNmNodeIdEnabled) {
        Boolean oldNmNodeIdEnabled = this.nmNodeIdEnabled;
        this.nmNodeIdEnabled = newNmNodeIdEnabled;
        boolean oldNmNodeIdEnabledESet = this.nmNodeIdEnabledESet;
        this.nmNodeIdEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmNodeIdEnabled, (Object)this.nmNodeIdEnabled, !oldNmNodeIdEnabledESet));
        }
    }

    @Override
    public void unsetNmNodeIdEnabled() {
        Boolean oldNmNodeIdEnabled = this.nmNodeIdEnabled;
        boolean oldNmNodeIdEnabledESet = this.nmNodeIdEnabledESet;
        this.nmNodeIdEnabled = NM_NODE_ID_ENABLED_EDEFAULT;
        this.nmNodeIdEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmNodeIdEnabled, (Object)NM_NODE_ID_ENABLED_EDEFAULT, oldNmNodeIdEnabledESet));
        }
    }

    @Override
    public boolean isSetNmNodeIdEnabled() {
        return this.nmNodeIdEnabledESet;
    }

    @Override
    public Boolean getNmRepeatMessageSupport() {
        return this.nmRepeatMessageSupport;
    }

    @Override
    public void setNmRepeatMessageSupport(Boolean newNmRepeatMessageSupport) {
        Boolean oldNmRepeatMessageSupport = this.nmRepeatMessageSupport;
        this.nmRepeatMessageSupport = newNmRepeatMessageSupport;
        boolean oldNmRepeatMessageSupportESet = this.nmRepeatMessageSupportESet;
        this.nmRepeatMessageSupportESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNmRepeatMessageSupport, (Object)this.nmRepeatMessageSupport, !oldNmRepeatMessageSupportESet));
        }
    }

    @Override
    public void unsetNmRepeatMessageSupport() {
        Boolean oldNmRepeatMessageSupport = this.nmRepeatMessageSupport;
        boolean oldNmRepeatMessageSupportESet = this.nmRepeatMessageSupportESet;
        this.nmRepeatMessageSupport = NM_REPEAT_MESSAGE_SUPPORT_EDEFAULT;
        this.nmRepeatMessageSupportESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNmRepeatMessageSupport, (Object)NM_REPEAT_MESSAGE_SUPPORT_EDEFAULT, oldNmRepeatMessageSupportESet));
        }
    }

    @Override
    public boolean isSetNmRepeatMessageSupport() {
        return this.nmRepeatMessageSupportESet;
    }

    @Override
    public EList<PhysicalChannel> getPhysicalChannels() {
        if (this.physicalChannels == null) {
            this.physicalChannels = new EObjectContainmentWithInverseEList(PhysicalChannel.class, (InternalEObject)this, 23, 17);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldProtocolName, (Object)this.protocolName, !oldProtocolNameESet));
        }
    }

    @Override
    public void unsetProtocolName() {
        String oldProtocolName = this.protocolName;
        boolean oldProtocolNameESet = this.protocolNameESet;
        this.protocolName = "";
        this.protocolNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldProtocolName, (Object)"", oldProtocolNameESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldProtocolVersion, (Object)this.protocolVersion, !oldProtocolVersionESet));
        }
    }

    @Override
    public void unsetProtocolVersion() {
        String oldProtocolVersion = this.protocolVersion;
        boolean oldProtocolVersionESet = this.protocolVersionESet;
        this.protocolVersion = "";
        this.protocolVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldProtocolVersion, (Object)"", oldProtocolVersionESet));
        }
    }

    @Override
    public boolean isSetProtocolVersion() {
        return this.protocolVersionESet;
    }

    @Override
    public Integer getSpeed() {
        return this.speed;
    }

    @Override
    public void setSpeed(Integer newSpeed) {
        Integer oldSpeed = this.speed;
        this.speed = newSpeed;
        boolean oldSpeedESet = this.speedESet;
        this.speedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSpeed, (Object)this.speed, !oldSpeedESet));
        }
    }

    @Override
    public void unsetSpeed() {
        Integer oldSpeed = this.speed;
        boolean oldSpeedESet = this.speedESet;
        this.speed = SPEED_EDEFAULT;
        this.speedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldSpeed, (Object)SPEED_EDEFAULT, oldSpeedESet));
        }
    }

    @Override
    public boolean isSetSpeed() {
        return this.speedESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getPhysicalChannels()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getPhysicalChannels()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getMaxFrameLength();
            }
            case 20: {
                return this.getNmNodeDetectionEnabled();
            }
            case 21: {
                return this.getNmNodeIdEnabled();
            }
            case 22: {
                return this.getNmRepeatMessageSupport();
            }
            case 23: {
                return this.getPhysicalChannels();
            }
            case 24: {
                return this.getProtocolName();
            }
            case 25: {
                return this.getProtocolVersion();
            }
            case 26: {
                return this.getSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setMaxFrameLength((Integer)newValue);
                return;
            }
            case 20: {
                this.setNmNodeDetectionEnabled((Boolean)newValue);
                return;
            }
            case 21: {
                this.setNmNodeIdEnabled((Boolean)newValue);
                return;
            }
            case 22: {
                this.setNmRepeatMessageSupport((Boolean)newValue);
                return;
            }
            case 23: {
                this.getPhysicalChannels().clear();
                this.getPhysicalChannels().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setProtocolName((String)newValue);
                return;
            }
            case 25: {
                this.setProtocolVersion((String)newValue);
                return;
            }
            case 26: {
                this.setSpeed((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetMaxFrameLength();
                return;
            }
            case 20: {
                this.unsetNmNodeDetectionEnabled();
                return;
            }
            case 21: {
                this.unsetNmNodeIdEnabled();
                return;
            }
            case 22: {
                this.unsetNmRepeatMessageSupport();
                return;
            }
            case 23: {
                this.getPhysicalChannels().clear();
                return;
            }
            case 24: {
                this.unsetProtocolName();
                return;
            }
            case 25: {
                this.unsetProtocolVersion();
                return;
            }
            case 26: {
                this.unsetSpeed();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetMaxFrameLength();
            }
            case 20: {
                return this.isSetNmNodeDetectionEnabled();
            }
            case 21: {
                return this.isSetNmNodeIdEnabled();
            }
            case 22: {
                return this.isSetNmRepeatMessageSupport();
            }
            case 23: {
                return this.physicalChannels != null && !this.physicalChannels.isEmpty();
            }
            case 24: {
                return this.isSetProtocolName();
            }
            case 25: {
                return this.isSetProtocolVersion();
            }
            case 26: {
                return this.isSetSpeed();
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
        result.append(" (maxFrameLength: ");
        if (this.maxFrameLengthESet) {
            result.append(this.maxFrameLength);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNodeDetectionEnabled: ");
        if (this.nmNodeDetectionEnabledESet) {
            result.append(this.nmNodeDetectionEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNodeIdEnabled: ");
        if (this.nmNodeIdEnabledESet) {
            result.append(this.nmNodeIdEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageSupport: ");
        if (this.nmRepeatMessageSupportESet) {
            result.append(this.nmRepeatMessageSupport);
        } else {
            result.append("<unset>");
        }
        result.append(", protocolName: ");
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

