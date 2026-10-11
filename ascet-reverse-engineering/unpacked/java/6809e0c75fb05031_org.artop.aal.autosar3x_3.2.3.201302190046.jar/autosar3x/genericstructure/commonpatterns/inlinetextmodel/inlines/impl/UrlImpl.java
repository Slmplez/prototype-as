/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesFactory;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.net.URI;
import javax.activation.MimeType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class UrlImpl
extends ARObjectImpl
implements Url {
    protected static final MimeType MIME_TYPE_EDEFAULT = (MimeType)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getMimeTypeString(), "application/*");
    protected MimeType mimeType = MIME_TYPE_EDEFAULT;
    protected boolean mimeTypeESet;
    protected static final URI VALUE_EDEFAULT = (URI)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getUriString(), "");
    protected URI value = VALUE_EDEFAULT;
    protected boolean valueESet;

    protected UrlImpl() {
    }

    protected EClass eStaticClass() {
        return InlinesPackage.Literals.URL;
    }

    public MimeType getMimeType() {
        return this.mimeType;
    }

    public void setMimeType(MimeType newMimeType) {
        MimeType oldMimeType = this.mimeType;
        this.mimeType = newMimeType;
        boolean oldMimeTypeESet = this.mimeTypeESet;
        this.mimeTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMimeType, (Object)this.mimeType, !oldMimeTypeESet));
        }
    }

    public void unsetMimeType() {
        MimeType oldMimeType = this.mimeType;
        boolean oldMimeTypeESet = this.mimeTypeESet;
        this.mimeType = MIME_TYPE_EDEFAULT;
        this.mimeTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMimeType, (Object)MIME_TYPE_EDEFAULT, oldMimeTypeESet));
        }
    }

    public boolean isSetMimeType() {
        return this.mimeTypeESet;
    }

    public URI getValue() {
        return this.value;
    }

    public void setValue(URI newValue) {
        URI oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        URI oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMimeType();
            }
            case 5: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMimeType((MimeType)newValue);
                return;
            }
            case 5: {
                this.setValue((URI)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMimeType();
                return;
            }
            case 5: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMimeType();
            }
            case 5: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mimeType: ");
        if (this.mimeTypeESet) {
            result.append(this.mimeType);
        } else {
            result.append("<unset>");
        }
        result.append(", value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

