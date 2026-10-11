/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.GatewayType;
import autosar21.system.communication.instanceref.GatewayTypeGatewayLocation;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GatewayTypeImpl
extends ARElementImpl
implements GatewayType {
    protected EList<GatewayEntry> gatewayEntries;
    protected GatewayTypeGatewayLocation gatewayLocation;

    protected GatewayTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.GATEWAY_TYPE;
    }

    @Override
    public EList<GatewayEntry> getGatewayEntries() {
        if (this.gatewayEntries == null) {
            this.gatewayEntries = new EObjectContainmentWithInverseEList(GatewayEntry.class, (InternalEObject)this, 18, 4);
        }
        return this.gatewayEntries;
    }

    @Override
    public GatewayTypeGatewayLocation getGatewayLocation() {
        return this.gatewayLocation;
    }

    public NotificationChain basicSetGatewayLocation(GatewayTypeGatewayLocation newGatewayLocation, NotificationChain msgs) {
        GatewayTypeGatewayLocation oldGatewayLocation = this.gatewayLocation;
        this.gatewayLocation = newGatewayLocation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldGatewayLocation, (Object)newGatewayLocation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setGatewayLocation(GatewayTypeGatewayLocation newGatewayLocation) {
        if (newGatewayLocation != this.gatewayLocation) {
            NotificationChain msgs = null;
            if (this.gatewayLocation != null) {
                msgs = ((InternalEObject)this.gatewayLocation).eInverseRemove((InternalEObject)this, 4, GatewayTypeGatewayLocation.class, msgs);
            }
            if (newGatewayLocation != null) {
                msgs = ((InternalEObject)newGatewayLocation).eInverseAdd((InternalEObject)this, 4, GatewayTypeGatewayLocation.class, msgs);
            }
            if ((msgs = this.basicSetGatewayLocation(newGatewayLocation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newGatewayLocation, (Object)newGatewayLocation));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getGatewayEntries()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                if (this.gatewayLocation != null) {
                    msgs = ((InternalEObject)this.gatewayLocation).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetGatewayLocation((GatewayTypeGatewayLocation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getGatewayEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return this.basicSetGatewayLocation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getGatewayEntries();
            }
            case 19: {
                return this.getGatewayLocation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getGatewayEntries().clear();
                this.getGatewayEntries().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setGatewayLocation((GatewayTypeGatewayLocation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.getGatewayEntries().clear();
                return;
            }
            case 19: {
                this.setGatewayLocation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gatewayEntries != null && !this.gatewayEntries.isEmpty();
            }
            case 19: {
                return this.gatewayLocation != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

