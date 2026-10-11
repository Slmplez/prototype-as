/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.topology.Connector;
import autosar21.system.topology.Hub;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.PhysicalMediumSegmentPhysicalMediumTypeEnum;
import autosar21.system.topology.TopologyPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PhysicalMediumSegmentImpl
extends ARObjectImpl
implements PhysicalMediumSegment,
IReferringClass {
    protected EList<Connector> connectedEcus;
    protected EList<Hub> connectedHubs;
    protected static final Integer PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT = new Integer(0);
    protected Integer physicalMediumDataLines = PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT;
    protected boolean physicalMediumDataLinesESet;
    protected static final PhysicalMediumSegmentPhysicalMediumTypeEnum PHYSICAL_MEDIUM_TYPE_EDEFAULT = PhysicalMediumSegmentPhysicalMediumTypeEnum.OPTICAL;
    protected PhysicalMediumSegmentPhysicalMediumTypeEnum physicalMediumType = PHYSICAL_MEDIUM_TYPE_EDEFAULT;
    protected boolean physicalMediumTypeESet;

    protected PhysicalMediumSegmentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.PHYSICAL_MEDIUM_SEGMENT;
    }

    @Override
    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 4, msgs);
        return msgs;
    }

    @Override
    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 17, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    @Override
    public EList<Connector> getConnectedEcus() {
        if (this.connectedEcus == null) {
            this.connectedEcus = new EObjectResolvingReferringEList(Connector.class, (InternalEObject)this, 5);
        }
        return this.connectedEcus;
    }

    @Override
    public EList<Hub> getConnectedHubs() {
        if (this.connectedHubs == null) {
            this.connectedHubs = new EObjectResolvingReferringEList(Hub.class, (InternalEObject)this, 6);
        }
        return this.connectedHubs;
    }

    @Override
    public Integer getPhysicalMediumDataLines() {
        return this.physicalMediumDataLines;
    }

    @Override
    public void setPhysicalMediumDataLines(Integer newPhysicalMediumDataLines) {
        Integer oldPhysicalMediumDataLines = this.physicalMediumDataLines;
        this.physicalMediumDataLines = newPhysicalMediumDataLines;
        boolean oldPhysicalMediumDataLinesESet = this.physicalMediumDataLinesESet;
        this.physicalMediumDataLinesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPhysicalMediumDataLines, (Object)this.physicalMediumDataLines, !oldPhysicalMediumDataLinesESet));
        }
    }

    @Override
    public void unsetPhysicalMediumDataLines() {
        Integer oldPhysicalMediumDataLines = this.physicalMediumDataLines;
        boolean oldPhysicalMediumDataLinesESet = this.physicalMediumDataLinesESet;
        this.physicalMediumDataLines = PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT;
        this.physicalMediumDataLinesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldPhysicalMediumDataLines, (Object)PHYSICAL_MEDIUM_DATA_LINES_EDEFAULT, oldPhysicalMediumDataLinesESet));
        }
    }

    @Override
    public boolean isSetPhysicalMediumDataLines() {
        return this.physicalMediumDataLinesESet;
    }

    @Override
    public PhysicalMediumSegmentPhysicalMediumTypeEnum getPhysicalMediumType() {
        return this.physicalMediumType;
    }

    @Override
    public void setPhysicalMediumType(PhysicalMediumSegmentPhysicalMediumTypeEnum newPhysicalMediumType) {
        PhysicalMediumSegmentPhysicalMediumTypeEnum oldPhysicalMediumType = this.physicalMediumType;
        this.physicalMediumType = newPhysicalMediumType == null ? PHYSICAL_MEDIUM_TYPE_EDEFAULT : newPhysicalMediumType;
        boolean oldPhysicalMediumTypeESet = this.physicalMediumTypeESet;
        this.physicalMediumTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPhysicalMediumType, (Object)this.physicalMediumType, !oldPhysicalMediumTypeESet));
        }
    }

    @Override
    public void unsetPhysicalMediumType() {
        PhysicalMediumSegmentPhysicalMediumTypeEnum oldPhysicalMediumType = this.physicalMediumType;
        boolean oldPhysicalMediumTypeESet = this.physicalMediumTypeESet;
        this.physicalMediumType = PHYSICAL_MEDIUM_TYPE_EDEFAULT;
        this.physicalMediumTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldPhysicalMediumType, (Object)PHYSICAL_MEDIUM_TYPE_EDEFAULT, oldPhysicalMediumTypeESet));
        }
    }

    @Override
    public boolean isSetPhysicalMediumType() {
        return this.physicalMediumTypeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPhysicalChannel((PhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPhysicalChannel();
            }
            case 5: {
                return this.getConnectedEcus();
            }
            case 6: {
                return this.getConnectedHubs();
            }
            case 7: {
                return this.getPhysicalMediumDataLines();
            }
            case 8: {
                return this.getPhysicalMediumType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 5: {
                this.getConnectedEcus().clear();
                this.getConnectedEcus().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getConnectedHubs().clear();
                this.getConnectedHubs().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setPhysicalMediumDataLines((Integer)newValue);
                return;
            }
            case 8: {
                this.setPhysicalMediumType((PhysicalMediumSegmentPhysicalMediumTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPhysicalChannel(null);
                return;
            }
            case 5: {
                this.getConnectedEcus().clear();
                return;
            }
            case 6: {
                this.getConnectedHubs().clear();
                return;
            }
            case 7: {
                this.unsetPhysicalMediumDataLines();
                return;
            }
            case 8: {
                this.unsetPhysicalMediumType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPhysicalChannel() != null;
            }
            case 5: {
                return this.connectedEcus != null && !this.connectedEcus.isEmpty();
            }
            case 6: {
                return this.connectedHubs != null && !this.connectedHubs.isEmpty();
            }
            case 7: {
                return this.isSetPhysicalMediumDataLines();
            }
            case 8: {
                return this.isSetPhysicalMediumType();
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
        result.append(" (physicalMediumDataLines: ");
        if (this.physicalMediumDataLinesESet) {
            result.append(this.physicalMediumDataLines);
        } else {
            result.append("<unset>");
        }
        result.append(", physicalMediumType: ");
        if (this.physicalMediumTypeESet) {
            result.append((Object)this.physicalMediumType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

