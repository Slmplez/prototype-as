/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.singlelanguagedata.impl;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.impl.MixedContent5Impl;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SlData5Impl
extends MixedContent5Impl
implements SlData5 {
    protected static final String ALLOW_BREAK_EDEFAULT = "";
    protected String allowBreak = "";
    protected boolean allowBreakESet;
    protected static final String FLOAT_EDEFAULT = "";
    protected String float_ = "";
    protected boolean floatESet;
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected static final String KEEP_WITH_PREVIOUS_EDEFAULT = "";
    protected String keepWithPrevious = "";
    protected boolean keepWithPreviousESet;
    protected static final String PGWIDE_EDEFAULT = "";
    protected String pgwide = "";
    protected boolean pgwideESet;
    protected static final String XMLSPACE_EDEFAULT = "";
    protected String xmlspace = "";
    protected boolean xmlspaceESet;

    protected SlData5Impl() {
    }

    protected EClass eStaticClass() {
        return SinglelanguagedataPackage.Literals.SL_DATA5;
    }

    public String getAllowBreak() {
        return this.allowBreak;
    }

    public void setAllowBreak(String newAllowBreak) {
        String oldAllowBreak = this.allowBreak;
        this.allowBreak = newAllowBreak;
        boolean oldAllowBreakESet = this.allowBreakESet;
        this.allowBreakESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAllowBreak, (Object)this.allowBreak, !oldAllowBreakESet));
        }
    }

    public void unsetAllowBreak() {
        String oldAllowBreak = this.allowBreak;
        boolean oldAllowBreakESet = this.allowBreakESet;
        this.allowBreak = "";
        this.allowBreakESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAllowBreak, (Object)"", oldAllowBreakESet));
        }
    }

    public boolean isSetAllowBreak() {
        return this.allowBreakESet;
    }

    public String getFloat() {
        return this.float_;
    }

    public void setFloat(String newFloat) {
        String oldFloat = this.float_;
        this.float_ = newFloat;
        boolean oldFloatESet = this.floatESet;
        this.floatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFloat, (Object)this.float_, !oldFloatESet));
        }
    }

    public void unsetFloat() {
        String oldFloat = this.float_;
        boolean oldFloatESet = this.floatESet;
        this.float_ = "";
        this.floatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldFloat, (Object)"", oldFloatESet));
        }
    }

    public boolean isSetFloat() {
        return this.floatESet;
    }

    public String getHelpEntry() {
        return this.helpEntry;
    }

    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    public String getKeepWithPrevious() {
        return this.keepWithPrevious;
    }

    public void setKeepWithPrevious(String newKeepWithPrevious) {
        String oldKeepWithPrevious = this.keepWithPrevious;
        this.keepWithPrevious = newKeepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPreviousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldKeepWithPrevious, (Object)this.keepWithPrevious, !oldKeepWithPreviousESet));
        }
    }

    public void unsetKeepWithPrevious() {
        String oldKeepWithPrevious = this.keepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPrevious = "";
        this.keepWithPreviousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldKeepWithPrevious, (Object)"", oldKeepWithPreviousESet));
        }
    }

    public boolean isSetKeepWithPrevious() {
        return this.keepWithPreviousESet;
    }

    public String getPgwide() {
        return this.pgwide;
    }

    public void setPgwide(String newPgwide) {
        String oldPgwide = this.pgwide;
        this.pgwide = newPgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwideESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldPgwide, (Object)this.pgwide, !oldPgwideESet));
        }
    }

    public void unsetPgwide() {
        String oldPgwide = this.pgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwide = "";
        this.pgwideESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldPgwide, (Object)"", oldPgwideESet));
        }
    }

    public boolean isSetPgwide() {
        return this.pgwideESet;
    }

    public String getXmlspace() {
        return this.xmlspace;
    }

    public void setXmlspace(String newXmlspace) {
        String oldXmlspace = this.xmlspace;
        this.xmlspace = newXmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldXmlspace, (Object)this.xmlspace, !oldXmlspaceESet));
        }
    }

    public void unsetXmlspace() {
        String oldXmlspace = this.xmlspace;
        boolean oldXmlspaceESet = this.xmlspaceESet;
        this.xmlspace = "";
        this.xmlspaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldXmlspace, (Object)"", oldXmlspaceESet));
        }
    }

    public boolean isSetXmlspace() {
        return this.xmlspaceESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getAllowBreak();
            }
            case 6: {
                return this.getFloat();
            }
            case 7: {
                return this.getHelpEntry();
            }
            case 8: {
                return this.getKeepWithPrevious();
            }
            case 9: {
                return this.getPgwide();
            }
            case 10: {
                return this.getXmlspace();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setAllowBreak((String)newValue);
                return;
            }
            case 6: {
                this.setFloat((String)newValue);
                return;
            }
            case 7: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 8: {
                this.setKeepWithPrevious((String)newValue);
                return;
            }
            case 9: {
                this.setPgwide((String)newValue);
                return;
            }
            case 10: {
                this.setXmlspace((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetAllowBreak();
                return;
            }
            case 6: {
                this.unsetFloat();
                return;
            }
            case 7: {
                this.unsetHelpEntry();
                return;
            }
            case 8: {
                this.unsetKeepWithPrevious();
                return;
            }
            case 9: {
                this.unsetPgwide();
                return;
            }
            case 10: {
                this.unsetXmlspace();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetAllowBreak();
            }
            case 6: {
                return this.isSetFloat();
            }
            case 7: {
                return this.isSetHelpEntry();
            }
            case 8: {
                return this.isSetKeepWithPrevious();
            }
            case 9: {
                return this.isSetPgwide();
            }
            case 10: {
                return this.isSetXmlspace();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (allowBreak: ");
        if (this.allowBreakESet) {
            result.append(this.allowBreak);
        } else {
            result.append("<unset>");
        }
        result.append(", float: ");
        if (this.floatESet) {
            result.append(this.float_);
        } else {
            result.append("<unset>");
        }
        result.append(", helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(", keepWithPrevious: ");
        if (this.keepWithPreviousESet) {
            result.append(this.keepWithPrevious);
        } else {
            result.append("<unset>");
        }
        result.append(", pgwide: ");
        if (this.pgwideESet) {
            result.append(this.pgwide);
        } else {
            result.append("<unset>");
        }
        result.append(", xmlspace: ");
        if (this.xmlspaceESet) {
            result.append(this.xmlspace);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

