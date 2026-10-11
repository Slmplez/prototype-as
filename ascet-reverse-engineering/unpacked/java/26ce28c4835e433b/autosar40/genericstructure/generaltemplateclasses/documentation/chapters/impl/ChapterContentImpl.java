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
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
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
public class ChapterContentImpl
extends ARObjectImpl
implements ChapterContent {
    protected EList<TopicContentOrMsrQuery> topicContents;
    protected EList<Prms> prms;

    protected ChapterContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.CHAPTER_CONTENT;
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
                msgs = ((InternalEObject)newChapterModel).eInverseAdd((InternalEObject)this, 4, ChapterModel.class, msgs);
            }
            if ((msgs = this.basicSetChapterModel(newChapterModel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newChapterModel, (Object)newChapterModel));
        }
    }

    @Override
    public EList<TopicContentOrMsrQuery> getTopicContents() {
        if (this.topicContents == null) {
            this.topicContents = new EObjectContainmentEList(TopicContentOrMsrQuery.class, (InternalEObject)this, 5);
        }
        return this.topicContents;
    }

    @Override
    public EList<Prms> getPrms() {
        if (this.prms == null) {
            this.prms = new EObjectContainmentWithInverseEList(Prms.class, (InternalEObject)this, 6, 8);
        }
        return this.prms;
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
                return ((InternalEList)this.getPrms()).basicAdd((Object)otherEnd, msgs);
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
                return ((InternalEList)this.getTopicContents()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getPrms()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, ChapterModel.class, msgs);
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
                return this.getTopicContents();
            }
            case 6: {
                return this.getPrms();
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
                this.getTopicContents().clear();
                this.getTopicContents().addAll((Collection)newValue);
                return;
            }
            case 6: {
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
            case 4: {
                this.setChapterModel(null);
                return;
            }
            case 5: {
                this.getTopicContents().clear();
                return;
            }
            case 6: {
                this.getPrms().clear();
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
                return this.topicContents != null && !this.topicContents.isEmpty();
            }
            case 6: {
                return this.prms != null && !this.prms.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

