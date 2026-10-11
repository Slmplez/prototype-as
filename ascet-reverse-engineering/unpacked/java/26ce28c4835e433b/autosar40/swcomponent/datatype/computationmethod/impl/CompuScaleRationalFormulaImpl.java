/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar40.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.computationmethod.impl.CompuScaleContentsImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuScaleRationalFormulaImpl
extends CompuScaleContentsImpl
implements CompuScaleRationalFormula {
    protected CompuRationalCoeffs compuRationalCoeffs;

    protected CompuScaleRationalFormulaImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_SCALE_RATIONAL_FORMULA;
    }

    public GCompuRationalCoeffs gGetCompuRationalCoeffs() {
        return this.getCompuRationalCoeffs();
    }

    public void gSetCompuRationalCoeffs(GCompuRationalCoeffs newGCompuRationalCoeffs) {
        this.setCompuRationalCoeffs((CompuRationalCoeffs)newGCompuRationalCoeffs);
    }

    @Override
    public CompuRationalCoeffs getCompuRationalCoeffs() {
        return this.compuRationalCoeffs;
    }

    public NotificationChain basicSetCompuRationalCoeffs(CompuRationalCoeffs newCompuRationalCoeffs, NotificationChain msgs) {
        CompuRationalCoeffs oldCompuRationalCoeffs = this.compuRationalCoeffs;
        this.compuRationalCoeffs = newCompuRationalCoeffs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCompuRationalCoeffs, (Object)newCompuRationalCoeffs);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuRationalCoeffs(CompuRationalCoeffs newCompuRationalCoeffs) {
        if (newCompuRationalCoeffs != this.compuRationalCoeffs) {
            NotificationChain msgs = null;
            if (this.compuRationalCoeffs != null) {
                msgs = ((InternalEObject)this.compuRationalCoeffs).eInverseRemove((InternalEObject)this, 6, CompuRationalCoeffs.class, msgs);
            }
            if (newCompuRationalCoeffs != null) {
                msgs = ((InternalEObject)newCompuRationalCoeffs).eInverseAdd((InternalEObject)this, 6, CompuRationalCoeffs.class, msgs);
            }
            if ((msgs = this.basicSetCompuRationalCoeffs(newCompuRationalCoeffs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCompuRationalCoeffs, (Object)newCompuRationalCoeffs));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.compuRationalCoeffs != null) {
                    msgs = ((InternalEObject)this.compuRationalCoeffs).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetCompuRationalCoeffs((CompuRationalCoeffs)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetCompuRationalCoeffs(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetCompuRationalCoeffs();
            }
            case 6: {
                return this.getCompuRationalCoeffs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetCompuRationalCoeffs((GCompuRationalCoeffs)newValue);
                return;
            }
            case 6: {
                this.setCompuRationalCoeffs((CompuRationalCoeffs)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetCompuRationalCoeffs(null);
                return;
            }
            case 6: {
                this.setCompuRationalCoeffs(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetCompuRationalCoeffs() != null;
            }
            case 6: {
                return this.compuRationalCoeffs != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuScaleRationalFormula.class) {
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
        if (baseClass == GCompuScaleRationalFormula.class) {
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

