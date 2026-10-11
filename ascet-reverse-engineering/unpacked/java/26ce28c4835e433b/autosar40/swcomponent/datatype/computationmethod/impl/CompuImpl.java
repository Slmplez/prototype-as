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
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuConst;
import autosar40.swcomponent.datatype.computationmethod.CompuContent;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
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
    protected CompuContent compuContent;
    protected CompuConst compuDefaultValue;

    protected CompuImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU;
    }

    public GCompuContent gGetCompuContent() {
        return this.getCompuContent();
    }

    public void gSetCompuContent(GCompuContent newGCompuContent) {
        this.setCompuContent((CompuContent)newGCompuContent);
    }

    @Override
    public CompuContent getCompuContent() {
        return this.compuContent;
    }

    public NotificationChain basicSetCompuContent(CompuContent newCompuContent, NotificationChain msgs) {
        CompuContent oldCompuContent = this.compuContent;
        this.compuContent = newCompuContent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCompuContent, (Object)newCompuContent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuContent(CompuContent newCompuContent) {
        if (newCompuContent != this.compuContent) {
            NotificationChain msgs = null;
            if (this.compuContent != null) {
                msgs = ((InternalEObject)this.compuContent).eInverseRemove((InternalEObject)this, 4, CompuContent.class, msgs);
            }
            if (newCompuContent != null) {
                msgs = ((InternalEObject)newCompuContent).eInverseAdd((InternalEObject)this, 4, CompuContent.class, msgs);
            }
            if ((msgs = this.basicSetCompuContent(newCompuContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCompuContent, (Object)newCompuContent));
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
                if (this.compuContent != null) {
                    msgs = ((InternalEObject)this.compuContent).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCompuContent((CompuContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetCompuContent(null, msgs);
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
                return this.getCompuContent();
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
                this.setCompuContent((CompuContent)newValue);
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
                this.setCompuContent(null);
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
                return this.compuContent != null;
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

