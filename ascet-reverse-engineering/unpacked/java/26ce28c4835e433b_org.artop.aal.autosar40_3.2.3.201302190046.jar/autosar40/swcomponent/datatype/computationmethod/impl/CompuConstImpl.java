/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuConstImpl
extends ARObjectImpl
implements CompuConst {
    protected CompuConstContent compuConstContentType;

    protected CompuConstImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_CONST;
    }

    public GCompuConstContent gGetCompuConstContentType() {
        return this.getCompuConstContentType();
    }

    public void gSetCompuConstContentType(GCompuConstContent newGCompuConstContentType) {
        this.setCompuConstContentType((CompuConstContent)newGCompuConstContentType);
    }

    @Override
    public CompuConstContent getCompuConstContentType() {
        return this.compuConstContentType;
    }

    public NotificationChain basicSetCompuConstContentType(CompuConstContent newCompuConstContentType, NotificationChain msgs) {
        CompuConstContent oldCompuConstContentType = this.compuConstContentType;
        this.compuConstContentType = newCompuConstContentType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCompuConstContentType, (Object)newCompuConstContentType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuConstContentType(CompuConstContent newCompuConstContentType) {
        if (newCompuConstContentType != this.compuConstContentType) {
            NotificationChain msgs = null;
            if (this.compuConstContentType != null) {
                msgs = ((InternalEObject)this.compuConstContentType).eInverseRemove((InternalEObject)this, 4, CompuConstContent.class, msgs);
            }
            if (newCompuConstContentType != null) {
                msgs = ((InternalEObject)newCompuConstContentType).eInverseAdd((InternalEObject)this, 4, CompuConstContent.class, msgs);
            }
            if ((msgs = this.basicSetCompuConstContentType(newCompuConstContentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCompuConstContentType, (Object)newCompuConstContentType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.compuConstContentType != null) {
                    msgs = ((InternalEObject)this.compuConstContentType).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCompuConstContentType((CompuConstContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetCompuConstContentType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuConstContentType();
            }
            case 5: {
                return this.getCompuConstContentType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetCompuConstContentType((GCompuConstContent)newValue);
                return;
            }
            case 5: {
                this.setCompuConstContentType((CompuConstContent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetCompuConstContentType(null);
                return;
            }
            case 5: {
                this.setCompuConstContentType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuConstContentType() != null;
            }
            case 5: {
                return this.compuConstContentType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuConst.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompuConst.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

