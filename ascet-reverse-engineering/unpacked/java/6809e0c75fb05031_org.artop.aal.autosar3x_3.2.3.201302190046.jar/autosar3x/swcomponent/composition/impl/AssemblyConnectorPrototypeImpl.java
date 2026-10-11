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
package autosar3x.swcomponent.composition.impl;

import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.impl.ConnectorPrototypeImpl;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
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
public class AssemblyConnectorPrototypeImpl
extends ConnectorPrototypeImpl
implements AssemblyConnectorPrototype {
    protected AssemblyConnectorPrototypeProvider provider;
    protected AssemblyConnectorPrototypeRequester requester;

    protected AssemblyConnectorPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.ASSEMBLY_CONNECTOR_PROTOTYPE;
    }

    public GRPortInCompositionIRef gGetRequester() {
        return this.getRequester();
    }

    public void gSetRequester(GRPortInCompositionIRef newGRequester) {
        this.setRequester((AssemblyConnectorPrototypeRequester)newGRequester);
    }

    public GPPortInCompositionIRef gGetProvider() {
        return this.getProvider();
    }

    public void gSetProvider(GPPortInCompositionIRef newGProvider) {
        this.setProvider((AssemblyConnectorPrototypeProvider)newGProvider);
    }

    @Override
    public AssemblyConnectorPrototypeProvider getProvider() {
        return this.provider;
    }

    public NotificationChain basicSetProvider(AssemblyConnectorPrototypeProvider newProvider, NotificationChain msgs) {
        AssemblyConnectorPrototypeProvider oldProvider = this.provider;
        this.provider = newProvider;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldProvider, (Object)newProvider);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setProvider(AssemblyConnectorPrototypeProvider newProvider) {
        if (newProvider != this.provider) {
            NotificationChain msgs = null;
            if (this.provider != null) {
                msgs = ((InternalEObject)this.provider).eInverseRemove((InternalEObject)this, 6, AssemblyConnectorPrototypeProvider.class, msgs);
            }
            if (newProvider != null) {
                msgs = ((InternalEObject)newProvider).eInverseAdd((InternalEObject)this, 6, AssemblyConnectorPrototypeProvider.class, msgs);
            }
            if ((msgs = this.basicSetProvider(newProvider, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newProvider, (Object)newProvider));
        }
    }

    @Override
    public AssemblyConnectorPrototypeRequester getRequester() {
        return this.requester;
    }

    public NotificationChain basicSetRequester(AssemblyConnectorPrototypeRequester newRequester, NotificationChain msgs) {
        AssemblyConnectorPrototypeRequester oldRequester = this.requester;
        this.requester = newRequester;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldRequester, (Object)newRequester);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRequester(AssemblyConnectorPrototypeRequester newRequester) {
        if (newRequester != this.requester) {
            NotificationChain msgs = null;
            if (this.requester != null) {
                msgs = ((InternalEObject)this.requester).eInverseRemove((InternalEObject)this, 6, AssemblyConnectorPrototypeRequester.class, msgs);
            }
            if (newRequester != null) {
                msgs = ((InternalEObject)newRequester).eInverseAdd((InternalEObject)this, 6, AssemblyConnectorPrototypeRequester.class, msgs);
            }
            if ((msgs = this.basicSetRequester(newRequester, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newRequester, (Object)newRequester));
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
            case 20: {
                if (this.provider != null) {
                    msgs = ((InternalEObject)this.provider).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetProvider((AssemblyConnectorPrototypeProvider)otherEnd, msgs);
            }
            case 21: {
                if (this.requester != null) {
                    msgs = ((InternalEObject)this.requester).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetRequester((AssemblyConnectorPrototypeRequester)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetProvider(null, msgs);
            }
            case 21: {
                return this.basicSetRequester(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetRequester();
            }
            case 19: {
                return this.gGetProvider();
            }
            case 20: {
                return this.getProvider();
            }
            case 21: {
                return this.getRequester();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetRequester((GRPortInCompositionIRef)newValue);
                return;
            }
            case 19: {
                this.gSetProvider((GPPortInCompositionIRef)newValue);
                return;
            }
            case 20: {
                this.setProvider((AssemblyConnectorPrototypeProvider)newValue);
                return;
            }
            case 21: {
                this.setRequester((AssemblyConnectorPrototypeRequester)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetRequester(null);
                return;
            }
            case 19: {
                this.gSetProvider(null);
                return;
            }
            case 20: {
                this.setProvider(null);
                return;
            }
            case 21: {
                this.setRequester(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetRequester() != null;
            }
            case 19: {
                return this.gGetProvider() != null;
            }
            case 20: {
                return this.provider != null;
            }
            case 21: {
                return this.requester != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAssemblySwConnector.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
                case 19: {
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
                    return 18;
                }
                case 7: {
                    return 19;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

