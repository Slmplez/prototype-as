/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.computationmethod.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.Compu;
import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import autosar3x.swcomponent.datatype.computationmethod.CompuContent;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompuImpl
extends ARObjectImpl
implements Compu {
    protected CompuContent compuContentType;
    protected CompuConst compuDefaultValue;

    protected CompuImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU;
    }

    public GCompuContent gGetCompuContent() {
        return this.getCompuContentType();
    }

    public void gSetCompuContent(GCompuContent newGCompuContent) {
        this.setCompuContentType((CompuContent)newGCompuContent);
    }

    @Override
    public CompuContent getCompuContentType() {
        return this.compuContentType;
    }

    public NotificationChain basicSetCompuContentType(CompuContent newCompuContentType, NotificationChain msgs) {
        CompuContent oldCompuContentType = this.compuContentType;
        this.compuContentType = newCompuContentType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCompuContentType, (Object)newCompuContentType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuContentType(CompuContent newCompuContentType) {
        if (newCompuContentType != this.compuContentType) {
            NotificationChain msgs = null;
            if (this.compuContentType != null) {
                msgs = ((InternalEObject)this.compuContentType).eInverseRemove((InternalEObject)this, 4, CompuContent.class, msgs);
            }
            if (newCompuContentType != null) {
                msgs = ((InternalEObject)newCompuContentType).eInverseAdd((InternalEObject)this, 4, CompuContent.class, msgs);
            }
            if ((msgs = this.basicSetCompuContentType(newCompuContentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCompuContentType, (Object)newCompuContentType));
        }
    }

    @Override
    public CompuConst getCompuDefaultValue() {
        return this.compuDefaultValue;
    }

    public NotificationChain basicSetCompuDefaultValue(CompuConst newCompuDefaultValue, NotificationChain msgs) {
        CompuConst oldCompuDefaultValue = this.compuDefaultValue;
        this.compuDefaultValue = newCompuDefaultValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCompuDefaultValue, (Object)newCompuDefaultValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuDefaultValue(CompuConst newCompuDefaultValue) {
        if (newCompuDefaultValue != this.compuDefaultValue) {
            NotificationChain msgs = null;
            if (this.compuDefaultValue != null) {
                msgs = ((InternalEObject)this.compuDefaultValue).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newCompuDefaultValue != null) {
                msgs = ((InternalEObject)newCompuDefaultValue).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetCompuDefaultValue(newCompuDefaultValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newCompuDefaultValue, (Object)newCompuDefaultValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.compuContentType != null) {
                    msgs = ((InternalEObject)this.compuContentType).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCompuContentType((CompuContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetCompuContentType(null, msgs);
            }
            case 6: {
                return this.basicSetCompuDefaultValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuContent();
            }
            case 5: {
                return this.getCompuContentType();
            }
            case 6: {
                return this.getCompuDefaultValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetCompuContent((GCompuContent)newValue);
                return;
            }
            case 5: {
                this.setCompuContentType((CompuContent)newValue);
                return;
            }
            case 6: {
                this.setCompuDefaultValue((CompuConst)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetCompuContent(null);
                return;
            }
            case 5: {
                this.setCompuContentType(null);
                return;
            }
            case 6: {
                this.setCompuDefaultValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetCompuContent() != null;
            }
            case 5: {
                return this.compuContentType != null;
            }
            case 6: {
                return this.compuDefaultValue != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompu.class) {
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
        if (baseClass == GCompu.class) {
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

