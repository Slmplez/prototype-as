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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.LinSchedulingTableEntry;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinSchedulingTableImpl
extends IdentifiableImpl
implements LinSchedulingTable {
    protected EList<LinSchedulingTableEntry> entries;

    protected LinSchedulingTableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.LIN_SCHEDULING_TABLE;
    }

    @Override
    public CommunicationMatrixType getCommunicationMatrixType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommunicationMatrixType)this.eContainer();
    }

    public NotificationChain basicSetCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationMatrixType, 16, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType) {
        if (newCommunicationMatrixType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommunicationMatrixType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationMatrixType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationMatrixType != null) {
                msgs = ((InternalEObject)newCommunicationMatrixType).eInverseAdd((InternalEObject)this, 20, CommunicationMatrixType.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationMatrixType(newCommunicationMatrixType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommunicationMatrixType, (Object)newCommunicationMatrixType));
        }
    }

    @Override
    public EList<LinSchedulingTableEntry> getEntries() {
        if (this.entries == null) {
            this.entries = new EObjectContainmentWithInverseEList(LinSchedulingTableEntry.class, (InternalEObject)this, 17, 4);
        }
        return this.entries;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationMatrixType((CommunicationMatrixType)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getEntries()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommunicationMatrixType(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getEntries()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, CommunicationMatrixType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationMatrixType();
            }
            case 17: {
                return this.getEntries();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommunicationMatrixType((CommunicationMatrixType)newValue);
                return;
            }
            case 17: {
                this.getEntries().clear();
                this.getEntries().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommunicationMatrixType(null);
                return;
            }
            case 17: {
                this.getEntries().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationMatrixType() != null;
            }
            case 17: {
                return this.entries != null && !this.entries.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

