/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.datatype.datatypes.impl;

import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.StringType;
import autosar21.swcomponent.datatype.datatypes.impl.PrimitiveTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StringTypeImpl
extends PrimitiveTypeImpl
implements StringType {
    protected static final String ENCODING_EDEFAULT = "";
    protected String encoding = "";
    protected boolean encodingESet;
    protected static final Integer MAX_NUMBER_OF_CHARS_EDEFAULT = new Integer(0);
    protected Integer maxNumberOfChars = MAX_NUMBER_OF_CHARS_EDEFAULT;
    protected boolean maxNumberOfCharsESet;

    protected StringTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.STRING_TYPE;
    }

    @Override
    public String getEncoding() {
        return this.encoding;
    }

    @Override
    public void setEncoding(String newEncoding) {
        String oldEncoding = this.encoding;
        this.encoding = newEncoding;
        boolean oldEncodingESet = this.encodingESet;
        this.encodingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEncoding, (Object)this.encoding, !oldEncodingESet));
        }
    }

    @Override
    public void unsetEncoding() {
        String oldEncoding = this.encoding;
        boolean oldEncodingESet = this.encodingESet;
        this.encoding = ENCODING_EDEFAULT;
        this.encodingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldEncoding, (Object)ENCODING_EDEFAULT, oldEncodingESet));
        }
    }

    @Override
    public boolean isSetEncoding() {
        return this.encodingESet;
    }

    @Override
    public Integer getMaxNumberOfChars() {
        return this.maxNumberOfChars;
    }

    @Override
    public void setMaxNumberOfChars(Integer newMaxNumberOfChars) {
        Integer oldMaxNumberOfChars = this.maxNumberOfChars;
        this.maxNumberOfChars = newMaxNumberOfChars;
        boolean oldMaxNumberOfCharsESet = this.maxNumberOfCharsESet;
        this.maxNumberOfCharsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMaxNumberOfChars, (Object)this.maxNumberOfChars, !oldMaxNumberOfCharsESet));
        }
    }

    @Override
    public void unsetMaxNumberOfChars() {
        Integer oldMaxNumberOfChars = this.maxNumberOfChars;
        boolean oldMaxNumberOfCharsESet = this.maxNumberOfCharsESet;
        this.maxNumberOfChars = MAX_NUMBER_OF_CHARS_EDEFAULT;
        this.maxNumberOfCharsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMaxNumberOfChars, (Object)MAX_NUMBER_OF_CHARS_EDEFAULT, oldMaxNumberOfCharsESet));
        }
    }

    @Override
    public boolean isSetMaxNumberOfChars() {
        return this.maxNumberOfCharsESet;
    }

    @Override
    public boolean maxLength0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getEncoding();
            }
            case 20: {
                return this.getMaxNumberOfChars();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setEncoding((String)newValue);
                return;
            }
            case 20: {
                this.setMaxNumberOfChars((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetEncoding();
                return;
            }
            case 20: {
                this.unsetMaxNumberOfChars();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetEncoding();
            }
            case 20: {
                return this.isSetMaxNumberOfChars();
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
        result.append(" (encoding: ");
        if (this.encodingESet) {
            result.append(this.encoding);
        } else {
            result.append("<unset>");
        }
        result.append(", maxNumberOfChars: ");
        if (this.maxNumberOfCharsESet) {
            result.append(this.maxNumberOfChars);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

