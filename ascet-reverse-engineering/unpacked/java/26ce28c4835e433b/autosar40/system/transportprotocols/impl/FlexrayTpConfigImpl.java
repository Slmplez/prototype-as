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

import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
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
public class FlexrayTpConfigImpl
extends TpConfigImpl
implements FlexrayTpConfig {
    protected EList<FlexrayTpPduPool> pduPools;
    protected EList<TpAddress> tpAddress;
    protected EList<FlexrayTpConnection> tpConnections;
    protected EList<FlexrayTpConnectionControl> tpConnectionControls;
    protected EList<FlexrayTpEcu> tpEcus;
    protected EList<FlexrayTpNode> tpNodes;

    protected FlexrayTpConfigImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_TP_CONFIG;
    }

    @Override
    public EList<FlexrayTpPduPool> getPduPools() {
        if (this.pduPools == null) {
            this.pduPools = new EObjectContainmentWithInverseEList(FlexrayTpPduPool.class, (InternalEObject)this, 22, 18);
        }
        return this.pduPools;
    }

    @Override
    public EList<TpAddress> getTpAddress() {
        if (this.tpAddress == null) {
            this.tpAddress = new EObjectContainmentEList(TpAddress.class, (InternalEObject)this, 23);
        }
        return this.tpAddress;
    }

    @Override
    public EList<FlexrayTpConnection> getTpConnections() {
        if (this.tpConnections == null) {
            this.tpConnections = new EObjectContainmentWithInverseEList(FlexrayTpConnection.class, (InternalEObject)this, 24, 4);
        }
        return this.tpConnections;
    }

    @Override
    public EList<FlexrayTpConnectionControl> getTpConnectionControls() {
        if (this.tpConnectionControls == null) {
            this.tpConnectionControls = new EObjectContainmentWithInverseEList(FlexrayTpConnectionControl.class, (InternalEObject)this, 25, 18);
        }
        return this.tpConnectionControls;
    }

    @Override
    public EList<FlexrayTpEcu> getTpEcus() {
        if (this.tpEcus == null) {
            this.tpEcus = new EObjectContainmentWithInverseEList(FlexrayTpEcu.class, (InternalEObject)this, 26, 4);
        }
        return this.tpEcus;
    }

    @Override
    public EList<FlexrayTpNode> getTpNodes() {
        if (this.tpNodes == null) {
            this.tpNodes = new EObjectContainmentWithInverseEList(FlexrayTpNode.class, (InternalEObject)this, 27, 18);
        }
        return this.tpNodes;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getPduPools()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getTpConnections()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getTpConnectionControls()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpEcus()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTpNodes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getPduPools()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getTpAddress()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getTpConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getTpConnectionControls()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getTpEcus()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTpNodes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getPduPools();
            }
            case 23: {
                return this.getTpAddress();
            }
            case 24: {
                return this.getTpConnections();
            }
            case 25: {
                return this.getTpConnectionControls();
            }
            case 26: {
                return this.getTpEcus();
            }
            case 27: {
                return this.getTpNodes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.getPduPools().clear();
                this.getPduPools().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getTpAddress().clear();
                this.getTpAddress().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getTpConnections().clear();
                this.getTpConnections().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getTpConnectionControls().clear();
                this.getTpConnectionControls().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getTpEcus().clear();
                this.getTpEcus().addAll((Collection)newValue);
                return;
            }
            case 27: {
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
                this.getPduPools().clear();
                return;
            }
            case 23: {
                this.getTpAddress().clear();
                return;
            }
            case 24: {
                this.getTpConnections().clear();
                return;
            }
            case 25: {
                this.getTpConnectionControls().clear();
                return;
            }
            case 26: {
                this.getTpEcus().clear();
                return;
            }
            case 27: {
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
                return this.pduPools != null && !this.pduPools.isEmpty();
            }
            case 23: {
                return this.tpAddress != null && !this.tpAddress.isEmpty();
            }
            case 24: {
                return this.tpConnections != null && !this.tpConnections.isEmpty();
            }
            case 25: {
                return this.tpConnectionControls != null && !this.tpConnectionControls.isEmpty();
            }
            case 26: {
                return this.tpEcus != null && !this.tpEcus.isEmpty();
            }
            case 27: {
                return this.tpNodes != null && !this.tpNodes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

