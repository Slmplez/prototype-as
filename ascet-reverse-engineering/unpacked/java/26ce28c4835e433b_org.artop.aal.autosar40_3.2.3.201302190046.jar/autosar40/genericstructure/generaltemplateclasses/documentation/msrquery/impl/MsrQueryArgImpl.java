/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MsrQueryArgImpl
extends ARObjectImpl
implements MsrQueryArg {
    protected static final String ARG_EDEFAULT = "";
    protected String arg = "";
    protected boolean argESet;
    protected static final String SI_EDEFAULT = "";
    protected String si = "";
    protected boolean siESet;

    protected MsrQueryArgImpl() {
    }

    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_ARG;
    }

    public MsrQueryProps getMsrQueryProps() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MsrQueryProps)this.eContainer();
    }

    public NotificationChain basicSetMsrQueryProps(MsrQueryProps newMsrQueryProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMsrQueryProps, 4, msgs);
        return msgs;
    }

    public void setMsrQueryProps(MsrQueryProps newMsrQueryProps) {
        if (newMsrQueryProps != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMsrQueryProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMsrQueryProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMsrQueryProps != null) {
                msgs = ((InternalEObject)newMsrQueryProps).eInverseAdd((InternalEObject)this, 5, MsrQueryProps.class, msgs);
            }
            if ((msgs = this.basicSetMsrQueryProps(newMsrQueryProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMsrQueryProps, (Object)newMsrQueryProps));
        }
    }

    public String getArg() {
        return this.arg;
    }

    public void setArg(String newArg) {
        String oldArg = this.arg;
        this.arg = newArg;
        boolean oldArgESet = this.argESet;
        this.argESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldArg, (Object)this.arg, !oldArgESet));
        }
    }

    public void unsetArg() {
        String oldArg = this.arg;
        boolean oldArgESet = this.argESet;
        this.arg = "";
        this.argESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldArg, (Object)"", oldArgESet));
        }
    }

    public boolean isSetArg() {
        return this.argESet;
    }

    public String getSi() {
        return this.si;
    }

    public void setSi(String newSi) {
        String oldSi = this.si;
        this.si = newSi;
        boolean oldSiESet = this.siESet;
        this.siESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSi, (Object)this.si, !oldSiESet));
        }
    }

    public void unsetSi() {
        String oldSi = this.si;
        boolean oldSiESet = this.siESet;
        this.si = "";
        this.siESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSi, (Object)"", oldSiESet));
        }
    }

    public boolean isSetSi() {
        return this.siESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMsrQueryProps((MsrQueryProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMsrQueryProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, MsrQueryProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryProps();
            }
            case 5: {
                return this.getArg();
            }
            case 6: {
                return this.getSi();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryProps((MsrQueryProps)newValue);
                return;
            }
            case 5: {
                this.setArg((String)newValue);
                return;
            }
            case 6: {
                this.setSi((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryProps(null);
                return;
            }
            case 5: {
                this.unsetArg();
                return;
            }
            case 6: {
                this.unsetSi();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryProps() != null;
            }
            case 5: {
                return this.isSetArg();
            }
            case 6: {
                return this.isSetSi();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (arg: ");
        if (this.argESet) {
            result.append(this.arg);
        } else {
            result.append("<unset>");
        }
        result.append(", si: ");
        if (this.siESet) {
            result.append(this.si);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

