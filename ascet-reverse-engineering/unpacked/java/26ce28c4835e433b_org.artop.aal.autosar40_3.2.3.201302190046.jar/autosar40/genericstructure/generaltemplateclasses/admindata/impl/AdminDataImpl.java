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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.admindata.impl;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdminDataImpl
extends ARObjectImpl
implements AdminData {
    protected static final LEnum LANGUAGE_EDEFAULT = LEnum.FOR_ALL;
    protected LEnum language = LANGUAGE_EDEFAULT;
    protected boolean languageESet;
    protected MultiLanguagePlainText usedLanguages;
    protected EList<DocRevision> docRevisions;
    protected EList<Sdg> sdgs;

    protected AdminDataImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AdmindataPackage.Literals.ADMIN_DATA;
    }

    @Override
    public LEnum getLanguage() {
        return this.language;
    }

    @Override
    public void setLanguage(LEnum newLanguage) {
        LEnum oldLanguage = this.language;
        this.language = newLanguage == null ? LANGUAGE_EDEFAULT : newLanguage;
        boolean oldLanguageESet = this.languageESet;
        this.languageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldLanguage, (Object)this.language, !oldLanguageESet));
        }
    }

    @Override
    public void unsetLanguage() {
        LEnum oldLanguage = this.language;
        boolean oldLanguageESet = this.languageESet;
        this.language = LANGUAGE_EDEFAULT;
        this.languageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldLanguage, (Object)LANGUAGE_EDEFAULT, oldLanguageESet));
        }
    }

    @Override
    public boolean isSetLanguage() {
        return this.languageESet;
    }

    @Override
    public MultiLanguagePlainText getUsedLanguages() {
        return this.usedLanguages;
    }

    public NotificationChain basicSetUsedLanguages(MultiLanguagePlainText newUsedLanguages, NotificationChain msgs) {
        MultiLanguagePlainText oldUsedLanguages = this.usedLanguages;
        this.usedLanguages = newUsedLanguages;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldUsedLanguages, (Object)newUsedLanguages);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUsedLanguages(MultiLanguagePlainText newUsedLanguages) {
        if (newUsedLanguages != this.usedLanguages) {
            NotificationChain msgs = null;
            if (this.usedLanguages != null) {
                msgs = ((InternalEObject)this.usedLanguages).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newUsedLanguages != null) {
                msgs = ((InternalEObject)newUsedLanguages).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetUsedLanguages(newUsedLanguages, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newUsedLanguages, (Object)newUsedLanguages));
        }
    }

    @Override
    public EList<DocRevision> getDocRevisions() {
        if (this.docRevisions == null) {
            this.docRevisions = new EObjectContainmentWithInverseEList(DocRevision.class, (InternalEObject)this, 6, 4);
        }
        return this.docRevisions;
    }

    @Override
    public EList<Sdg> getSdgs() {
        if (this.sdgs == null) {
            this.sdgs = new EObjectContainmentEList(Sdg.class, (InternalEObject)this, 7);
        }
        return this.sdgs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getDocRevisions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetUsedLanguages(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getDocRevisions()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSdgs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLanguage();
            }
            case 5: {
                return this.getUsedLanguages();
            }
            case 6: {
                return this.getDocRevisions();
            }
            case 7: {
                return this.getSdgs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLanguage((LEnum)((Object)newValue));
                return;
            }
            case 5: {
                this.setUsedLanguages((MultiLanguagePlainText)newValue);
                return;
            }
            case 6: {
                this.getDocRevisions().clear();
                this.getDocRevisions().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSdgs().clear();
                this.getSdgs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetLanguage();
                return;
            }
            case 5: {
                this.setUsedLanguages(null);
                return;
            }
            case 6: {
                this.getDocRevisions().clear();
                return;
            }
            case 7: {
                this.getSdgs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetLanguage();
            }
            case 5: {
                return this.usedLanguages != null;
            }
            case 6: {
                return this.docRevisions != null && !this.docRevisions.isEmpty();
            }
            case 7: {
                return this.sdgs != null && !this.sdgs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (language: ");
        if (this.languageESet) {
            result.append((Object)this.language);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

