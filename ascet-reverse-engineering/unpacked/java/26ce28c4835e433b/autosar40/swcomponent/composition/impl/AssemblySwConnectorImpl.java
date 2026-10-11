/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.composition.impl;

import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.impl.SwConnectorImpl;
import autosar40.swcomponent.composition.instancerefs.PPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AssemblySwConnectorImpl
extends SwConnectorImpl
implements AssemblySwConnector {
    protected PPortInCompositionInstanceRef provider;
    protected RPortInCompositionInstanceRef requester;

    protected AssemblySwConnectorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.ASSEMBLY_SW_CONNECTOR;
    }

    public GRPortInCompositionIRef gGetRequester() {
        return this.getRequester();
    }

    public void gSetRequester(GRPortInCompositionIRef newGRequester) {
        this.setRequester((RPortInCompositionInstanceRef)newGRequester);
    }

    public GPPortInCompositionIRef gGetProvider() {
        return this.getProvider();
    }

    public void gSetProvider(GPPortInCompositionIRef newGProvider) {
        this.setProvider((PPortInCompositionInstanceRef)newGProvider);
    }

    @Override
    public PPortInCompositionInstanceRef getProvider() {
        return this.provider;
    }

    public NotificationChain basicSetProvider(PPortInCompositionInstanceRef newProvider, NotificationChain msgs) {
        PPortInCompositionInstanceRef oldProvider = this.provider;
        this.provider = newProvider;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldProvider, (Object)newProvider);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setProvider(PPortInCompositionInstanceRef newProvider) {
        if (newProvider != this.provider) {
            NotificationChain msgs = null;
            if (this.provider != null) {
                msgs = ((InternalEObject)this.provider).eInverseRemove((InternalEObject)this, 7, PPortInCompositionInstanceRef.class, msgs);
            }
            if (newProvider != null) {
                msgs = ((InternalEObject)newProvider).eInverseAdd((InternalEObject)this, 7, PPortInCompositionInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetProvider(newProvider, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newProvider, (Object)newProvider));
        }
    }

    @Override
    public RPortInCompositionInstanceRef getRequester() {
        return this.requester;
    }

    public NotificationChain basicSetRequester(RPortInCompositionInstanceRef newRequester, NotificationChain msgs) {
        RPortInCompositionInstanceRef oldRequester = this.requester;
        this.requester = newRequester;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldRequester, (Object)newRequester);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRequester(RPortInCompositionInstanceRef newRequester) {
        if (newRequester != this.requester) {
            NotificationChain msgs = null;
            if (this.requester != null) {
                msgs = ((InternalEObject)this.requester).eInverseRemove((InternalEObject)this, 7, RPortInCompositionInstanceRef.class, msgs);
            }
            if (newRequester != null) {
                msgs = ((InternalEObject)newRequester).eInverseAdd((InternalEObject)this, 7, RPortInCompositionInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetRequester(newRequester, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newRequester, (Object)newRequester));
        }
    }

    @Override
    public boolean _clientservern1(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _senderreceiver1norn1(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _provideroclIsTypeOfServerPortPrototypeandrequesteroclIsTypeOfClientPortPrototypeorprovideroclIsTypeOfSenderPortPrototypeandrequesteroclIsTypeOfReceiverPortPrototype(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean compositionports_includesproviderandcompositionports_includesrequester(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                if (this.provider != null) {
                    msgs = ((InternalEObject)this.provider).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetProvider((PPortInCompositionInstanceRef)otherEnd, msgs);
            }
            case 25: {
                if (this.requester != null) {
                    msgs = ((InternalEObject)this.requester).eInverseRemove((InternalEObject)this, -26, null, msgs);
                }
                return this.basicSetRequester((RPortInCompositionInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetProvider(null, msgs);
            }
            case 25: {
                return this.basicSetRequester(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.gGetRequester();
            }
            case 23: {
                return this.gGetProvider();
            }
            case 24: {
                return this.getProvider();
            }
            case 25: {
                return this.getRequester();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.gSetRequester((GRPortInCompositionIRef)newValue);
                return;
            }
            case 23: {
                this.gSetProvider((GPPortInCompositionIRef)newValue);
                return;
            }
            case 24: {
                this.setProvider((PPortInCompositionInstanceRef)newValue);
                return;
            }
            case 25: {
                this.setRequester((RPortInCompositionInstanceRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.gSetRequester(null);
                return;
            }
            case 23: {
                this.gSetProvider(null);
                return;
            }
            case 24: {
                this.setProvider(null);
                return;
            }
            case 25: {
                this.setRequester(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.gGetRequester() != null;
            }
            case 23: {
                return this.gGetProvider() != null;
            }
            case 24: {
                return this.provider != null;
            }
            case 25: {
                return this.requester != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAssemblySwConnector.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 6;
                }
                case 23: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GAssemblySwConnector.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 22;
                }
                case 7: {
                    return 23;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

