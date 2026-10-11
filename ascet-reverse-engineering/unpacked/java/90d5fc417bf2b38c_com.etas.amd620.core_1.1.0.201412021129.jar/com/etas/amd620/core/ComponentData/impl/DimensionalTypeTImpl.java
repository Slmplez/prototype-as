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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.TwoDType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DimensionalTypeTImpl
extends MinimalEObjectImpl.Container
implements DimensionalTypeT {
    protected OneDType oneD;
    protected TwoDType twoD;
    protected ArrayT distribution;
    protected ArrayT array;
    protected MatrixT matrix;

    protected DimensionalTypeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.DIMENSIONAL_TYPE_T;
    }

    @Override
    public OneDType getOneD() {
        return this.oneD;
    }

    public NotificationChain basicSetOneD(OneDType newOneD, NotificationChain msgs) {
        OneDType oldOneD = this.oneD;
        this.oneD = newOneD;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldOneD, (Object)newOneD);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOneD(OneDType newOneD) {
        if (newOneD != this.oneD) {
            NotificationChain msgs = null;
            if (this.oneD != null) {
                msgs = ((InternalEObject)this.oneD).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newOneD != null) {
                msgs = ((InternalEObject)newOneD).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetOneD(newOneD, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newOneD, (Object)newOneD));
        }
    }

    @Override
    public TwoDType getTwoD() {
        return this.twoD;
    }

    public NotificationChain basicSetTwoD(TwoDType newTwoD, NotificationChain msgs) {
        TwoDType oldTwoD = this.twoD;
        this.twoD = newTwoD;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldTwoD, (Object)newTwoD);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTwoD(TwoDType newTwoD) {
        if (newTwoD != this.twoD) {
            NotificationChain msgs = null;
            if (this.twoD != null) {
                msgs = ((InternalEObject)this.twoD).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newTwoD != null) {
                msgs = ((InternalEObject)newTwoD).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetTwoD(newTwoD, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newTwoD, (Object)newTwoD));
        }
    }

    @Override
    public ArrayT getDistribution() {
        return this.distribution;
    }

    public NotificationChain basicSetDistribution(ArrayT newDistribution, NotificationChain msgs) {
        ArrayT oldDistribution = this.distribution;
        this.distribution = newDistribution;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDistribution, (Object)newDistribution);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDistribution(ArrayT newDistribution) {
        if (newDistribution != this.distribution) {
            NotificationChain msgs = null;
            if (this.distribution != null) {
                msgs = ((InternalEObject)this.distribution).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newDistribution != null) {
                msgs = ((InternalEObject)newDistribution).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetDistribution(newDistribution, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newDistribution, (Object)newDistribution));
        }
    }

    @Override
    public ArrayT getArray() {
        return this.array;
    }

    public NotificationChain basicSetArray(ArrayT newArray, NotificationChain msgs) {
        ArrayT oldArray = this.array;
        this.array = newArray;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldArray, (Object)newArray);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setArray(ArrayT newArray) {
        if (newArray != this.array) {
            NotificationChain msgs = null;
            if (this.array != null) {
                msgs = ((InternalEObject)this.array).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newArray != null) {
                msgs = ((InternalEObject)newArray).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetArray(newArray, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newArray, (Object)newArray));
        }
    }

    @Override
    public MatrixT getMatrix() {
        return this.matrix;
    }

    public NotificationChain basicSetMatrix(MatrixT newMatrix, NotificationChain msgs) {
        MatrixT oldMatrix = this.matrix;
        this.matrix = newMatrix;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMatrix, (Object)newMatrix);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMatrix(MatrixT newMatrix) {
        if (newMatrix != this.matrix) {
            NotificationChain msgs = null;
            if (this.matrix != null) {
                msgs = ((InternalEObject)this.matrix).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newMatrix != null) {
                msgs = ((InternalEObject)newMatrix).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetMatrix(newMatrix, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMatrix, (Object)newMatrix));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetOneD(null, msgs);
            }
            case 1: {
                return this.basicSetTwoD(null, msgs);
            }
            case 2: {
                return this.basicSetDistribution(null, msgs);
            }
            case 3: {
                return this.basicSetArray(null, msgs);
            }
            case 4: {
                return this.basicSetMatrix(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getOneD();
            }
            case 1: {
                return this.getTwoD();
            }
            case 2: {
                return this.getDistribution();
            }
            case 3: {
                return this.getArray();
            }
            case 4: {
                return this.getMatrix();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setOneD((OneDType)newValue);
                return;
            }
            case 1: {
                this.setTwoD((TwoDType)newValue);
                return;
            }
            case 2: {
                this.setDistribution((ArrayT)newValue);
                return;
            }
            case 3: {
                this.setArray((ArrayT)newValue);
                return;
            }
            case 4: {
                this.setMatrix((MatrixT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setOneD(null);
                return;
            }
            case 1: {
                this.setTwoD(null);
                return;
            }
            case 2: {
                this.setDistribution(null);
                return;
            }
            case 3: {
                this.setArray(null);
                return;
            }
            case 4: {
                this.setMatrix(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.oneD != null;
            }
            case 1: {
                return this.twoD != null;
            }
            case 2: {
                return this.distribution != null;
            }
            case 3: {
                return this.array != null;
            }
            case 4: {
                return this.matrix != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

