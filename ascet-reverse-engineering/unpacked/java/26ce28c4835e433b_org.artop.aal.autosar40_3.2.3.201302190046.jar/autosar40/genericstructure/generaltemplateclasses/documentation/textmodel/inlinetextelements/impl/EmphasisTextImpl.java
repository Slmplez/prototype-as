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
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnumFont;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EmphasisTextImpl
extends ARObjectImpl
implements EmphasisText {
    protected FeatureMap mixed;
    protected static final String COLOR_EDEFAULT = "";
    protected String color = "";
    protected boolean colorESet;
    protected static final EEnumFont FONT_EDEFAULT = EEnumFont.DEFAULT;
    protected EEnumFont font = FONT_EDEFAULT;
    protected boolean fontESet;
    protected EList<String> subs;
    protected EList<String> sups;
    protected static final EEnum TYPE_EDEFAULT = EEnum.BOLD;
    protected EEnum type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected EmphasisTextImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.EMPHASIS_TEXT;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 4);
        }
        return this.mixed;
    }

    @Override
    public void unsetMixed() {
        if (this.mixed != null) {
            ((InternalEList.Unsettable)this.mixed).unset();
        }
    }

    @Override
    public boolean isSetMixed() {
        return this.mixed != null && ((InternalEList.Unsettable)this.mixed).isSet();
    }

    @Override
    public String getColor() {
        return this.color;
    }

    @Override
    public void setColor(String newColor) {
        String oldColor = this.color;
        this.color = newColor;
        boolean oldColorESet = this.colorESet;
        this.colorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldColor, (Object)this.color, !oldColorESet));
        }
    }

    @Override
    public void unsetColor() {
        String oldColor = this.color;
        boolean oldColorESet = this.colorESet;
        this.color = COLOR_EDEFAULT;
        this.colorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldColor, (Object)COLOR_EDEFAULT, oldColorESet));
        }
    }

    @Override
    public boolean isSetColor() {
        return this.colorESet;
    }

    @Override
    public EEnumFont getFont() {
        return this.font;
    }

    @Override
    public void setFont(EEnumFont newFont) {
        EEnumFont oldFont = this.font;
        this.font = newFont == null ? FONT_EDEFAULT : newFont;
        boolean oldFontESet = this.fontESet;
        this.fontESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFont, (Object)this.font, !oldFontESet));
        }
    }

    @Override
    public void unsetFont() {
        EEnumFont oldFont = this.font;
        boolean oldFontESet = this.fontESet;
        this.font = FONT_EDEFAULT;
        this.fontESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldFont, (Object)FONT_EDEFAULT, oldFontESet));
        }
    }

    @Override
    public boolean isSetFont() {
        return this.fontESet;
    }

    @Override
    public EList<String> getSubs() {
        if (this.subs == null) {
            this.subs = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 7);
        }
        return this.subs;
    }

    @Override
    public void unsetSubs() {
        if (this.subs != null) {
            ((InternalEList.Unsettable)this.subs).unset();
        }
    }

    @Override
    public boolean isSetSubs() {
        return this.subs != null && ((InternalEList.Unsettable)this.subs).isSet();
    }

    @Override
    public EList<String> getSups() {
        if (this.sups == null) {
            this.sups = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 8);
        }
        return this.sups;
    }

    @Override
    public void unsetSups() {
        if (this.sups != null) {
            ((InternalEList.Unsettable)this.sups).unset();
        }
    }

    @Override
    public boolean isSetSups() {
        return this.sups != null && ((InternalEList.Unsettable)this.sups).isSet();
    }

    @Override
    public EEnum getType() {
        return this.type;
    }

    @Override
    public void setType(EEnum newType) {
        EEnum oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        EEnum oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    @Override
    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 5: {
                return this.getColor();
            }
            case 6: {
                return this.getFont();
            }
            case 7: {
                return this.getSubs();
            }
            case 8: {
                return this.getSups();
            }
            case 9: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 5: {
                this.setColor((String)newValue);
                return;
            }
            case 6: {
                this.setFont((EEnumFont)((Object)newValue));
                return;
            }
            case 7: {
                this.getSubs().clear();
                this.getSubs().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getSups().clear();
                this.getSups().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setType((EEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMixed();
                return;
            }
            case 5: {
                this.unsetColor();
                return;
            }
            case 6: {
                this.unsetFont();
                return;
            }
            case 7: {
                this.unsetSubs();
                return;
            }
            case 8: {
                this.unsetSups();
                return;
            }
            case 9: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMixed();
            }
            case 5: {
                return this.isSetColor();
            }
            case 6: {
                return this.isSetFont();
            }
            case 7: {
                return this.isSetSubs();
            }
            case 8: {
                return this.isSetSups();
            }
            case 9: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(", color: ");
        if (this.colorESet) {
            result.append(this.color);
        } else {
            result.append("<unset>");
        }
        result.append(", font: ");
        if (this.fontESet) {
            result.append((Object)this.font);
        } else {
            result.append("<unset>");
        }
        result.append(", subs: ");
        result.append(this.subs);
        result.append(", sups: ");
        result.append(this.sups);
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

