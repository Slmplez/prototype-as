/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.WhitespaceControlledImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class MixedContentForPlainTextImpl
extends WhitespaceControlledImpl
implements MixedContentForPlainText {
    protected static final String CONTENTS_EDEFAULT = "";
    protected String contents = "";
    protected boolean contentsESet;

    protected MixedContentForPlainTextImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextmodelPackage.Literals.MIXED_CONTENT_FOR_PLAIN_TEXT;
    }

    public String getContents() {
        return this.contents;
    }

    public void setContents(String newContents) {
        String oldContents = this.contents;
        this.contents = newContents;
        boolean oldContentsESet = this.contentsESet;
        this.contentsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContents, (Object)this.contents, !oldContentsESet));
        }
    }

    public void unsetContents() {
        String oldContents = this.contents;
        boolean oldContentsESet = this.contentsESet;
        this.contents = CONTENTS_EDEFAULT;
        this.contentsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldContents, (Object)CONTENTS_EDEFAULT, oldContentsESet));
        }
    }

    public boolean isSetContents() {
        return this.contentsESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getContents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setContents((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetContents();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetContents();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (contents: ");
        if (this.contentsESet) {
            result.append(this.contents);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

