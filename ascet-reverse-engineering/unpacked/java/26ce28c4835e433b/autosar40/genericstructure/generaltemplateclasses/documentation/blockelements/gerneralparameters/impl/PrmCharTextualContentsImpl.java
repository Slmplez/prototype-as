/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharTextualContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharContentsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PrmCharTextualContentsImpl
extends PrmCharContentsImpl
implements PrmCharTextualContents {
    protected static final String TEXT_EDEFAULT = "";
    protected String text = "";
    protected boolean textESet;

    protected PrmCharTextualContentsImpl() {
    }

    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRM_CHAR_TEXTUAL_CONTENTS;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String newText) {
        String oldText = this.text;
        this.text = newText;
        boolean oldTextESet = this.textESet;
        this.textESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldText, (Object)this.text, !oldTextESet));
        }
    }

    public void unsetText() {
        String oldText = this.text;
        boolean oldTextESet = this.textESet;
        this.text = TEXT_EDEFAULT;
        this.textESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldText, (Object)TEXT_EDEFAULT, oldTextESet));
        }
    }

    public boolean isSetText() {
        return this.textESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getText();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setText((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetText();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetText();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (text: ");
        if (this.textESet) {
            result.append(this.text);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

