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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SignalIPduImpl
extends IPduImpl
implements SignalIPdu {
    protected IPduTiming iPduTimingSpecification;
    protected EList<ISignalToIPduMapping> signalToPduMappings;

    protected SignalIPduImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SIGNAL_IPDU;
    }

    @Override
    public IPduTiming getIPduTimingSpecification() {
        return this.iPduTimingSpecification;
    }

    public NotificationChain basicSetIPduTimingSpecification(IPduTiming newIPduTimingSpecification, NotificationChain msgs) {
        IPduTiming oldIPduTimingSpecification = this.iPduTimingSpecification;
        this.iPduTimingSpecification = newIPduTimingSpecification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldIPduTimingSpecification, (Object)newIPduTimingSpecification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIPduTimingSpecification(IPduTiming newIPduTimingSpecification) {
        if (newIPduTimingSpecification != this.iPduTimingSpecification) {
            NotificationChain msgs = null;
            if (this.iPduTimingSpecification != null) {
                msgs = ((InternalEObject)this.iPduTimingSpecification).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newIPduTimingSpecification != null) {
                msgs = ((InternalEObject)newIPduTimingSpecification).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetIPduTimingSpecification(newIPduTimingSpecification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newIPduTimingSpecification, (Object)newIPduTimingSpecification));
        }
    }

    @Override
    public EList<ISignalToIPduMapping> getSignalToPduMappings() {
        if (this.signalToPduMappings == null) {
            this.signalToPduMappings = new EObjectContainmentEList(ISignalToIPduMapping.class, (InternalEObject)this, 22);
        }
        return this.signalToPduMappings;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetIPduTimingSpecification(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getSignalToPduMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getIPduTimingSpecification();
            }
            case 22: {
                return this.getSignalToPduMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setIPduTimingSpecification((IPduTiming)newValue);
                return;
            }
            case 22: {
                this.getSignalToPduMappings().clear();
                this.getSignalToPduMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setIPduTimingSpecification(null);
                return;
            }
            case 22: {
                this.getSignalToPduMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.iPduTimingSpecification != null;
            }
            case 22: {
                return this.signalToPduMappings != null && !this.signalToPduMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

