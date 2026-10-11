/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.transportprotocols.impl;

import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.TpConfigImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class J1939TpConfigImpl
extends TpConfigImpl
implements J1939TpConfig {
    protected EList<TpAddress> tpAddress;
    protected EList<J1939TpConnection> tpConnections;
    protected EList<J1939TpNode> tpNodes;

    protected J1939TpConfigImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.J1939_TP_CONFIG;
    }

    @Override
    public EList<TpAddress> getTpAddress() {
        if (this.tpAddress == null) {
            this.tpAddress = new EObjectContainmentEList(TpAddress.class, (InternalEObject)this, 22);
        }
        return this.tpAddress;
    }

    @Override
    public EList<J1939TpConnection> getTpConnections() {
        if (this.tpConnections == null) {
            this.tpConnections = new EObjectContainmentWithInverseEList(J1939TpConnection.class, (InternalEObject)this, 23, 4);
        }
        return this.tpConnections;
    }

    @Override
    public EList<J1939TpNode> getTpNodes() {
        if (this.tpNodes == null) {
            this.tpNodes = new EObjectContainmentWithInverseEList(J1939TpNode.class, (InternalEObject)this, 24, 18);
        }
        return this.tpNodes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getTpConnections()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
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
                return ((InternalEList)this.getTpConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
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
                return this.getTpConnections();
            }
            case 24: {
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
                this.getTpConnections().clear();
                this.getTpConnections().addAll((Collection)newValue);
                return;
            }
            case 24: {
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
                this.getTpConnections().clear();
                return;
            }
            case 24: {
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
                return this.tpConnections != null && !this.tpConnections.isEmpty();
            }
            case 24: {
                return this.tpNodes != null && !this.tpNodes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

