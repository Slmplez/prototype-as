/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FloatEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.PgwideEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
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
public class MultiLanguageVerbatimImpl
extends PaginateableImpl
implements MultiLanguageVerbatim {
    protected static final String ALLOW_BREAK_EDEFAULT = "";
    protected String allowBreak = "";
    protected boolean allowBreakESet;
    protected static final FloatEnum FLOAT_EDEFAULT = FloatEnum.FLOAT;
    protected FloatEnum float_ = FLOAT_EDEFAULT;
    protected boolean floatESet;
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected static final PgwideEnum PGWIDE_EDEFAULT = PgwideEnum.NO_PGWIDE;
    protected PgwideEnum pgwide = PGWIDE_EDEFAULT;
    protected boolean pgwideESet;
    protected EList<LVerbatim> l5s;
    protected VariationPoint variationPoint;

    protected MultiLanguageVerbatimImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.MULTI_LANGUAGE_VERBATIM;
    }

    @Override
    public String getAllowBreak() {
        return this.allowBreak;
    }

    @Override
    public void setAllowBreak(String newAllowBreak) {
        String oldAllowBreak = this.allowBreak;
        this.allowBreak = newAllowBreak;
        boolean oldAllowBreakESet = this.allowBreakESet;
        this.allowBreakESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldAllowBreak, (Object)this.allowBreak, !oldAllowBreakESet));
        }
    }

    @Override
    public void unsetAllowBreak() {
        String oldAllowBreak = this.allowBreak;
        boolean oldAllowBreakESet = this.allowBreakESet;
        this.allowBreak = "";
        this.allowBreakESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldAllowBreak, (Object)"", oldAllowBreakESet));
        }
    }

    @Override
    public boolean isSetAllowBreak() {
        return this.allowBreakESet;
    }

    @Override
    public FloatEnum getFloat() {
        return this.float_;
    }

    @Override
    public void setFloat(FloatEnum newFloat) {
        FloatEnum oldFloat = this.float_;
        this.float_ = newFloat == null ? FLOAT_EDEFAULT : newFloat;
        boolean oldFloatESet = this.floatESet;
        this.floatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldFloat, (Object)this.float_, !oldFloatESet));
        }
    }

    @Override
    public void unsetFloat() {
        FloatEnum oldFloat = this.float_;
        boolean oldFloatESet = this.floatESet;
        this.float_ = FLOAT_EDEFAULT;
        this.floatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldFloat, (Object)FLOAT_EDEFAULT, oldFloatESet));
        }
    }

    @Override
    public boolean isSetFloat() {
        return this.floatESet;
    }

    @Override
    public String getHelpEntry() {
        return this.helpEntry;
    }

    @Override
    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public PgwideEnum getPgwide() {
        return this.pgwide;
    }

    @Override
    public void setPgwide(PgwideEnum newPgwide) {
        PgwideEnum oldPgwide = this.pgwide;
        this.pgwide = newPgwide == null ? PGWIDE_EDEFAULT : newPgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwideESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldPgwide, (Object)this.pgwide, !oldPgwideESet));
        }
    }

    @Override
    public void unsetPgwide() {
        PgwideEnum oldPgwide = this.pgwide;
        boolean oldPgwideESet = this.pgwideESet;
        this.pgwide = PGWIDE_EDEFAULT;
        this.pgwideESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldPgwide, (Object)PGWIDE_EDEFAULT, oldPgwideESet));
        }
    }

    @Override
    public boolean isSetPgwide() {
        return this.pgwideESet;
    }

    @Override
    public EList<LVerbatim> getL5s() {
        if (this.l5s == null) {
            this.l5s = new EObjectContainmentWithInverseEList(LVerbatim.class, (InternalEObject)this, 12, 11);
        }
        return this.l5s;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                return ((InternalEList)this.getL5s()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 12: {
                return ((InternalEList)this.getL5s()).basicRemove((Object)otherEnd, msgs);
            }
            case 13: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getAllowBreak();
            }
            case 9: {
                return this.getFloat();
            }
            case 10: {
                return this.getHelpEntry();
            }
            case 11: {
                return this.getPgwide();
            }
            case 12: {
                return this.getL5s();
            }
            case 13: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setAllowBreak((String)newValue);
                return;
            }
            case 9: {
                this.setFloat((FloatEnum)((Object)newValue));
                return;
            }
            case 10: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 11: {
                this.setPgwide((PgwideEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.getL5s().clear();
                this.getL5s().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.unsetAllowBreak();
                return;
            }
            case 9: {
                this.unsetFloat();
                return;
            }
            case 10: {
                this.unsetHelpEntry();
                return;
            }
            case 11: {
                this.unsetPgwide();
                return;
            }
            case 12: {
                this.getL5s().clear();
                return;
            }
            case 13: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.isSetAllowBreak();
            }
            case 9: {
                return this.isSetFloat();
            }
            case 10: {
                return this.isSetHelpEntry();
            }
            case 11: {
                return this.isSetPgwide();
            }
            case 12: {
                return this.l5s != null && !this.l5s.isEmpty();
            }
            case 13: {
                return this.variationPoint != null;
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
        result.append(" (allowBreak: ");
        if (this.allowBreakESet) {
            result.append(this.allowBreak);
        } else {
            result.append("<unset>");
        }
        result.append(", float: ");
        if (this.floatESet) {
            result.append((Object)this.float_);
        } else {
            result.append("<unset>");
        }
        result.append(", helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(", pgwide: ");
        if (this.pgwideESet) {
            result.append((Object)this.pgwide);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

