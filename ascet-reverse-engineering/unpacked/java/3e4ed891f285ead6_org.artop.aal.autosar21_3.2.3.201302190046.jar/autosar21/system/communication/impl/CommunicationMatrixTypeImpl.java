/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.Frame;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.topology.SystemTopologyType;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommunicationMatrixTypeImpl
extends ARElementImpl
implements CommunicationMatrixType,
IReferringClass {
    protected CommunicationMatrixTypeCommunicationCluster communicationCluster;
    protected EList<Frame> frames;
    protected EList<LinSchedulingTable> linSchedulingTables;
    protected SystemTopologyType systemTopologyType;

    protected CommunicationMatrixTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.COMMUNICATION_MATRIX_TYPE;
    }

    @Override
    public CommunicationMatrixTypeCommunicationCluster getCommunicationCluster() {
        return this.communicationCluster;
    }

    public NotificationChain basicSetCommunicationCluster(CommunicationMatrixTypeCommunicationCluster newCommunicationCluster, NotificationChain msgs) {
        CommunicationMatrixTypeCommunicationCluster oldCommunicationCluster = this.communicationCluster;
        this.communicationCluster = newCommunicationCluster;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCommunicationCluster, (Object)newCommunicationCluster);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCommunicationCluster(CommunicationMatrixTypeCommunicationCluster newCommunicationCluster) {
        if (newCommunicationCluster != this.communicationCluster) {
            NotificationChain msgs = null;
            if (this.communicationCluster != null) {
                msgs = ((InternalEObject)this.communicationCluster).eInverseRemove((InternalEObject)this, 4, CommunicationMatrixTypeCommunicationCluster.class, msgs);
            }
            if (newCommunicationCluster != null) {
                msgs = ((InternalEObject)newCommunicationCluster).eInverseAdd((InternalEObject)this, 4, CommunicationMatrixTypeCommunicationCluster.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationCluster(newCommunicationCluster, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCommunicationCluster, (Object)newCommunicationCluster));
        }
    }

    @Override
    public EList<Frame> getFrames() {
        if (this.frames == null) {
            this.frames = new EObjectContainmentWithInverseEList(Frame.class, (InternalEObject)this, 19, 16);
        }
        return this.frames;
    }

    @Override
    public EList<LinSchedulingTable> getLinSchedulingTables() {
        if (this.linSchedulingTables == null) {
            this.linSchedulingTables = new EObjectContainmentWithInverseEList(LinSchedulingTable.class, (InternalEObject)this, 20, 16);
        }
        return this.linSchedulingTables;
    }

    @Override
    public SystemTopologyType getSystemTopologyType() {
        if (this.systemTopologyType != null && this.systemTopologyType.eIsProxy()) {
            InternalEObject oldSystemTopologyType = (InternalEObject)this.systemTopologyType;
            this.systemTopologyType = (SystemTopologyType)this.eResolveProxy(oldSystemTopologyType);
            if (this.systemTopologyType != oldSystemTopologyType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldSystemTopologyType, (Object)this.systemTopologyType));
            }
        }
        return this.systemTopologyType;
    }

    public SystemTopologyType basicGetSystemTopologyType() {
        return this.systemTopologyType;
    }

    @Override
    public void setSystemTopologyType(SystemTopologyType newSystemTopologyType) {
        SystemTopologyType oldSystemTopologyType = this.systemTopologyType;
        this.systemTopologyType = newSystemTopologyType;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSystemTopologyType, (Object)this.systemTopologyType));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.communicationCluster != null) {
                    msgs = ((InternalEObject)this.communicationCluster).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetCommunicationCluster((CommunicationMatrixTypeCommunicationCluster)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getFrames()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getLinSchedulingTables()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCommunicationCluster(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getFrames()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getLinSchedulingTables()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCommunicationCluster();
            }
            case 19: {
                return this.getFrames();
            }
            case 20: {
                return this.getLinSchedulingTables();
            }
            case 21: {
                if (resolve) {
                    return this.getSystemTopologyType();
                }
                return this.basicGetSystemTopologyType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCommunicationCluster((CommunicationMatrixTypeCommunicationCluster)newValue);
                return;
            }
            case 19: {
                this.getFrames().clear();
                this.getFrames().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getLinSchedulingTables().clear();
                this.getLinSchedulingTables().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setSystemTopologyType((SystemTopologyType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCommunicationCluster(null);
                return;
            }
            case 19: {
                this.getFrames().clear();
                return;
            }
            case 20: {
                this.getLinSchedulingTables().clear();
                return;
            }
            case 21: {
                this.setSystemTopologyType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.communicationCluster != null;
            }
            case 19: {
                return this.frames != null && !this.frames.isEmpty();
            }
            case 20: {
                return this.linSchedulingTables != null && !this.linSchedulingTables.isEmpty();
            }
            case 21: {
                return this.systemTopologyType != null;
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

