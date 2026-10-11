/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DimensionalImplementationTImpl
extends MinimalEObjectImpl.Container
implements DimensionalImplementationT {
    protected OneDImplementationType oneDImplementation;
    protected TwoDImplementationType twoDImplementation;
    protected DistributionImplementationType distributionImplementation;
    protected ScalarImplementationT arrayImplementation;
    protected ScalarImplementationT matrixImplementation;

    protected DimensionalImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.DIMENSIONAL_IMPLEMENTATION_T;
    }

    @Override
    public OneDImplementationType getOneDImplementation() {
        return this.oneDImplementation;
    }

    public NotificationChain basicSetOneDImplementation(OneDImplementationType newOneDImplementation, NotificationChain msgs) {
        OneDImplementationType oldOneDImplementation = this.oneDImplementation;
        this.oneDImplementation = newOneDImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldOneDImplementation, (Object)newOneDImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOneDImplementation(OneDImplementationType newOneDImplementation) {
        if (newOneDImplementation != this.oneDImplementation) {
            NotificationChain msgs = null;
            if (this.oneDImplementation != null) {
                msgs = ((InternalEObject)this.oneDImplementation).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newOneDImplementation != null) {
                msgs = ((InternalEObject)newOneDImplementation).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetOneDImplementation(newOneDImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newOneDImplementation, (Object)newOneDImplementation));
        }
    }

    @Override
    public TwoDImplementationType getTwoDImplementation() {
        return this.twoDImplementation;
    }

    public NotificationChain basicSetTwoDImplementation(TwoDImplementationType newTwoDImplementation, NotificationChain msgs) {
        TwoDImplementationType oldTwoDImplementation = this.twoDImplementation;
        this.twoDImplementation = newTwoDImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTwoDImplementation, (Object)newTwoDImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTwoDImplementation(TwoDImplementationType newTwoDImplementation) {
        if (newTwoDImplementation != this.twoDImplementation) {
            NotificationChain msgs = null;
            if (this.twoDImplementation != null) {
                msgs = ((InternalEObject)this.twoDImplementation).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newTwoDImplementation != null) {
                msgs = ((InternalEObject)newTwoDImplementation).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetTwoDImplementation(newTwoDImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newTwoDImplementation, (Object)newTwoDImplementation));
        }
    }

    @Override
    public DistributionImplementationType getDistributionImplementation() {
        return this.distributionImplementation;
    }

    public NotificationChain basicSetDistributionImplementation(DistributionImplementationType newDistributionImplementation, NotificationChain msgs) {
        DistributionImplementationType oldDistributionImplementation = this.distributionImplementation;
        this.distributionImplementation = newDistributionImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDistributionImplementation, (Object)newDistributionImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDistributionImplementation(DistributionImplementationType newDistributionImplementation) {
        if (newDistributionImplementation != this.distributionImplementation) {
            NotificationChain msgs = null;
            if (this.distributionImplementation != null) {
                msgs = ((InternalEObject)this.distributionImplementation).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newDistributionImplementation != null) {
                msgs = ((InternalEObject)newDistributionImplementation).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetDistributionImplementation(newDistributionImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newDistributionImplementation, (Object)newDistributionImplementation));
        }
    }

    @Override
    public ScalarImplementationT getArrayImplementation() {
        return this.arrayImplementation;
    }

    public NotificationChain basicSetArrayImplementation(ScalarImplementationT newArrayImplementation, NotificationChain msgs) {
        ScalarImplementationT oldArrayImplementation = this.arrayImplementation;
        this.arrayImplementation = newArrayImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldArrayImplementation, (Object)newArrayImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setArrayImplementation(ScalarImplementationT newArrayImplementation) {
        if (newArrayImplementation != this.arrayImplementation) {
            NotificationChain msgs = null;
            if (this.arrayImplementation != null) {
                msgs = ((InternalEObject)this.arrayImplementation).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newArrayImplementation != null) {
                msgs = ((InternalEObject)newArrayImplementation).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetArrayImplementation(newArrayImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newArrayImplementation, (Object)newArrayImplementation));
        }
    }

    @Override
    public ScalarImplementationT getMatrixImplementation() {
        return this.matrixImplementation;
    }

    public NotificationChain basicSetMatrixImplementation(ScalarImplementationT newMatrixImplementation, NotificationChain msgs) {
        ScalarImplementationT oldMatrixImplementation = this.matrixImplementation;
        this.matrixImplementation = newMatrixImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMatrixImplementation, (Object)newMatrixImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMatrixImplementation(ScalarImplementationT newMatrixImplementation) {
        if (newMatrixImplementation != this.matrixImplementation) {
            NotificationChain msgs = null;
            if (this.matrixImplementation != null) {
                msgs = ((InternalEObject)this.matrixImplementation).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newMatrixImplementation != null) {
                msgs = ((InternalEObject)newMatrixImplementation).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetMatrixImplementation(newMatrixImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMatrixImplementation, (Object)newMatrixImplementation));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetOneDImplementation(null, msgs);
            }
            case 1: {
                return this.basicSetTwoDImplementation(null, msgs);
            }
            case 2: {
                return this.basicSetDistributionImplementation(null, msgs);
            }
            case 3: {
                return this.basicSetArrayImplementation(null, msgs);
            }
            case 4: {
                return this.basicSetMatrixImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getOneDImplementation();
            }
            case 1: {
                return this.getTwoDImplementation();
            }
            case 2: {
                return this.getDistributionImplementation();
            }
            case 3: {
                return this.getArrayImplementation();
            }
            case 4: {
                return this.getMatrixImplementation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setOneDImplementation((OneDImplementationType)newValue);
                return;
            }
            case 1: {
                this.setTwoDImplementation((TwoDImplementationType)newValue);
                return;
            }
            case 2: {
                this.setDistributionImplementation((DistributionImplementationType)newValue);
                return;
            }
            case 3: {
                this.setArrayImplementation((ScalarImplementationT)newValue);
                return;
            }
            case 4: {
                this.setMatrixImplementation((ScalarImplementationT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setOneDImplementation(null);
                return;
            }
            case 1: {
                this.setTwoDImplementation(null);
                return;
            }
            case 2: {
                this.setDistributionImplementation(null);
                return;
            }
            case 3: {
                this.setArrayImplementation(null);
                return;
            }
            case 4: {
                this.setMatrixImplementation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.oneDImplementation != null;
            }
            case 1: {
                return this.twoDImplementation != null;
            }
            case 2: {
                return this.distributionImplementation != null;
            }
            case 3: {
                return this.arrayImplementation != null;
            }
            case 4: {
                return this.matrixImplementation != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

