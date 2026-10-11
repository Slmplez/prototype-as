/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class DocumentViewSelectableImpl
extends ARObjectImpl
implements DocumentViewSelectable {
    protected static final String SI_EDEFAULT = "";
    protected String si = "";
    protected boolean siESet;
    protected static final String VIEW_EDEFAULT = "";
    protected String view = "";
    protected boolean viewESet;

    protected DocumentViewSelectableImpl() {
    }

    protected EClass eStaticClass() {
        return PaginationandviewPackage.Literals.DOCUMENT_VIEW_SELECTABLE;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSi, (Object)this.si, !oldSiESet));
        }
    }

    public void unsetSi() {
        String oldSi = this.si;
        boolean oldSiESet = this.siESet;
        this.si = "";
        this.siESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldSi, (Object)"", oldSiESet));
        }
    }

    public boolean isSetSi() {
        return this.siESet;
    }

    public String getView() {
        return this.view;
    }

    public void setView(String newView) {
        String oldView = this.view;
        this.view = newView;
        boolean oldViewESet = this.viewESet;
        this.viewESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldView, (Object)this.view, !oldViewESet));
        }
    }

    public void unsetView() {
        String oldView = this.view;
        boolean oldViewESet = this.viewESet;
        this.view = "";
        this.viewESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldView, (Object)"", oldViewESet));
        }
    }

    public boolean isSetView() {
        return this.viewESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSi();
            }
            case 5: {
                return this.getView();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSi((String)newValue);
                return;
            }
            case 5: {
                this.setView((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetSi();
                return;
            }
            case 5: {
                this.unsetView();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetSi();
            }
            case 5: {
                return this.isSetView();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (si: ");
        if (this.siESet) {
            result.append(this.si);
        } else {
            result.append("<unset>");
        }
        result.append(", view: ");
        if (this.viewESet) {
            result.append(this.view);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

