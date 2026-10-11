/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinCommunicationConnectorImpl
extends CommunicationConnectorImpl
implements LinCommunicationConnector {
    protected static final IntegerDatatype INITIAL_NAD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype initialNad = INITIAL_NAD_EDEFAULT.clone();
    protected boolean initialNadESet;
    protected EList<LinConfigurableFrame> linConfigurableFrames;
    protected EList<LinOrderedConfigurableFrame> linOrderedConfigurableFrames;

    protected LinCommunicationConnectorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_COMMUNICATION_CONNECTOR;
    }

    @Override
    public Integer getInitialNad() {
        return (Integer)this.initialNad.basicGetValue();
    }

    @Override
    public void setInitialNad(Integer newInitialNad) {
        Integer oldInitialNad = (Integer)this.initialNad.basicGetValue();
        this.initialNad.basicSetValue((Object)newInitialNad);
        boolean oldInitialNadESet = this.initialNadESet;
        this.initialNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldInitialNad, (Object)newInitialNad, !oldInitialNadESet));
        }
    }

    @Override
    public void unsetInitialNad() {
        Integer oldInitialNad = (Integer)this.initialNad.basicGetValue();
        boolean oldInitialNadESet = this.initialNadESet;
        this.initialNad = INITIAL_NAD_EDEFAULT.clone();
        this.initialNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldInitialNad, (Object)INITIAL_NAD_EDEFAULT, oldInitialNadESet));
        }
    }

    @Override
    public boolean isSetInitialNad() {
        return this.initialNadESet;
    }

    @Override
    public EList<LinConfigurableFrame> getLinConfigurableFrames() {
        if (this.linConfigurableFrames == null) {
            this.linConfigurableFrames = new EObjectContainmentWithInverseEList(LinConfigurableFrame.class, (InternalEObject)this, 23, 4);
        }
        return this.linConfigurableFrames;
    }

    @Override
    public EList<LinOrderedConfigurableFrame> getLinOrderedConfigurableFrames() {
        if (this.linOrderedConfigurableFrames == null) {
            this.linOrderedConfigurableFrames = new EObjectContainmentWithInverseEList(LinOrderedConfigurableFrame.class, (InternalEObject)this, 24, 4);
        }
        return this.linOrderedConfigurableFrames;
    }

    @Override
    public IntegerDatatype getInitialNadData() {
        return this.initialNad.clone();
    }

    @Override
    public void setInitialNadData(IntegerDatatype newInitialNad) {
        this.initialNad.setRadix((int)newInitialNad.getRadix());
        this.initialNad.setNoOfDigits((int)newInitialNad.getNoOfDigits());
        this.setInitialNad(newInitialNad.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getLinConfigurableFrames()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getLinOrderedConfigurableFrames()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getLinConfigurableFrames()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getLinOrderedConfigurableFrames()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getInitialNad();
            }
            case 23: {
                return this.getLinConfigurableFrames();
            }
            case 24: {
                return this.getLinOrderedConfigurableFrames();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setInitialNad((Integer)newValue);
                return;
            }
            case 23: {
                this.getLinConfigurableFrames().clear();
                this.getLinConfigurableFrames().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getLinOrderedConfigurableFrames().clear();
                this.getLinOrderedConfigurableFrames().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetInitialNad();
                return;
            }
            case 23: {
                this.getLinConfigurableFrames().clear();
                return;
            }
            case 24: {
                this.getLinOrderedConfigurableFrames().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetInitialNad();
            }
            case 23: {
                return this.linConfigurableFrames != null && !this.linConfigurableFrames.isEmpty();
            }
            case 24: {
                return this.linOrderedConfigurableFrames != null && !this.linOrderedConfigurableFrames.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (initialNad: ");
        if (this.initialNadESet) {
            result.append(this.initialNad);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

