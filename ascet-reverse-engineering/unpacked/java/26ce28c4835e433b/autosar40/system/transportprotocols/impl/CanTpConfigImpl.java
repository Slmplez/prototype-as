/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.transportprotocols.impl;

import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.TpConfigImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CanTpConfigImpl
extends TpConfigImpl
implements CanTpConfig {
    protected EList<CanTpAddress> tpAddress;
    protected EList<CanTpChannel> tpChannels;
    protected EList<CanTpConnection> tpConnections;
    protected EList<CanTpEcu> tpEcus;
    protected EList<CanTpNode> tpNodes;

    protected CanTpConfigImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_CONFIG;
    }

    @Override
    public EList<CanTpAddress> getTpAddress() {
        if (this.tpAddress == null) {
            this.tpAddress = new EObjectContainmentWithInverseEList(CanTpAddress.class, (InternalEObject)this, 22, 18);
        }
        return this.tpAddress;
    }

    @Override
    public EList<CanTpChannel> getTpChannels() {
        if (this.tpChannels == null) {
            this.tpChannels = new EObjectContainmentWithInverseEList(CanTpChannel.class, (InternalEObject)this, 23, 18);
        }
        return this.tpChannels;
    }

    @Override
    public EList<CanTpConnection> getTpConnections() {
        if (this.tpConnections == null) {
            this.tpConnections = new EObjectContainmentWithInverseEList(CanTpConnection.class, (InternalEObject)this, 24, 4);
        }
        return this.tpConnections;
    }

    @Override
    public EList<CanTpEcu> getTpEcus() {
        if (this.tpEcus == null) {
            this.tpEcus = new EObjectContainmentWithInverseEList(CanTpEcu.class, (InternalEObject)this, 25, 4);
        }
        return this.tpEcus;
    }

    @Override
    public EList<CanTpNode> getTpNodes() {
        if (this.tpNodes == null) {
            this.tpNodes = new EObjectContainmentWithInverseEList(CanTpNode.class, (InternalEObject)this, 26, 18);
        }
        return this.tpNodes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getTpAddress()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTpChannels()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getTpConnections()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getTpEcus()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpNodes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getTpAddress()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTpChannels()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getTpConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getTpEcus()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpNodes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getTpAddress();
            }
            case 23: {
                return this.getTpChannels();
            }
            case 24: {
                return this.getTpConnections();
            }
            case 25: {
                return this.getTpEcus();
            }
            case 26: {
                return this.getTpNodes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getTpAddress().clear();
                this.getTpAddress().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getTpChannels().clear();
                this.getTpChannels().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getTpConnections().clear();
                this.getTpConnections().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getTpEcus().clear();
                this.getTpEcus().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getTpNodes().clear();
                this.getTpNodes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.getTpAddress().clear();
                return;
            }
            case 23: {
                this.getTpChannels().clear();
                return;
            }
            case 24: {
                this.getTpConnections().clear();
                return;
            }
            case 25: {
                this.getTpEcus().clear();
                return;
            }
            case 26: {
                this.getTpNodes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.tpAddress != null && !this.tpAddress.isEmpty();
            }
            case 23: {
                return this.tpChannels != null && !this.tpChannels.isEmpty();
            }
            case 24: {
                return this.tpConnections != null && !this.tpConnections.isEmpty();
            }
            case 25: {
                return this.tpEcus != null && !this.tpEcus.isEmpty();
            }
            case 26: {
                return this.tpNodes != null && !this.tpNodes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

