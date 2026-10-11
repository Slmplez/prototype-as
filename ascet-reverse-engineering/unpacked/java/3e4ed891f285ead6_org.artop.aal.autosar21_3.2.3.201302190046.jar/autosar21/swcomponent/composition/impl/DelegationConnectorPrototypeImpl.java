/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.composition.impl;

import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.DelegationConnectorPrototype;
import autosar21.swcomponent.composition.impl.ConnectorPrototypeImpl;
import autosar21.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DelegationConnectorPrototypeImpl
extends ConnectorPrototypeImpl
implements DelegationConnectorPrototype,
IReferringClass {
    protected DelegationConnectorPrototypeInnerPort innerPort;
    protected PortPrototype outerPort;

    protected DelegationConnectorPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.DELEGATION_CONNECTOR_PROTOTYPE;
    }

    @Override
    public DelegationConnectorPrototypeInnerPort getInnerPort() {
        return this.innerPort;
    }

    public NotificationChain basicSetInnerPort(DelegationConnectorPrototypeInnerPort newInnerPort, NotificationChain msgs) {
        DelegationConnectorPrototypeInnerPort oldInnerPort = this.innerPort;
        this.innerPort = newInnerPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldInnerPort, (Object)newInnerPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInnerPort(DelegationConnectorPrototypeInnerPort newInnerPort) {
        if (newInnerPort != this.innerPort) {
            NotificationChain msgs = null;
            if (this.innerPort != null) {
                msgs = ((InternalEObject)this.innerPort).eInverseRemove((InternalEObject)this, 4, DelegationConnectorPrototypeInnerPort.class, msgs);
            }
            if (newInnerPort != null) {
                msgs = ((InternalEObject)newInnerPort).eInverseAdd((InternalEObject)this, 4, DelegationConnectorPrototypeInnerPort.class, msgs);
            }
            if ((msgs = this.basicSetInnerPort(newInnerPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newInnerPort, (Object)newInnerPort));
        }
    }

    @Override
    public PortPrototype getOuterPort() {
        if (this.outerPort != null && this.outerPort.eIsProxy()) {
            InternalEObject oldOuterPort = (InternalEObject)this.outerPort;
            this.outerPort = (PortPrototype)this.eResolveProxy(oldOuterPort);
            if (this.outerPort != oldOuterPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldOuterPort, (Object)this.outerPort));
            }
        }
        return this.outerPort;
    }

    public PortPrototype basicGetOuterPort() {
        return this.outerPort;
    }

    @Override
    public void setOuterPort(PortPrototype newOuterPort) {
        PortPrototype oldOuterPort = this.outerPort;
        this.outerPort = newOuterPort;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldOuterPort, (Object)this.outerPort));
        }
    }

    @Override
    public boolean _allinnerportsareofsametype(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _allinnerportshavesameinterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _innerportserverjust1innerport(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _just1outerport(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.innerPort != null) {
                    msgs = ((InternalEObject)this.innerPort).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetInnerPort((DelegationConnectorPrototypeInnerPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetInnerPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getInnerPort();
            }
            case 19: {
                if (resolve) {
                    return this.getOuterPort();
                }
                return this.basicGetOuterPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setInnerPort((DelegationConnectorPrototypeInnerPort)newValue);
                return;
            }
            case 19: {
                this.setOuterPort((PortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setInnerPort(null);
                return;
            }
            case 19: {
                this.setOuterPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.innerPort != null;
            }
            case 19: {
                return this.outerPort != null;
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

