/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.swcomponent.datatype.computationmethod.CompuConst;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.impl.CompuScaleContentsImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuScaleConstantContentsImpl
extends CompuScaleContentsImpl
implements CompuScaleConstantContents {
    protected CompuConst compuConst;

    protected CompuScaleConstantContentsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_SCALE_CONSTANT_CONTENTS;
    }

    public GCompuConst gGetCompuConst() {
        return this.getCompuConst();
    }

    public void gSetCompuConst(GCompuConst newGCompuConst) {
        this.setCompuConst((CompuConst)newGCompuConst);
    }

    @Override
    public CompuConst getCompuConst() {
        return this.compuConst;
    }

    public NotificationChain basicSetCompuConst(CompuConst newCompuConst, NotificationChain msgs) {
        CompuConst oldCompuConst = this.compuConst;
        this.compuConst = newCompuConst;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCompuConst, (Object)newCompuConst);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuConst(CompuConst newCompuConst) {
        if (newCompuConst != this.compuConst) {
            NotificationChain msgs = null;
            if (this.compuConst != null) {
                msgs = ((InternalEObject)this.compuConst).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newCompuConst != null) {
                msgs = ((InternalEObject)newCompuConst).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetCompuConst(newCompuConst, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCompuConst, (Object)newCompuConst));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetCompuConst(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetCompuConst();
            }
            case 6: {
                return this.getCompuConst();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetCompuConst((GCompuConst)newValue);
                return;
            }
            case 6: {
                this.setCompuConst((CompuConst)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetCompuConst(null);
                return;
            }
            case 6: {
                this.setCompuConst(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetCompuConst() != null;
            }
            case 6: {
                return this.compuConst != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuScaleConstantContents.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuScaleConstantContents.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

