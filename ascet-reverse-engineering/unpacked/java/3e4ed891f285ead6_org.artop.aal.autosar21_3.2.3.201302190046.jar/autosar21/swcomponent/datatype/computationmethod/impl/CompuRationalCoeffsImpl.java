/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.datatype.computationmethod.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar21.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuRationalCoeffsImpl
extends ARObjectImpl
implements CompuRationalCoeffs {
    protected CompuNominatorDenominator compuNumerator;
    protected CompuNominatorDenominator compuDenominator;

    protected CompuRationalCoeffsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_RATIONAL_COEFFS;
    }

    public GCompuNominatorDenominator gGetCompuNumerator() {
        return this.getCompuNumerator();
    }

    public void gSetCompuNumerator(GCompuNominatorDenominator newGCompuNumerator) {
        this.setCompuNumerator((CompuNominatorDenominator)newGCompuNumerator);
    }

    public GCompuNominatorDenominator gGetCompuDenominator() {
        return this.getCompuDenominator();
    }

    public void gSetCompuDenominator(GCompuNominatorDenominator newGCompuDenominator) {
        this.setCompuDenominator((CompuNominatorDenominator)newGCompuDenominator);
    }

    @Override
    public CompuScaleRationalFormula getCompuScaleRationalFormula() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (CompuScaleRationalFormula)this.eContainer();
    }

    public NotificationChain basicSetCompuScaleRationalFormula(CompuScaleRationalFormula newCompuScaleRationalFormula, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCompuScaleRationalFormula, 6, msgs);
        return msgs;
    }

    @Override
    public void setCompuScaleRationalFormula(CompuScaleRationalFormula newCompuScaleRationalFormula) {
        if (newCompuScaleRationalFormula != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newCompuScaleRationalFormula != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCompuScaleRationalFormula)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCompuScaleRationalFormula != null) {
                msgs = ((InternalEObject)newCompuScaleRationalFormula).eInverseAdd((InternalEObject)this, 6, CompuScaleRationalFormula.class, msgs);
            }
            if ((msgs = this.basicSetCompuScaleRationalFormula(newCompuScaleRationalFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCompuScaleRationalFormula, (Object)newCompuScaleRationalFormula));
        }
    }

    @Override
    public CompuNominatorDenominator getCompuNumerator() {
        return this.compuNumerator;
    }

    public NotificationChain basicSetCompuNumerator(CompuNominatorDenominator newCompuNumerator, NotificationChain msgs) {
        CompuNominatorDenominator oldCompuNumerator = this.compuNumerator;
        this.compuNumerator = newCompuNumerator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldCompuNumerator, (Object)newCompuNumerator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuNumerator(CompuNominatorDenominator newCompuNumerator) {
        if (newCompuNumerator != this.compuNumerator) {
            NotificationChain msgs = null;
            if (this.compuNumerator != null) {
                msgs = ((InternalEObject)this.compuNumerator).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newCompuNumerator != null) {
                msgs = ((InternalEObject)newCompuNumerator).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetCompuNumerator(newCompuNumerator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newCompuNumerator, (Object)newCompuNumerator));
        }
    }

    @Override
    public CompuNominatorDenominator getCompuDenominator() {
        return this.compuDenominator;
    }

    public NotificationChain basicSetCompuDenominator(CompuNominatorDenominator newCompuDenominator, NotificationChain msgs) {
        CompuNominatorDenominator oldCompuDenominator = this.compuDenominator;
        this.compuDenominator = newCompuDenominator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldCompuDenominator, (Object)newCompuDenominator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuDenominator(CompuNominatorDenominator newCompuDenominator) {
        if (newCompuDenominator != this.compuDenominator) {
            NotificationChain msgs = null;
            if (this.compuDenominator != null) {
                msgs = ((InternalEObject)this.compuDenominator).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newCompuDenominator != null) {
                msgs = ((InternalEObject)newCompuDenominator).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetCompuDenominator(newCompuDenominator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newCompuDenominator, (Object)newCompuDenominator));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCompuScaleRationalFormula((CompuScaleRationalFormula)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetCompuScaleRationalFormula(null, msgs);
            }
            case 7: {
                return this.basicSetCompuNumerator(null, msgs);
            }
            case 8: {
                return this.basicSetCompuDenominator(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, CompuScaleRationalFormula.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuNumerator();
            }
            case 5: {
                return this.gGetCompuDenominator();
            }
            case 6: {
                return this.getCompuScaleRationalFormula();
            }
            case 7: {
                return this.getCompuNumerator();
            }
            case 8: {
                return this.getCompuDenominator();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetCompuNumerator((GCompuNominatorDenominator)newValue);
                return;
            }
            case 5: {
                this.gSetCompuDenominator((GCompuNominatorDenominator)newValue);
                return;
            }
            case 6: {
                this.setCompuScaleRationalFormula((CompuScaleRationalFormula)newValue);
                return;
            }
            case 7: {
                this.setCompuNumerator((CompuNominatorDenominator)newValue);
                return;
            }
            case 8: {
                this.setCompuDenominator((CompuNominatorDenominator)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetCompuNumerator(null);
                return;
            }
            case 5: {
                this.gSetCompuDenominator(null);
                return;
            }
            case 6: {
                this.setCompuScaleRationalFormula(null);
                return;
            }
            case 7: {
                this.setCompuNumerator(null);
                return;
            }
            case 8: {
                this.setCompuDenominator(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuNumerator() != null;
            }
            case 5: {
                return this.gGetCompuDenominator() != null;
            }
            case 6: {
                return this.getCompuScaleRationalFormula() != null;
            }
            case 7: {
                return this.compuNumerator != null;
            }
            case 8: {
                return this.compuDenominator != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuRationalCoeffs.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuRationalCoeffs.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

