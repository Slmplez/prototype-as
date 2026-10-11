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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.serviceprocesstask.impl;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwServiceImpl
extends ARElementImpl
implements SwService {
    protected SwServiceArg swServiceReturn;
    protected EList<SwServiceArg> swServiceArgs;
    protected EList<SwServiceAccessedElementSet> swServiceAccessedElementSets;
    protected SwServiceProps swServiceProps;

    protected SwServiceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServiceprocesstaskPackage.Literals.SW_SERVICE;
    }

    @Override
    public SwServiceArg getSwServiceReturn() {
        return this.swServiceReturn;
    }

    public NotificationChain basicSetSwServiceReturn(SwServiceArg newSwServiceReturn, NotificationChain msgs) {
        SwServiceArg oldSwServiceReturn = this.swServiceReturn;
        this.swServiceReturn = newSwServiceReturn;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldSwServiceReturn, (Object)newSwServiceReturn);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwServiceReturn(SwServiceArg newSwServiceReturn) {
        if (newSwServiceReturn != this.swServiceReturn) {
            NotificationChain msgs = null;
            if (this.swServiceReturn != null) {
                msgs = ((InternalEObject)this.swServiceReturn).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newSwServiceReturn != null) {
                msgs = ((InternalEObject)newSwServiceReturn).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetSwServiceReturn(newSwServiceReturn, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwServiceReturn, (Object)newSwServiceReturn));
        }
    }

    @Override
    public EList<SwServiceArg> getSwServiceArgs() {
        if (this.swServiceArgs == null) {
            this.swServiceArgs = new EObjectContainmentEList(SwServiceArg.class, (InternalEObject)this, 20);
        }
        return this.swServiceArgs;
    }

    @Override
    public EList<SwServiceAccessedElementSet> getSwServiceAccessedElementSets() {
        if (this.swServiceAccessedElementSets == null) {
            this.swServiceAccessedElementSets = new EObjectContainmentWithInverseEList(SwServiceAccessedElementSet.class, (InternalEObject)this, 21, 4);
        }
        return this.swServiceAccessedElementSets;
    }

    @Override
    public SwServiceProps getSwServiceProps() {
        return this.swServiceProps;
    }

    public NotificationChain basicSetSwServiceProps(SwServiceProps newSwServiceProps, NotificationChain msgs) {
        SwServiceProps oldSwServiceProps = this.swServiceProps;
        this.swServiceProps = newSwServiceProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSwServiceProps, (Object)newSwServiceProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwServiceProps(SwServiceProps newSwServiceProps) {
        if (newSwServiceProps != this.swServiceProps) {
            NotificationChain msgs = null;
            if (this.swServiceProps != null) {
                msgs = ((InternalEObject)this.swServiceProps).eInverseRemove((InternalEObject)this, 4, SwServiceProps.class, msgs);
            }
            if (newSwServiceProps != null) {
                msgs = ((InternalEObject)newSwServiceProps).eInverseAdd((InternalEObject)this, 4, SwServiceProps.class, msgs);
            }
            if ((msgs = this.basicSetSwServiceProps(newSwServiceProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newSwServiceProps, (Object)newSwServiceProps));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getSwServiceAccessedElementSets()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                if (this.swServiceProps != null) {
                    msgs = ((InternalEObject)this.swServiceProps).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetSwServiceProps((SwServiceProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwServiceReturn(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getSwServiceArgs()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSwServiceAccessedElementSets()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetSwServiceProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getSwServiceReturn();
            }
            case 20: {
                return this.getSwServiceArgs();
            }
            case 21: {
                return this.getSwServiceAccessedElementSets();
            }
            case 22: {
                return this.getSwServiceProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setSwServiceReturn((SwServiceArg)newValue);
                return;
            }
            case 20: {
                this.getSwServiceArgs().clear();
                this.getSwServiceArgs().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getSwServiceAccessedElementSets().clear();
                this.getSwServiceAccessedElementSets().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setSwServiceProps((SwServiceProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setSwServiceReturn(null);
                return;
            }
            case 20: {
                this.getSwServiceArgs().clear();
                return;
            }
            case 21: {
                this.getSwServiceAccessedElementSets().clear();
                return;
            }
            case 22: {
                this.setSwServiceProps(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.swServiceReturn != null;
            }
            case 20: {
                return this.swServiceArgs != null && !this.swServiceArgs.isEmpty();
            }
            case 21: {
                return this.swServiceAccessedElementSets != null && !this.swServiceAccessedElementSets.isEmpty();
            }
            case 22: {
                return this.swServiceProps != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

