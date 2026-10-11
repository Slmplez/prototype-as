/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.metamodel.MinimalARObjectImpl
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.arobject.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import javax.xml.datatype.XMLGregorianCalendar;
import org.artop.aal.common.metamodel.MinimalARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ARObjectImpl
extends MinimalARObjectImpl
implements ARObject {
    protected static final String GCHECKSUM_EDEFAULT = null;
    protected static final XMLGregorianCalendar GTIMESTAMP_EDEFAULT = null;
    protected static final String CHECKSUM_EDEFAULT = "";
    protected static final XMLGregorianCalendar TIMESTAMP_EDEFAULT = (XMLGregorianCalendar)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getDateTime(), "0001-01-01T00:00:00");

    protected ARObjectImpl() {
    }

    protected EClass eStaticClass() {
        return ArobjectPackage.Literals.AR_OBJECT;
    }

    public String gGetChecksum() {
        String tgtFeatureValue = this.getChecksum();
        return tgtFeatureValue;
    }

    public void gSetChecksum(String newGChecksum) {
        this.setChecksum(newGChecksum);
    }

    public void gUnsetChecksum() {
        this.unsetChecksum();
    }

    public boolean gIsSetChecksum() {
        return this.isSetChecksum();
    }

    public XMLGregorianCalendar gGetTimestamp() {
        return this.getTimestamp();
    }

    public void gSetTimestamp(XMLGregorianCalendar newGTimestamp) {
        this.setTimestamp(newGTimestamp);
    }

    public void gUnsetTimestamp() {
        this.unsetTimestamp();
    }

    public boolean gIsSetTimestamp() {
        return this.isSetTimestamp();
    }

    @Override
    public String getChecksum() {
        String checksum = (String)this.getField(512);
        return checksum == null ? CHECKSUM_EDEFAULT : checksum;
    }

    @Override
    public void setChecksum(String newChecksum) {
        String oldChecksum = (String)this.setField(512, newChecksum);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldChecksum, (Object)newChecksum));
        }
    }

    @Override
    public void unsetChecksum() {
        this.setField(512, null);
    }

    @Override
    public boolean isSetChecksum() {
        return this.hasField(512);
    }

    @Override
    public XMLGregorianCalendar getTimestamp() {
        XMLGregorianCalendar timestamp = (XMLGregorianCalendar)this.getField(256);
        return timestamp == null ? TIMESTAMP_EDEFAULT : timestamp;
    }

    @Override
    public void setTimestamp(XMLGregorianCalendar newTimestamp) {
        XMLGregorianCalendar oldTimestamp = (XMLGregorianCalendar)this.setField(256, newTimestamp);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldTimestamp, (Object)newTimestamp));
        }
    }

    @Override
    public void unsetTimestamp() {
        this.setField(256, null);
    }

    @Override
    public boolean isSetTimestamp() {
        return this.hasField(256);
    }

    @Override
    public <T> T eContainer(Class<T> expectedContainerClass) {
        EObject eContainer = this.eContainer();
        if (eContainer != null && expectedContainerClass != null && expectedContainerClass.isAssignableFrom(eContainer.getClass())) {
            return (T)eContainer;
        }
        return null;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.gGetChecksum();
            }
            case 1: {
                return this.gGetTimestamp();
            }
            case 2: {
                return this.getChecksum();
            }
            case 3: {
                return this.getTimestamp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.gSetChecksum((String)newValue);
                return;
            }
            case 1: {
                this.gSetTimestamp((XMLGregorianCalendar)newValue);
                return;
            }
            case 2: {
                this.setChecksum((String)newValue);
                return;
            }
            case 3: {
                this.setTimestamp((XMLGregorianCalendar)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.gUnsetChecksum();
                return;
            }
            case 1: {
                this.gUnsetTimestamp();
                return;
            }
            case 2: {
                this.unsetChecksum();
                return;
            }
            case 3: {
                this.unsetTimestamp();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.gIsSetChecksum();
            }
            case 1: {
                return this.gIsSetTimestamp();
            }
            case 2: {
                return this.isSetChecksum();
            }
            case 3: {
                return this.isSetTimestamp();
            }
        }
        return super.eIsSet(featureID);
    }
}

