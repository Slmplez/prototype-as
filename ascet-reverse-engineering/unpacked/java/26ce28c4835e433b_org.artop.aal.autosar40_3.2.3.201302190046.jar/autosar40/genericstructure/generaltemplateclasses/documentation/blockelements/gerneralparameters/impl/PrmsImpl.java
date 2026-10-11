/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PrmsImpl
extends PaginateableImpl
implements Prms {
    protected MultilanguageLongName label;
    protected EList<GeneralParameter> prms;

    protected PrmsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.PRMS;
    }

    @Override
    public ChapterContent getChapterContent() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (ChapterContent)this.eContainer();
    }

    public NotificationChain basicSetChapterContent(ChapterContent newChapterContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newChapterContent, 8, msgs);
        return msgs;
    }

    @Override
    public void setChapterContent(ChapterContent newChapterContent) {
        if (newChapterContent != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newChapterContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newChapterContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newChapterContent != null) {
                msgs = ((InternalEObject)newChapterContent).eInverseAdd((InternalEObject)this, 6, ChapterContent.class, msgs);
            }
            if ((msgs = this.basicSetChapterContent(newChapterContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newChapterContent, (Object)newChapterContent));
        }
    }

    @Override
    public MultilanguageLongName getLabel() {
        return this.label;
    }

    public NotificationChain basicSetLabel(MultilanguageLongName newLabel, NotificationChain msgs) {
        MultilanguageLongName oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldLabel, (Object)newLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLabel(MultilanguageLongName newLabel) {
        if (newLabel != this.label) {
            NotificationChain msgs = null;
            if (this.label != null) {
                msgs = ((InternalEObject)this.label).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newLabel != null) {
                msgs = ((InternalEObject)newLabel).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetLabel(newLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newLabel, (Object)newLabel));
        }
    }

    @Override
    public EList<GeneralParameter> getPrms() {
        if (this.prms == null) {
            this.prms = new EObjectContainmentWithInverseEList(GeneralParameter.class, (InternalEObject)this, 10, 18);
        }
        return this.prms;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetChapterContent((ChapterContent)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getPrms()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetChapterContent(null, msgs);
            }
            case 9: {
                return this.basicSetLabel(null, msgs);
            }
            case 10: {
                return ((InternalEList)this.getPrms()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ChapterContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getChapterContent();
            }
            case 9: {
                return this.getLabel();
            }
            case 10: {
                return this.getPrms();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setChapterContent((ChapterContent)newValue);
                return;
            }
            case 9: {
                this.setLabel((MultilanguageLongName)newValue);
                return;
            }
            case 10: {
                this.getPrms().clear();
                this.getPrms().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setChapterContent(null);
                return;
            }
            case 9: {
                this.setLabel(null);
                return;
            }
            case 10: {
                this.getPrms().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getChapterContent() != null;
            }
            case 9: {
                return this.label != null;
            }
            case 10: {
                return this.prms != null && !this.prms.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

