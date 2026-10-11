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
package autosar21.swcomponent.services.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
import autosar21.swcomponent.services.EcuSwComposition;
import autosar21.swcomponent.services.ServiceComponentPrototype;
import autosar21.swcomponent.services.ServicesPackage;
import autosar21.system.System;
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
public class EcuSwCompositionImpl
extends ARElementImpl
implements EcuSwComposition,
IReferringClass {
    protected EList<ServiceComponentPrototype> components;
    protected EList<ServiceConnectorPrototype> connectors;
    protected System ecuExtract;

    protected EcuSwCompositionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServicesPackage.Literals.ECU_SW_COMPOSITION;
    }

    @Override
    public EList<ServiceComponentPrototype> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(ServiceComponentPrototype.class, (InternalEObject)this, 18, 16);
        }
        return this.components;
    }

    @Override
    public EList<ServiceConnectorPrototype> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(ServiceConnectorPrototype.class, (InternalEObject)this, 19, 18);
        }
        return this.connectors;
    }

    @Override
    public System getEcuExtract() {
        if (this.ecuExtract != null && this.ecuExtract.eIsProxy()) {
            InternalEObject oldEcuExtract = (InternalEObject)this.ecuExtract;
            this.ecuExtract = (System)this.eResolveProxy(oldEcuExtract);
            if (this.ecuExtract != oldEcuExtract && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldEcuExtract, (Object)this.ecuExtract));
            }
        }
        return this.ecuExtract;
    }

    public System basicGetEcuExtract() {
        return this.ecuExtract;
    }

    @Override
    public void setEcuExtract(System newEcuExtract) {
        System oldEcuExtract = this.ecuExtract;
        this.ecuExtract = newEcuExtract;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldEcuExtract, (Object)this.ecuExtract));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getComponents();
            }
            case 19: {
                return this.getConnectors();
            }
            case 20: {
                if (resolve) {
                    return this.getEcuExtract();
                }
                return this.basicGetEcuExtract();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setEcuExtract((System)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.getComponents().clear();
                return;
            }
            case 19: {
                this.getConnectors().clear();
                return;
            }
            case 20: {
                this.setEcuExtract(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.components != null && !this.components.isEmpty();
            }
            case 19: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
            case 20: {
                return this.ecuExtract != null;
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

