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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChapterOrMsrQueryImpl
extends ARObjectImpl
implements ChapterOrMsrQuery {
    protected EList<Chapter> chapters;
    protected EList<MsrQueryChapter> msrQueryChapters;

    protected ChapterOrMsrQueryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.CHAPTER_OR_MSR_QUERY;
    }

    @Override
    public ChapterModel getChapterModel() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ChapterModel)this.eContainer();
    }

    public NotificationChain basicSetChapterModel(ChapterModel newChapterModel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newChapterModel, 4, msgs);
        return msgs;
    }

    @Override
    public void setChapterModel(ChapterModel newChapterModel) {
        if (newChapterModel != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newChapterModel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newChapterModel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newChapterModel != null) {
                msgs = ((InternalEObject)newChapterModel).eInverseAdd((InternalEObject)this, 6, ChapterModel.class, msgs);
            }
            if ((msgs = this.basicSetChapterModel(newChapterModel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newChapterModel, (Object)newChapterModel));
        }
    }

    @Override
    public EList<Chapter> getChapters() {
        if (this.chapters == null) {
            this.chapters = new EObjectContainmentEList(Chapter.class, (InternalEObject)this, 5);
        }
        return this.chapters;
    }

    @Override
    public EList<MsrQueryChapter> getMsrQueryChapters() {
        if (this.msrQueryChapters == null) {
            this.msrQueryChapters = new EObjectContainmentWithInverseEList(MsrQueryChapter.class, (InternalEObject)this, 6, 8);
        }
        return this.msrQueryChapters;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetChapterModel((ChapterModel)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getMsrQueryChapters()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetChapterModel(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getChapters()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getMsrQueryChapters()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ChapterModel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getChapterModel();
            }
            case 5: {
                return this.getChapters();
            }
            case 6: {
                return this.getMsrQueryChapters();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setChapterModel((ChapterModel)newValue);
                return;
            }
            case 5: {
                this.getChapters().clear();
                this.getChapters().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getMsrQueryChapters().clear();
                this.getMsrQueryChapters().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setChapterModel(null);
                return;
            }
            case 5: {
                this.getChapters().clear();
                return;
            }
            case 6: {
                this.getMsrQueryChapters().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getChapterModel() != null;
            }
            case 5: {
                return this.chapters != null && !this.chapters.isEmpty();
            }
            case 6: {
                return this.msrQueryChapters != null && !this.msrQueryChapters.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

